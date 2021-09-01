#!/bin/bash

WORKING_DIR=`pwd`


TRACE_OUTPUT_SZ="small"


#usage
if [[ ( "$#" -ne 6 ) ]]; then
    echo "Please execute as following:"
    echo -e "\n$0 <a> <b> <c> <d> <e> <f>"
    echo "Where: a=size_of_trace_output (tiny|small|large)"
    echo "b=if_we_should_execute_a_trace"
    echo "c=if_we_should_parse_a_trace"
    echo "d=cache_replacement_policy (lru|fifo|bit_plru|tree_plru|random)"
	echo "e=path_to_executable"
	echo "f=name_of_benchmark"
	echo "Example: $0 small 1 1 fifo /bin/ls lsbenchmark"
    exit
fi

if [ "$#" -eq 6 ]; then
	TRACE_OUTPUT_SZ=$1
	WE_SHOULD_EXECUTE_TRACE=$2
	WE_SHOULD_PARSE_TRACE=$3
	CACHE_REPLACEMENT_POLICY=$4
	EXEC_PATH="$5"
	NAME_OF_BENCHMARK=$6
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
echo -n "NAME_OF_BENCHMARK: "
echo $NAME_OF_BENCHMARK

echo ""

if [[ ( "$TRACE_OUTPUT_SZ" != "tiny" ) && ( "$TRACE_OUTPUT_SZ" != "small" ) && ( "$TRACE_OUTPUT_SZ" != "large" ) ]]; then
	echo "Wrong TRACE_OUTPUT_SZ."
	exit
fi

if [[ ( "$CACHE_REPLACEMENT_POLICY" != "lru" ) && ( "$CACHE_REPLACEMENT_POLICY" != "fifo" ) && ( "$CACHE_REPLACEMENT_POLICY" != "bit_plru" ) && ( "$CACHE_REPLACEMENT_POLICY" != "random" ) ]]; then
	echo "Wrong CACHE_REPLACEMENT_POLICY."
	exit
fi

#replace "RRR" with ${RANDOM}, since we might want a different parameter (eg output file) for the traces
EXEC_PATH_1="${EXEC_PATH//'RRR'/${RANDOM}}"
EXEC_PATH_2="${EXEC_PATH//'RRR'/${RANDOM}}"


START_TIME=$(date +%s.%N)
echo "Copying templates and creating fifos..."
#copy the templates
cp ${WORKING_DIR}/tracing_programs/itrace_modified_${TRACE_OUTPUT_SZ}out.cpp ${WORKING_DIR}/itrace_modified.cpp
cp ${WORKING_DIR}/tracing_programs/pinatrace_modified_${TRACE_OUTPUT_SZ}out.cpp ${WORKING_DIR}/pinatrace_modified.cpp
cp ${WORKING_DIR}/python_scripts/parse_trace_template.py ${WORKING_DIR}/parse_trace.py
cp ${WORKING_DIR}/python_scripts/extract_total_time_for_macs_template.py ${WORKING_DIR}/extract_total_time_for_macs.py
rm -rf /tmp/pintool_tracefiles
mkdir /tmp/pintool_tracefiles
mkfifo /tmp/pintool_tracefiles/progout_fifo_itrace;
mkfifo /tmp/pintool_tracefiles/progout_fifo_dtrace;
mkfifo /tmp/pintool_tracefiles/itrace_fifo_policy /tmp/pintool_tracefiles/dtrace_fifo_policy /tmp/pintool_tracefiles/itrace_lru_policy /tmp/pintool_tracefiles/dtrace_lru_policy
mkfifo /tmp/pintool_tracefiles/itrace_bit_plru_policy /tmp/pintool_tracefiles/dtrace_bit_plru_policy /tmp/pintool_tracefiles/itrace_tree_plru_policy /tmp/pintool_tracefiles/dtrace_tree_plru_policy /tmp/pintool_tracefiles/itrace_random_policy /tmp/pintool_tracefiles/dtrace_random_policy



