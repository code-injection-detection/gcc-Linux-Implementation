#!/usr/bin/env bash


#put this script somewhere outside of the repo directory
PATH_TO_AUTOMATE_SH=/home/menoobs//workspace/virus_detection/gcc-Linux-Implementation/code/
ORIGINAL_DIR=`pwd`
NAME_OF_SECURE_FUNCTION=find_primes_up_to_a_number
BENCHMARK_NAME=primes_70k

CODE_CACHE_TYPE=2  #0 -> fully assosiative
				   #1 -> direct mapped
				   #2 -> set assosiative
DATA_CACHE_TYPE=2  #0 -> fully assosiative
				   #1 -> direct mapped
				   #2 -> set assosiative
CODE_CACHE_ASSOC=2
DATA_CACHE_ASSOC=2
SECURE_HEAP_SIZE=7000000
SECURE_STACK_SIZE=80000
MAX_NUM_OF_CMDS_IN_FIXED=35
TREAT_LOOP_COUNTERS_AS_UNSECURED_VARIABLES=0
CALC_TIME_WITH_SEPARATE_MAC_ADDITION=1


if [[ ( "$TREAT_LOOP_COUNTERS_AS_UNSECURED_VARIABLES" -eq 1 ) ]]; then
	sed -i 's/TREAT_LOOP_COUNTERS_AS_UNSECURED_VARIABLES=0/TREAT_LOOP_COUNTERS_AS_UNSECURED_VARIABLES=1/' ${ORIGINAL_DIR}/backup_automate.sh
fi


if [[ ( "$TREAT_LOOP_COUNTERS_AS_UNSECURED_VARIABLES" -eq 0 ) ]]; then
	sed -i 's/TREAT_LOOP_COUNTERS_AS_UNSECURED_VARIABLES=1/TREAT_LOOP_COUNTERS_AS_UNSECURED_VARIABLES=0/' ${ORIGINAL_DIR}/backup_automate.sh
fi


if [[ ( "$CALC_TIME_WITH_SEPARATE_MAC_ADDITION" -eq 0 ) ]]; then #the "1" part is inside the loops
	sed -i 's/COUNT_MAC_INVOCATIONS=1/COUNT_MAC_INVOCATIONS=0/' ${ORIGINAL_DIR}/backup_automate.sh
fi

if [[ ( "$CALC_TIME_WITH_SEPARATE_MAC_ADDITION" -eq 1) ]]; then #calculate proper mac times
	cd ${PATH_TO_AUTOMATE_SH}
	sed -i 's/COUNT_MAC_INVOCATIONS=1/COUNT_MAC_INVOCATIONS=0/' ./automate.sh
	echo "Calculating proper mac times..."
	./automate.sh 32 1 3 8 70000 8 20000 8 16 >/dev/null
	time ./mac_time_calculator > mac_invocation_times.txt
	cd ${ORIGINAL_DIR}
fi


#create benchmakrs dir
mkdir -p ${ORIGINAL_DIR}/${NAME_OF_SECURE_FUNCTION}_${BENCHMARK_NAME}
BENCH_RESULTS_DIR=${ORIGINAL_DIR}/${NAME_OF_SECURE_FUNCTION}_${BENCHMARK_NAME}/
#copy original automate.sh
cp ${ORIGINAL_DIR}/backup_automate.sh ${PATH_TO_AUTOMATE_SH}/automate.sh
cp ${PATH_TO_AUTOMATE_SH}/automate.sh ${ORIGINAL_DIR}/automate_template.sh


#VARIABLE_CODE_SIZE_NUMBERS="39 7 1"
#FIXED_CODE_SIZE_NUMBERS="20 55 71 75"
FIXED_CODE_SIZE_NUMBERS="20 55 71 75"
VARIABLE_CODE_SIZE_NUMBERS="39 30 20 10 7 1"
CACHE_SIZES="20 40 60 80 100 150 200"
CODE_AND_DATA_CACHE_ASSOCS="2 4 8"


