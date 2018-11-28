#!/bin/bash

WORKING_DIR=`pwd`


TRACE_OUTPUT_SZ="small"


#usage
if [[ ( "$#" -ne 5 ) ]]; then
    echo "Please execute as following:"
    echo -e "\n$0 <a> <b> <c> <d> <e>"
    echo "Where: a=size_of_trace_output (tiny|small|large)"
    echo "b=if_we_should_execute_a_trace"
    echo "c=if_we_should_parse_a_trace"
    echo "d=cache_replacement_policy (lru|fifo|bit_plru|random)"
	echo "e=path_to_executable"
	echo "Example: $0 small 0 1 fifo /bin/ls"
    exit
fi

if [ "$#" -eq 5 ]; then
	TRACE_OUTPUT_SZ=$1
	WE_SHOULD_EXECUTE_TRACE=$2
	WE_SHOULD_PARSE_TRACE=$3
	CACHE_REPLACEMENT_POLICY=$4
	EXEC_PATH=$5
fi

echo -n "TRACE_OUTPUT_SZ: "
echo $TRACE_OUTPUT_SZ
echo -n "WE_SHOULD_EXECUTE_TRACE: "
echo $WE_SHOULD_EXECUTE_TRACE
echo -n "WE_SHOULD_PARSE_TRACE: "
echo $WE_SHOULD_PARSE_TRACE
echo -n "CACHE_REPLACEMENT_POLICY: "
echo $CACHE_REPLACEMENT_POLICY
echo -n "EXEC_PATH: "
echo $EXEC_PATH

echo ""

if [[ ( "$TRACE_OUTPUT_SZ" -ne "tiny" ) || ( "$TRACE_OUTPUT_SZ" -ne "small" ) || ( "$TRACE_OUTPUT_SZ" -ne "large" ) ]]; then
	echo "Wrong TRACE_OUTPUT_SZ."
	exit
fi

if [[ ( "$CACHE_REPLACEMENT_POLICY" -ne "lru" ) || ( "$CACHE_REPLACEMENT_POLICY" -ne "fifo" ) || ( "$CACHE_REPLACEMENT_POLICY" -ne "bit_plru" ) || ( "$CACHE_REPLACEMENT_POLICY" -ne "random" ) ]]; then
	echo "Wrong CACHE_REPLACEMENT_POLICY."
	exit
fi

START_TIME=$(date +%s.%N)
echo "Copying templates..."
#copy the templates
cp ${WORKING_DIR}/tracing_programs/itrace_modified_${TRACE_OUTPUT_SZ}out.cpp ${WORKING_DIR}/itrace_modified.cpp
cp ${WORKING_DIR}/tracing_programs/pinatrace_modified_${TRACE_OUTPUT_SZ}out.cpp ${WORKING_DIR}/pinatrace_modified.cpp
cp ${WORKING_DIR}/python_scripts/parse_trace_template.py ${WORKING_DIR}/parse_trace.py


echo "Compiling templates (stdout to /dev/null)..."
${WORKING_DIR}/deploy_pin_libs_only.sh >/dev/null


if [[ ( "$WE_SHOULD_EXECUTE_TRACE" -eq 1 ) ]]; then
	echo "Executing itrace..."
	START_TIME_OF_ITRACE=$(date +%s.%N)
	${WORKING_DIR}/pin-3.7-97619-g0d0c92f4f-gcc-linux/pin -t ./pin-3.7-97619-g0d0c92f4f-gcc-linux/source/tools/ManualExamples/obj-intel64/itrace.so -- ${EXEC_PATH}
	END_TIME_OF_ITRACE=$(date +%s.%N)
	echo "Itrace time:  $(echo "scale=3; ($END_TIME_OF_ITRACE - $START_TIME_OF_ITRACE)*1000/1000" | bc) seconds"
	echo "Executing dtrace..."
	START_TIME_OF_DTRACE=$(date +%s.%N)
	${WORKING_DIR}/pin-3.7-97619-g0d0c92f4f-gcc-linux/pin -t ./pin-3.7-97619-g0d0c92f4f-gcc-linux/source/tools/ManualExamples/obj-intel64/pinatrace.so -- ${EXEC_PATH}
	if [ $? -eq 0 ]; then
		: #all ok
	else
		echo "Error. Could not trace memory acceses properly."
		exit
	fi
	END_TIME_OF_DTRACE=$(date +%s.%N)
	
	echo "Itrace time:  $(echo "scale=3; ($END_TIME_OF_ITRACE - $START_TIME_OF_ITRACE)*1000/1000" | bc) seconds"
	echo "Dtrace time:  $(echo "scale=3; ($END_TIME_OF_DTRACE - $START_TIME_OF_DTRACE)*1000/1000" | bc) seconds"
fi

if [[ ( "$WE_SHOULD_PARSE_TRACE" -eq 1 ) ]]; then
	#do the parsing
	echo "Parsing trace..."
	START_TIME_OF_PARSING_TRACE=$(date +%s.%N)	
	${WORKING_DIR}/parse_trace.py ${WORKING_DIR}/itrace.out icache $CACHE_REPLACEMENT_POLICY $TRACE_OUTPUT_SZ > ${WORKING_DIR}/${TRACE_OUTPUT_SZ}_itraceparse.out &
	pid_itrace=$!
	${WORKING_DIR}/parse_trace.py ${WORKING_DIR}/pinatrace.out dcache $CACHE_REPLACEMENT_POLICY $TRACE_OUTPUT_SZ > ${WORKING_DIR}/${TRACE_OUTPUT_SZ}_dtraceparse.out &
	pid_dtrace=$!
	wait $pid_itrace
	wait $pid_dtrace
	END_TIME_OF_PARSING_TRACE=$(date +%s.%N)

	echo "Parse time:  $(echo "scale=3; ($END_TIME_OF_PARSING_TRACE - $START_TIME_OF_PARSING_TRACE)*1000/1000" | bc) seconds"
	echo -n "Mac calcs for itrace:"
	cat ${WORKING_DIR}/${TRACE_OUTPUT_SZ}_itraceparse.out | grep "mac calcs"
	echo -n "Mac calcs for dtrace:"
	cat ${WORKING_DIR}/${TRACE_OUTPUT_SZ}_dtraceparse.out | grep "mac calcs"
fi


END_TIME=$(date +%s.%N)

echo "Itrace time:  $(echo "scale=3; ($END_TIME_OF_ITRACE - $START_TIME_OF_ITRACE)*1000/1000" | bc) seconds"
echo "Dtrace time:  $(echo "scale=3; ($END_TIME_OF_DTRACE - $START_TIME_OF_DTRACE)*1000/1000" | bc) seconds"
echo "Parse time:  $(echo "scale=3; ($END_TIME_OF_PARSING_TRACE - $START_TIME_OF_PARSING_TRACE)*1000/1000" | bc) seconds"
echo "Total time:  $(echo "scale=3; ($END_TIME - $START_TIME)*1000/1000" | bc) seconds"

