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

if [[ ( "$TRACE_OUTPUT_SZ" != "tiny" ) && ( "$TRACE_OUTPUT_SZ" != "small" ) && ( "$TRACE_OUTPUT_SZ" != "large" ) ]]; then
	echo "Wrong TRACE_OUTPUT_SZ."
	exit
fi

if [[ ( "$CACHE_REPLACEMENT_POLICY" != "lru" ) && ( "$CACHE_REPLACEMENT_POLICY" != "fifo" ) && ( "$CACHE_REPLACEMENT_POLICY" != "bit_plru" ) && ( "$CACHE_REPLACEMENT_POLICY" != "random" ) ]]; then
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
	echo "Executing traces..."
	START_TIME_OF_ITRACE=$(date +%s.%N)
	${WORKING_DIR}/pin-3.7-97619-g0d0c92f4f-gcc-linux/pin -t ./pin-3.7-97619-g0d0c92f4f-gcc-linux/source/tools/ManualExamples/obj-intel64/itrace.so -- ${EXEC_PATH} &
	pid_itrace=$!
	#END_TIME_OF_ITRACE=$(date +%s.%N)
	#echo "Itrace time:  $(echo "scale=3; ($END_TIME_OF_ITRACE - $START_TIME_OF_ITRACE)*1000/1000" | bc) seconds"
	#echo "Executing dtrace..."
	START_TIME_OF_DTRACE=$(date +%s.%N)
	${WORKING_DIR}/pin-3.7-97619-g0d0c92f4f-gcc-linux/pin -t ./pin-3.7-97619-g0d0c92f4f-gcc-linux/source/tools/ManualExamples/obj-intel64/pinatrace.so -- ${EXEC_PATH} &
	pid_dtrace=$!
	wait $pid_dtrace
	if [ $? -eq 0 ]; then
		: #all ok
	else
		echo "Error. Could not trace memory acceses properly."
		kill -9 $pid_itrace
		exit
	fi
	END_TIME_OF_DTRACE=$(date +%s.%N)
	wait $pid_itrace
	
	#echo "Itrace time:  $(echo "scale=3; ($END_TIME_OF_ITRACE - $START_TIME_OF_ITRACE)*1000/1000" | bc) seconds"
	#echo "Dtrace time:  $(echo "scale=3; ($END_TIME_OF_DTRACE - $START_TIME_OF_DTRACE)*1000/1000" | bc) seconds"
	echo "Trace time:  $(echo "scale=3; ($END_TIME_OF_DTRACE - $START_TIME_OF_ITRACE)*1000/1000" | bc) seconds"
fi

if [[ ( "$WE_SHOULD_PARSE_TRACE" -eq 1 ) ]]; then
	#do the parsing, for all algorithms
	echo "Parsing trace..."
	START_TIME_OF_PARSING_TRACE=$(date +%s.%N)	
	${WORKING_DIR}/parse_trace.py ${WORKING_DIR}/itrace.out icache fifo $TRACE_OUTPUT_SZ > ${WORKING_DIR}/${TRACE_OUTPUT_SZ}_fifo_itraceparse.out &
	pid_itrace_fifo=$!
	${WORKING_DIR}/parse_trace.py ${WORKING_DIR}/pinatrace.out dcache fifo $TRACE_OUTPUT_SZ > ${WORKING_DIR}/${TRACE_OUTPUT_SZ}_fifo_dtraceparse.out &
	pid_dtrace_fifo=$!
	${WORKING_DIR}/parse_trace.py ${WORKING_DIR}/itrace.out icache lru $TRACE_OUTPUT_SZ > ${WORKING_DIR}/${TRACE_OUTPUT_SZ}_lru_itraceparse.out &
	pid_itrace_lru=$!
	${WORKING_DIR}/parse_trace.py ${WORKING_DIR}/pinatrace.out dcache lru $TRACE_OUTPUT_SZ > ${WORKING_DIR}/${TRACE_OUTPUT_SZ}_lru_dtraceparse.out &
	pid_dtrace_lru=$!
	${WORKING_DIR}/parse_trace.py ${WORKING_DIR}/itrace.out icache bit_plru $TRACE_OUTPUT_SZ > ${WORKING_DIR}/${TRACE_OUTPUT_SZ}_bit_plru_itraceparse.out &
	pid_itrace_bit_plru=$!
	${WORKING_DIR}/parse_trace.py ${WORKING_DIR}/pinatrace.out dcache bit_plru $TRACE_OUTPUT_SZ > ${WORKING_DIR}/${TRACE_OUTPUT_SZ}_bit_plru_dtraceparse.out &
	pid_dtrace_bit_plru=$!
	${WORKING_DIR}/parse_trace.py ${WORKING_DIR}/itrace.out icache random $TRACE_OUTPUT_SZ > ${WORKING_DIR}/${TRACE_OUTPUT_SZ}_random_itraceparse.out &
	pid_itrace_random=$!
	${WORKING_DIR}/parse_trace.py ${WORKING_DIR}/pinatrace.out dcache random $TRACE_OUTPUT_SZ > ${WORKING_DIR}/${TRACE_OUTPUT_SZ}_random_dtraceparse.out &
	pid_dtrace_random=$!
	wait $pid_itrace_fifo
	wait $pid_dtrace_fifo
	wait $pid_itrace_lru
	wait $pid_dtrace_lru
	wait $pid_itrace_bit_plru
	wait $pid_dtrace_bit_plru
	wait $pid_itrace_random
	wait $pid_dtrace_random
	END_TIME_OF_PARSING_TRACE=$(date +%s.%N)

	
	echo "Parse time:  $(echo "scale=3; ($END_TIME_OF_PARSING_TRACE - $START_TIME_OF_PARSING_TRACE)*1000/1000" | bc) seconds"
	declare -a arr_of_cache_rep_policies=("fifo" "lru" "bit_plru" "random")
	for i in "${arr_of_cache_rep_policies[@]}"
	do
		echo -n "Mac calcs for itrace (replacement policy=${i}):"
		cat ${WORKING_DIR}/${TRACE_OUTPUT_SZ}_${i}_itraceparse.out | grep "Total mac calcs"
		echo -n "Mac calcs for dtrace (replacement policy=${i}):"
		cat ${WORKING_DIR}/${TRACE_OUTPUT_SZ}_${i}_dtraceparse.out | grep "Total mac calcs"
	   # or do whatever with individual element of the array
	done
fi


END_TIME=$(date +%s.%N)

#echo "Itrace time:  $(echo "scale=3; ($END_TIME_OF_ITRACE - $START_TIME_OF_ITRACE)*1000/1000" | bc) seconds"
#echo "Dtrace time:  $(echo "scale=3; ($END_TIME_OF_DTRACE - $START_TIME_OF_DTRACE)*1000/1000" | bc) seconds"
echo "Trace time:  $(echo "scale=3; ($END_TIME_OF_DTRACE - $START_TIME_OF_ITRACE)*1000/1000" | bc) seconds"
echo "Parse time:  $(echo "scale=3; ($END_TIME_OF_PARSING_TRACE - $START_TIME_OF_PARSING_TRACE)*1000/1000" | bc) seconds"
echo "Total time:  $(echo "scale=3; ($END_TIME - $START_TIME)*1000/1000" | bc) seconds"