#do the variable code size
for var_size in ${VARIABLE_CODE_SIZE_NUMBERS}; do

	#change the max number of commands for the variable code size
	sed -i 's/echo "If you REALLY want such a value (it is big however), change the automate.sh script." ; exit//' ${ORIGINAL_DIR}/automate_template.sh

	#no macs
	NAME_OF_BENCHMARK="NO_MACS_VAR_SIZE_${var_size}"
	echo ${NAME_OF_BENCHMARK}
	NAME_OF_FILE=${BENCH_RESULTS_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}.txt
	#get the template
	cd ${PATH_TO_AUTOMATE_SH}
	cp ${ORIGINAL_DIR}/automate_template.sh ${PATH_TO_AUTOMATE_SH}/automate.sh
	sed -i 's/IGNORE_MACS_EVEN_IF_THERE_ARE_MAC_BYTES=0/IGNORE_MACS_EVEN_IF_THERE_ARE_MAC_BYTES=1/' automate.sh
	sed -i 's/ADD_CODE_ON_THE_FLY_VERIFICATION=1/ADD_CODE_ON_THE_FLY_VERIFICATION=0/' automate.sh
	./automate.sh 32 ${var_size} 3 8 ${SECURE_HEAP_SIZE} 8 ${SECURE_STACK_SIZE} 8 0 >/dev/null
	time ./main_program_ksec | grep "New Secure ${NAME_OF_SECURE_FUNCTION} time:" > ${NAME_OF_FILE}
	echo -n ${NAME_OF_BENCHMARK} >> ${BENCH_RESULTS_DIR}/aggregated_results.txt
	${ORIGINAL_DIR}/get_the_seconds.py ${NAME_OF_FILE} >> ${BENCH_RESULTS_DIR}/aggregated_results.txt


	#ignoring macs
	NAME_OF_BENCHMARK="IGNORING_MACS_VAR_SIZE_${var_size}"
	echo ${NAME_OF_BENCHMARK}
	NAME_OF_FILE=${BENCH_RESULTS_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}.txt
	cd ${PATH_TO_AUTOMATE_SH}
	cp ${ORIGINAL_DIR}/automate_template.sh ${PATH_TO_AUTOMATE_SH}/automate.sh
	sed -i 's/IGNORE_MACS_EVEN_IF_THERE_ARE_MAC_BYTES=0/IGNORE_MACS_EVEN_IF_THERE_ARE_MAC_BYTES=1/' automate.sh
	sed -i 's/ADD_CODE_ON_THE_FLY_VERIFICATION=1/ADD_CODE_ON_THE_FLY_VERIFICATION=0/' automate.sh
	./automate.sh 32 ${var_size} 3 8 ${SECURE_HEAP_SIZE} 8 ${SECURE_STACK_SIZE} 8 16 >/dev/null
	time ./main_program_ksec | grep "New Secure ${NAME_OF_SECURE_FUNCTION} time:" >  ${NAME_OF_FILE}
	echo -n ${NAME_OF_BENCHMARK} >> ${BENCH_RESULTS_DIR}/aggregated_results.txt
	${ORIGINAL_DIR}/get_the_seconds.py ${NAME_OF_FILE} >> ${BENCH_RESULTS_DIR}/aggregated_results.txt
	

	#ignoring macs at the last moment
	NAME_OF_BENCHMARK="IGNORING_MACS_AT_LAST_MOMENT_VAR_SIZE_${var_size}"
	echo ${NAME_OF_BENCHMARK}
	NAME_OF_FILE=${BENCH_RESULTS_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}.txt
	cd ${PATH_TO_AUTOMATE_SH}
	cp ${ORIGINAL_DIR}/automate_template.sh ${PATH_TO_AUTOMATE_SH}/automate.sh
	sed -i 's/IGNORE_MACS_LAST_MOMENT_EVEN_IF_THERE_ARE_MAC_BYTES=0/IGNORE_MACS_LAST_MOMENT_EVEN_IF_THERE_ARE_MAC_BYTES=1/' automate.sh
	./automate.sh 32 ${var_size} 3 8 ${SECURE_HEAP_SIZE} 8 ${SECURE_STACK_SIZE} 8 16 >/dev/null
	time ./main_program_ksec | grep "New Secure ${NAME_OF_SECURE_FUNCTION} time:" >  ${NAME_OF_FILE}
	echo -n ${NAME_OF_BENCHMARK} >> ${BENCH_RESULTS_DIR}/aggregated_results.txt
	${ORIGINAL_DIR}/get_the_seconds.py ${NAME_OF_FILE} >> ${BENCH_RESULTS_DIR}/aggregated_results.txt

	#using cache
	for cache_size in ${CACHE_SIZES}; do
		for cache_assoc in ${CODE_AND_DATA_CACHE_ASSOCS}; do
			DATA_CACHE_SIZE=$cache_size
			DATA_CACHE_ASSOC=$cache_assoc
			CODE_CACHE_SIZE=$cache_size
			CODE_CACHE_ASSOC=$cache_assoc
			NAME_OF_BENCHMARK="USING_CACHE_CODE_CACHE=${CODE_CACHE_SIZE}_DATA_CACHE=${DATA_CACHE_SIZE}_ASSOC_${CODE_CACHE_ASSOC}_VAR_SIZE_${var_size}"
			echo ${NAME_OF_BENCHMARK}
			NAME_OF_FILE=${BENCH_RESULTS_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}.txt
			cd ${PATH_TO_AUTOMATE_SH}
			cp ${ORIGINAL_DIR}/automate_template.sh ${PATH_TO_AUTOMATE_SH}/automate.sh
			if [[ ( "$CALC_TIME_WITH_SEPARATE_MAC_ADDITION" -eq 1 ) ]]; then
				sed -i 's/COUNT_MAC_INVOCATIONS=0/COUNT_MAC_INVOCATIONS=1/' automate.sh
			fi
			sed -i "s/CODE_CACHE_TYPE=2/CODE_CACHE_TYPE=${CODE_CACHE_TYPE}/" automate.sh
			sed -i "s/DATA_CACHE_TYPE=2/DATA_CACHE_TYPE=${DATA_CACHE_TYPE}/" automate.sh
			sed -i "s/NUM_OF_CACHED_BLOCKS_OF_CODE=0/NUM_OF_CACHED_BLOCKS_OF_CODE=${CODE_CACHE_SIZE}/" automate.sh
			sed -i "s/NUM_OF_CACHED_BLOCKS_OF_DATA=0/NUM_OF_CACHED_BLOCKS_OF_DATA=${DATA_CACHE_SIZE}/" automate.sh
			sed -i "s/CODE_CACHE_SET_ASSOSIATIVE_SIZE=0/CODE_CACHE_SET_ASSOSIATIVE_SIZE=${CODE_CACHE_ASSOC}/" automate.sh
			sed -i "s/DATA_CACHE_SET_ASSOSIATIVE_SIZE=0/DATA_CACHE_SET_ASSOSIATIVE_SIZE=${DATA_CACHE_ASSOC}/" automate.sh
			./automate.sh 32 ${var_size} 3 8 ${SECURE_HEAP_SIZE} 8 ${SECURE_STACK_SIZE} 8 16 >/dev/null
			if [[ ( "$CALC_TIME_WITH_SEPARATE_MAC_ADDITION" -eq 0 ) ]]; then
				time ./main_program_ksec | grep "New Secure ${NAME_OF_SECURE_FUNCTION} time:" >  ${NAME_OF_FILE}
			fi
			if [[ ( "$CALC_TIME_WITH_SEPARATE_MAC_ADDITION" -eq 1 ) ]]; then
				./calc_extra_total_mac_time.sh | grep "Total extra time for macs" > ${NAME_OF_FILE}
			fi
			echo -n ${NAME_OF_BENCHMARK} >> ${BENCH_RESULTS_DIR}/aggregated_results.txt
			${ORIGINAL_DIR}/get_the_seconds.py ${NAME_OF_FILE} >> ${BENCH_RESULTS_DIR}/aggregated_results.txt
		done
	done

	#doing_everything
	NAME_OF_BENCHMARK="DOING_EVERYTHING_VAR_SIZE_${var_size}"
	echo ${NAME_OF_BENCHMARK}
	NAME_OF_FILE=${BENCH_RESULTS_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}.txt
	cd ${PATH_TO_AUTOMATE_SH}
	cp ${ORIGINAL_DIR}/automate_template.sh ${PATH_TO_AUTOMATE_SH}/automate.sh
	if [[ ( "$CALC_TIME_WITH_SEPARATE_MAC_ADDITION" -eq 1 ) ]]; then
		sed -i 's/COUNT_MAC_INVOCATIONS=0/COUNT_MAC_INVOCATIONS=1/' automate.sh
	fi
	./automate.sh 32 ${var_size} 3 8 ${SECURE_HEAP_SIZE} 8 ${SECURE_STACK_SIZE} 8 16 >/dev/null
	if [[ ( "$CALC_TIME_WITH_SEPARATE_MAC_ADDITION" -eq 0 ) ]]; then
		time ./main_program_ksec | grep "New Secure ${NAME_OF_SECURE_FUNCTION} time:" >  ${NAME_OF_FILE}
	fi
	if [[ ( "$CALC_TIME_WITH_SEPARATE_MAC_ADDITION" -eq 1 ) ]]; then
		./calc_extra_total_mac_time.sh | grep "Total extra time for macs" > ${NAME_OF_FILE}
	fi
	echo -n ${NAME_OF_BENCHMARK} >> ${BENCH_RESULTS_DIR}/aggregated_results.txt
	${ORIGINAL_DIR}/get_the_seconds.py ${NAME_OF_FILE} >> ${BENCH_RESULTS_DIR}/aggregated_results.txt
	