echo "Compiling templates (stdout to /dev/null)..."
${WORKING_DIR}/deploy_pin_libs_only.sh >/dev/null
gcc -O2 ${WORKING_DIR}/tracing_programs/output_stdin_and_on_signal.c -o ${WORKING_DIR}/output_stdin_and_on_signal


if [[ ( "$WE_SHOULD_EXECUTE_TRACE" -eq 1 ) ]]; then
	echo "Executing traces..."
	START_TIME_OF_ITRACE=$(date +%s.%N)
	${WORKING_DIR}/pin-3.7-97619-g0d0c92f4f-gcc-linux/pin -t ./pin-3.7-97619-g0d0c92f4f-gcc-linux/source/tools/ManualExamples/obj-intel64/itrace.so -- ${EXEC_PATH_1} & 
	pid_itrace=$!
	${WORKING_DIR}/output_stdin_and_on_signal ${NAME_OF_BENCHMARK}_itrace "/tmp/pintool_tracefiles/progout_fifo_itrace" | gzip --best > itrace.out.gz &
	#END_TIME_OF_ITRACE=$(date +%s.%N)
	#echo "Itrace time:  $(echo "scale=3; ($END_TIME_OF_ITRACE - $START_TIME_OF_ITRACE)*1000/1000" | bc) seconds"
	#echo "Executing dtrace..."
	START_TIME_OF_DTRACE=$(date +%s.%N)
	${WORKING_DIR}/pin-3.7-97619-g0d0c92f4f-gcc-linux/pin -t ./pin-3.7-97619-g0d0c92f4f-gcc-linux/source/tools/ManualExamples/obj-intel64/pinatrace.so -- ${EXEC_PATH_2} &
	pid_dtrace=$!
	${WORKING_DIR}/output_stdin_and_on_signal ${NAME_OF_BENCHMARK}_dtrace "/tmp/pintool_tracefiles/progout_fifo_dtrace" | gzip --best > dtrace.out.gz &
	wait $pid_dtrace
	retval=$?	
	if [ $retval -eq 0 ]; then
		: #all ok
	else
		echo "Error. Could not trace memory acceses properly."
		echo $retval
		kill -9 $pid_itrace
		killall output_stdin_and_on_signal
		exit
	fi
	END_TIME_OF_DTRACE=$(date +%s.%N)
	wait $pid_itrace
	END_TIME_OF_ITRACE=$(date +%s.%N)

	mv itrace.out.gz ${NAME_OF_BENCHMARK}_itrace.out.gz
	mv dtrace.out.gz ${NAME_OF_BENCHMARK}_dtrace.out.gz

	#echo "Itrace time:  $(echo "scale=3; ($END_TIME_OF_ITRACE - $START_TIME_OF_ITRACE)*1000/1000" | bc) seconds"
	#echo "Dtrace time:  $(echo "scale=3; ($END_TIME_OF_DTRACE - $START_TIME_OF_DTRACE)*1000/1000" | bc) seconds"
	echo "Trace time:  $(echo "scale=3; ($END_TIME_OF_ITRACE - $START_TIME_OF_ITRACE)*1000/1000" | bc) seconds"
fi