done


#copy original automate.sh
cp ${ORIGINAL_DIR}/backup_automate.sh ${PATH_TO_AUTOMATE_SH}/automate.sh
cp ${PATH_TO_AUTOMATE_SH}/automate.sh ${ORIGINAL_DIR}/automate_template.sh


#do the fixed code size
for FIXED_SIZE in ${FIXED_CODE_SIZE_NUMBERS}; do

	#no macs
	NAME_OF_BENCHMARK="NO_MACS_FIXED_SIZE_${FIXED_SIZE}"
	echo ${NAME_OF_BENCHMARK}
	NAME_OF_FILE=${BENCH_RESULTS_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}.txt
	#get the template
	cd ${PATH_TO_AUTOMATE_SH}
	cp ${ORIGINAL_DIR}/automate_template.sh ${PATH_TO_AUTOMATE_SH}/automate.sh
	sed -i 's/IGNORE_MACS_EVEN_IF_THERE_ARE_MAC_BYTES=0/IGNORE_MACS_EVEN_IF_THERE_ARE_MAC_BYTES=1/' automate.sh
	sed -i 's/ADD_CODE_ON_THE_FLY_VERIFICATION=1/ADD_CODE_ON_THE_FLY_VERIFICATION=0/' automate.sh
	./automate.sh 32 ${MAX_NUM_OF_CMDS_IN_FIXED} 3 8 ${SECURE_HEAP_SIZE} 8 ${SECURE_STACK_SIZE} 8 0 ${FIXED_SIZE} >/dev/null
	time ./main_program_ksec | grep "New Secure ${NAME_OF_SECURE_FUNCTION} time:" >  ${NAME_OF_FILE}
	echo -n ${NAME_OF_BENCHMARK} >> ${BENCH_RESULTS_DIR}/aggregated_results.txt
	${ORIGINAL_DIR}/get_the_seconds.py ${NAME_OF_FILE} >> ${BENCH_RESULTS_DIR}/aggregated_results.txt


	#ignoring macs
	NAME_OF_BENCHMARK="IGNORING_MACS_FIXED_SIZE_${FIXED_SIZE}"
	echo ${NAME_OF_BENCHMARK}
	NAME_OF_FILE=${BENCH_RESULTS_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}.txt
	cd ${PATH_TO_AUTOMATE_SH}
	cp ${ORIGINAL_DIR}/automate_template.sh ${PATH_TO_AUTOMATE_SH}/automate.sh
	sed -i 's/IGNORE_MACS_EVEN_IF_THERE_ARE_MAC_BYTES=0/IGNORE_MACS_EVEN_IF_THERE_ARE_MAC_BYTES=1/' automate.sh
	sed -i 's/ADD_CODE_ON_THE_FLY_VERIFICATION=1/ADD_CODE_ON_THE_FLY_VERIFICATION=0/' automate.sh
	./automate.sh 32 ${MAX_NUM_OF_CMDS_IN_FIXED} 3 8 ${SECURE_HEAP_SIZE} 8 ${SECURE_STACK_SIZE} 8 16 ${FIXED_SIZE} >/dev/null
	time ./main_program_ksec | grep "New Secure ${NAME_OF_SECURE_FUNCTION} time:" >  ${NAME_OF_FILE}
	echo -n ${NAME_OF_BENCHMARK} >> ${BENCH_RESULTS_DIR}/aggregated_results.txt
	${ORIGINAL_DIR}/get_the_seconds.py ${NAME_OF_FILE} >> ${BENCH_RESULTS_DIR}/aggregated_results.txt


	#ignoring macs at the last moment
	NAME_OF_BENCHMARK="IGNORING_MACS_AT_LAST_MOMENT_FIXED_SIZE_${FIXED_SIZE}"
	echo ${NAME_OF_BENCHMARK}
	NAME_OF_FILE=${BENCH_RESULTS_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}.txt
	cd ${PATH_TO_AUTOMATE_SH}
	cp ${ORIGINAL_DIR}/automate_template.sh ${PATH_TO_AUTOMATE_SH}/automate.sh
	sed -i 's/IGNORE_MACS_LAST_MOMENT_EVEN_IF_THERE_ARE_MAC_BYTES=0/IGNORE_MACS_LAST_MOMENT_EVEN_IF_THERE_ARE_MAC_BYTES=1/' automate.sh
	./automate.sh 32 ${MAX_NUM_OF_CMDS_IN_FIXED} 3 8 ${SECURE_HEAP_SIZE} 8 ${SECURE_STACK_SIZE} 8 16 ${FIXED_SIZE} >/dev/null
	time ./main_program_ksec | grep "New Secure ${NAME_OF_SECURE_FUNCTION} time:" >  ${NAME_OF_FILE}
	echo -n ${NAME_OF_BENCHMARK} >> ${BENCH_RESULTS_DIR}/aggregated_results.txt
	${ORIGINAL_DIR}/get_the_seconds.py ${NAME_OF_FILE} >> ${BENCH_RESULTS_DIR}/aggregated_results.txt


	#using cache
	for cache_size in ${CACHE_SIZES}; do
		for cache_assoc in ${CODE_AND_DATA_CACHE_ASSOCS}; do
			DATA_CACHE_SIZE=$cache_size
			DATA_CACHE_ASSOC=$cache_assoc
			CODE_CACHE_SIZE=$cache_size
			CODE_CACHE_ASSOC=$cache_assoc
			NAME_OF_BENCHMARK="USING_CACHE_CODE_CACHE=${CODE_CACHE_SIZE}_DATA_CACHE=${DATA_CACHE_SIZE}_ASSOC_${CODE_CACHE_ASSOC}_FIXED_SIZE_${FIXED_SIZE}"
			echo ${NAME_OF_BENCHMARK}
			NAME_OF_FILE=${BENCH_RESULTS_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}.txt
			cd ${PATH_TO_AUTOMATE_SH}
			cp ${ORIGINAL_DIR}/automate_template.sh ${PATH_TO_AUTOMATE_SH}/automate.sh
			if [[ ( "$CALC_TIME_WITH_SEPARATE_MAC_ADDITION" -eq 1 ) ]]; then
				sed -i 's/COUNT_MAC_INVOCATIONS=0/COUNT_MAC_INVOCATIONS=1/' automate.sh
			fi
			sed -i "s/CODE_CACHE_TYPE=2/CODE_CACHE_TYPE=${CODE_CACHE_TYPE}/" automate.sh
			sed -i "s/DATA_CACHE_TYPE=2/DATA_CACHE_TYPE=${DATA_CACHE_TYPE}/" automate.sh
			sed -i "s/NUM_OF_CACHED_BLOCKS_OF_CODE=0/NUM_OF_CACHED_BLOCKS_OF_CODE=${CODE_CACHE_SIZE}/" automate.sh
			sed -i "s/NUM_OF_CACHED_BLOCKS_OF_DATA=0/NUM_OF_CACHED_BLOCKS_OF_DATA=${DATA_CACHE_SIZE}/" automate.sh
			sed -i "s/CODE_CACHE_SET_ASSOSIATIVE_SIZE=0/CODE_CACHE_SET_ASSOSIATIVE_SIZE=${CODE_CACHE_ASSOC}/" automate.sh
			sed -i "s/DATA_CACHE_SET_ASSOSIATIVE_SIZE=0/DATA_CACHE_SET_ASSOSIATIVE_SIZE=${DATA_CACHE_ASSOC}/" automate.sh
			./automate.sh 32 ${MAX_NUM_OF_CMDS_IN_FIXED} 3 8 ${SECURE_HEAP_SIZE} 8 ${SECURE_STACK_SIZE} 8 16 ${FIXED_SIZE} >/dev/null
			if [[ ( "$CALC_TIME_WITH_SEPARATE_MAC_ADDITION" -eq 0 ) ]]; then
				time ./main_program_ksec | grep "New Secure ${NAME_OF_SECURE_FUNCTION} time:" >  ${NAME_OF_FILE}
			fi
			if [[ ( "$CALC_TIME_WITH_SEPARATE_MAC_ADDITION" -eq 1 ) ]]; then
				./calc_extra_total_mac_time.sh | grep "Total extra time for macs" > ${NAME_OF_FILE}
			fi
			echo -n ${NAME_OF_BENCHMARK} >> ${BENCH_RESULTS_DIR}/aggregated_results.txt
			${ORIGINAL_DIR}/get_the_seconds.py ${NAME_OF_FILE} >> ${BENCH_RESULTS_DIR}/aggregated_results.txt
		done
	done

	#doing_everything
	NAME_OF_BENCHMARK="DOING_EVERYTHING_FIXED_SIZE_${FIXED_SIZE}"
	echo ${NAME_OF_BENCHMARK}
	NAME_OF_FILE=${BENCH_RESULTS_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}.txt
	cd ${PATH_TO_AUTOMATE_SH}
	cp ${ORIGINAL_DIR}/automate_template.sh ${PATH_TO_AUTOMATE_SH}/automate.sh
	if [[ ( "$CALC_TIME_WITH_SEPARATE_MAC_ADDITION" -eq 1 ) ]]; then
		sed -i 's/COUNT_MAC_INVOCATIONS=0/COUNT_MAC_INVOCATIONS=1/' automate.sh
	fi
	./automate.sh 32 ${MAX_NUM_OF_CMDS_IN_FIXED} 3 8 ${SECURE_HEAP_SIZE} 8 ${SECURE_STACK_SIZE} 8 16 ${FIXED_SIZE}>/dev/null
	if [[ ( "$CALC_TIME_WITH_SEPARATE_MAC_ADDITION" -eq 0 ) ]]; then
		time ./main_program_ksec | grep "New Secure ${NAME_OF_SECURE_FUNCTION} time:" >  ${NAME_OF_FILE}
	fi
	if [[ ( "$CALC_TIME_WITH_SEPARATE_MAC_ADDITION" -eq 1 ) ]]; then
		./calc_extra_total_mac_time.sh | grep "Total extra time for macs" > ${NAME_OF_FILE}
	fi
	echo -n ${NAME_OF_BENCHMARK} >> ${BENCH_RESULTS_DIR}/aggregated_results.txt
	${ORIGINAL_DIR}/get_the_seconds.py ${NAME_OF_FILE} >> ${BENCH_RESULTS_DIR}/aggregated_results.txt
	
done



#restore original automate.sh
cd ${ORIGINAL_DIR}
cp ./backup_automate.sh ${PATH_TO_AUTOMATE_SH}/automate.sh
#remove all junk from this directory
#rm ./automate*.sh