if [[ ( "$WE_SHOULD_PARSE_TRACE" -eq 1 ) ]]; then

	#check if pypy exists, which is fast
	PYPY_OK=$(dpkg-query -W --showformat='${Status}\n' pypy|grep "install ok installed")	
	if [ "" == "$PYPY_OK" ]; then
  		#pypy not installed
		EXECUTABLE_FOR_TRACE=""
	else
		EXECUTABLE_FOR_TRACE="pypy"
	fi	

	#do the parsing, for all algorithms
	echo "Parsing trace..."
	cat ${NAME_OF_BENCHMARK}_itrace.out.gz | zcat | tee -a "/tmp/pintool_tracefiles/itrace_fifo_policy" "/tmp/pintool_tracefiles/itrace_lru_policy" "/tmp/pintool_tracefiles/itrace_bit_plru_policy" "/tmp/pintool_tracefiles/itrace_tree_plru_policy" "/tmp/pintool_tracefiles/itrace_random_policy" >/dev/null &
	cat ${NAME_OF_BENCHMARK}_dtrace.out.gz | zcat | tee -a "/tmp/pintool_tracefiles/dtrace_fifo_policy" "/tmp/pintool_tracefiles/dtrace_lru_policy" "/tmp/pintool_tracefiles/dtrace_bit_plru_policy" "/tmp/pintool_tracefiles/dtrace_tree_plru_policy" "/tmp/pintool_tracefiles/dtrace_random_policy" >/dev/null &
	START_TIME_OF_PARSING_TRACE=$(date +%s.%N)	
	${EXECUTABLE_FOR_TRACE} ${WORKING_DIR}/parse_trace.py "/tmp/pintool_tracefiles/itrace_fifo_policy" icache fifo $TRACE_OUTPUT_SZ > ${WORKING_DIR}/${NAME_OF_BENCHMARK}_${TRACE_OUTPUT_SZ}_fifo_itraceparse.out &
	pid_itrace_fifo=$!
	${EXECUTABLE_FOR_TRACE} ${WORKING_DIR}/parse_trace.py "/tmp/pintool_tracefiles/dtrace_fifo_policy" dcache fifo $TRACE_OUTPUT_SZ > ${WORKING_DIR}/${NAME_OF_BENCHMARK}_${TRACE_OUTPUT_SZ}_fifo_dtraceparse.out &
	pid_dtrace_fifo=$!
	${EXECUTABLE_FOR_TRACE} ${WORKING_DIR}/parse_trace.py "/tmp/pintool_tracefiles/itrace_lru_policy" icache lru $TRACE_OUTPUT_SZ > ${WORKING_DIR}/${NAME_OF_BENCHMARK}_${TRACE_OUTPUT_SZ}_lru_itraceparse.out &
	pid_itrace_lru=$!
	${EXECUTABLE_FOR_TRACE} ${WORKING_DIR}/parse_trace.py "/tmp/pintool_tracefiles/dtrace_lru_policy" dcache lru $TRACE_OUTPUT_SZ > ${WORKING_DIR}/${NAME_OF_BENCHMARK}_${TRACE_OUTPUT_SZ}_lru_dtraceparse.out &
	pid_dtrace_lru=$!
	${EXECUTABLE_FOR_TRACE} ${WORKING_DIR}/parse_trace.py "/tmp/pintool_tracefiles/itrace_bit_plru_policy" icache bit_plru $TRACE_OUTPUT_SZ > ${WORKING_DIR}/${NAME_OF_BENCHMARK}_${TRACE_OUTPUT_SZ}_bit_plru_itraceparse.out &
	pid_itrace_bit_plru=$!
	${EXECUTABLE_FOR_TRACE} ${WORKING_DIR}/parse_trace.py "/tmp/pintool_tracefiles/dtrace_bit_plru_policy" dcache bit_plru $TRACE_OUTPUT_SZ > ${WORKING_DIR}/${NAME_OF_BENCHMARK}_${TRACE_OUTPUT_SZ}_bit_plru_dtraceparse.out &
	pid_dtrace_bit_plru=$!
	${EXECUTABLE_FOR_TRACE} ${WORKING_DIR}/parse_trace.py "/tmp/pintool_tracefiles/itrace_tree_plru_policy" icache tree_plru $TRACE_OUTPUT_SZ > ${WORKING_DIR}/${NAME_OF_BENCHMARK}_${TRACE_OUTPUT_SZ}_tree_plru_itraceparse.out &
	pid_itrace_tree_plru=$!
	${EXECUTABLE_FOR_TRACE} ${WORKING_DIR}/parse_trace.py "/tmp/pintool_tracefiles/dtrace_tree_plru_policy" dcache tree_plru $TRACE_OUTPUT_SZ > ${WORKING_DIR}/${NAME_OF_BENCHMARK}_${TRACE_OUTPUT_SZ}_tree_plru_dtraceparse.out &
	pid_dtrace_tree_plru=$!
	${EXECUTABLE_FOR_TRACE} ${WORKING_DIR}/parse_trace.py "/tmp/pintool_tracefiles/itrace_random_policy" icache random $TRACE_OUTPUT_SZ > ${WORKING_DIR}/${NAME_OF_BENCHMARK}_${TRACE_OUTPUT_SZ}_random_itraceparse.out &
	pid_itrace_random=$!
	${EXECUTABLE_FOR_TRACE} ${WORKING_DIR}/parse_trace.py "/tmp/pintool_tracefiles/dtrace_random_policy" dcache random $TRACE_OUTPUT_SZ > ${WORKING_DIR}/${NAME_OF_BENCHMARK}_${TRACE_OUTPUT_SZ}_random_dtraceparse.out &
	pid_dtrace_random=$!
	wait
	END_TIME_OF_PARSING_TRACE=$(date +%s.%N)

	
	echo "Parse time:  $(echo "scale=3; ($END_TIME_OF_PARSING_TRACE - $START_TIME_OF_PARSING_TRACE)*1000/1000" | bc) seconds"
	declare -a arr_of_cache_rep_policies=("fifo" "lru" "bit_plru" "tree_plru" "random")
	for i in "${arr_of_cache_rep_policies[@]}"	
	do
		num_of_macs_itrace=`cat ${WORKING_DIR}/${NAME_OF_BENCHMARK}_${TRACE_OUTPUT_SZ}_${i}_itraceparse.out | grep "Total mac calcs" | cut -f2 -d":"`
		num_of_macs_dtrace=`cat ${WORKING_DIR}/${NAME_OF_BENCHMARK}_${TRACE_OUTPUT_SZ}_${i}_dtraceparse.out | grep "Total mac calcs" | cut -f2 -d":"`
		mac_time_itrace=`python3 extract_total_time_for_macs.py $num_of_macs_itrace`
		mac_time_dtrace=`python3 extract_total_time_for_macs.py $num_of_macs_dtrace`
		echo -n "Macs for itrace ${NAME_OF_BENCHMARK} ( replacement policy=${i} ) -> " >>  ${WORKING_DIR}/${NAME_OF_BENCHMARK}_summed_up_results.txt
		echo -n "Number of macs = ${num_of_macs_itrace} " >>  ${WORKING_DIR}/${NAME_OF_BENCHMARK}_summed_up_results.txt
		echo ", Total extra time = ${mac_time_itrace}" >>  ${WORKING_DIR}/${NAME_OF_BENCHMARK}_summed_up_results.txt
		
		echo -n "Macs for dtrace ${NAME_OF_BENCHMARK} ( replacement policy=${i} ) -> " >>  ${WORKING_DIR}/${NAME_OF_BENCHMARK}_summed_up_results.txt
		echo -n "Number of macs = ${num_of_macs_dtrace} " >>  ${WORKING_DIR}/${NAME_OF_BENCHMARK}_summed_up_results.txt
		echo ", Total extra time = ${mac_time_dtrace}" >>  ${WORKING_DIR}/${NAME_OF_BENCHMARK}_summed_up_results.txt
		
	   # or do whatever with individual element of the array
	done
	cat ${WORKING_DIR}/${NAME_OF_BENCHMARK}_summed_up_results.txt
fi


END_TIME=$(date +%s.%N)

#echo "Itrace time:  $(echo "scale=3; ($END_TIME_OF_ITRACE - $START_TIME_OF_ITRACE)*1000/1000" | bc) seconds"
#echo "Dtrace time:  $(echo "scale=3; ($END_TIME_OF_DTRACE - $START_TIME_OF_DTRACE)*1000/1000" | bc) seconds"
echo "Trace time:  $(echo "scale=3; ($END_TIME_OF_ITRACE - $START_TIME_OF_ITRACE)*1000/1000" | bc) seconds"
echo "Parse time:  $(echo "scale=3; ($END_TIME_OF_PARSING_TRACE - $START_TIME_OF_PARSING_TRACE)*1000/1000" | bc) seconds"
echo "Total time:  $(echo "scale=3; ($END_TIME - $START_TIME)*1000/1000" | bc) seconds"

