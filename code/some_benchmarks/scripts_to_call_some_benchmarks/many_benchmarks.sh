#!/usr/bin/env bash


#put this script somewhere outside of the repo directory
PATH_TO_AUTOMATE_SH=/home/menoobs/virus_detection/gcc-Linux-Implementation/code/
ORIGINAL_DIR=`pwd`
NAME_OF_SECURE_FUNCTION=matrix_multiplication_sec
BENCHMARK_NAME=mm_800_2000_max_cmds_35

CODE_CACHE_TYPE=2  #0 -> fully assosiative
				   #1 -> direct mapped
				   #2 -> set assosiative
DATA_CACHE_TYPE=2  #0 -> fully assosiative
				   #1 -> direct mapped
				   #2 -> set assosiative
CODE_CACHE_ASSOC=2
DATA_CACHE_ASSOC=2
SECURE_HEAP_SIZE=40000
SECURE_STACK_SIZE=40000000
MAX_NUM_OF_CMDS_IN_FIXED=35



#create benchmakrs dir
mkdir -p ${ORIGINAL_DIR}/${NAME_OF_SECURE_FUNCTION}_${BENCHMARK_NAME}
BENCH_RESULTS_DIR=${ORIGINAL_DIR}/${NAME_OF_SECURE_FUNCTION}_${BENCHMARK_NAME}/
#copy original automate.sh
cp ${ORIGINAL_DIR}/backup_automate.sh ${PATH_TO_AUTOMATE_SH}/automate.sh
cp ${PATH_TO_AUTOMATE_SH}/automate.sh ${ORIGINAL_DIR}/automate_template.sh


VARIABLE_CODE_SIZE_NUMBERS="39 7 1"
FIXED_CODE_SIZE_NUMBERS="20 55 71 75"
CACHE_SIZES="20 40 60 100 150 200"


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
		DATA_CACHE_SIZE=$cache_size
		CODE_CACHE_SIZE=$cache_size
		NAME_OF_BENCHMARK="USING_CACHE_CODE_CACHE=${CODE_CACHE_SIZE}_DATA_CACHE=${DATA_CACHE_SIZE}_VAR_SIZE_${var_size}"
		echo ${NAME_OF_BENCHMARK}
		NAME_OF_FILE=${BENCH_RESULTS_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}.txt
		cd ${PATH_TO_AUTOMATE_SH}
		cp ${ORIGINAL_DIR}/automate_template.sh ${PATH_TO_AUTOMATE_SH}/automate.sh
		sed -i "s/CODE_CACHE_TYPE=2/CODE_CACHE_TYPE=${CODE_CACHE_TYPE}/" automate.sh
		sed -i "s/DATA_CACHE_TYPE=2/DATA_CACHE_TYPE=${DATA_CACHE_TYPE}/" automate.sh
		sed -i "s/NUM_OF_CACHED_BLOCKS_OF_CODE=0/NUM_OF_CACHED_BLOCKS_OF_CODE=${CODE_CACHE_SIZE}/" automate.sh
		sed -i "s/NUM_OF_CACHED_BLOCKS_OF_DATA=0/NUM_OF_CACHED_BLOCKS_OF_DATA=${DATA_CACHE_SIZE}/" automate.sh
		sed -i "s/CODE_CACHE_SET_ASSOSIATIVE_SIZE=0/CODE_CACHE_SET_ASSOSIATIVE_SIZE=${CODE_CACHE_ASSOC}/" automate.sh
		sed -i "s/DATA_CACHE_SET_ASSOSIATIVE_SIZE=0/DATA_CACHE_SET_ASSOSIATIVE_SIZE=${DATA_CACHE_ASSOC}/" automate.sh
		./automate.sh 32 ${var_size} 3 8 ${SECURE_HEAP_SIZE} 8 ${SECURE_STACK_SIZE} 8 16 >/dev/null
		time ./main_program_ksec | grep "New Secure ${NAME_OF_SECURE_FUNCTION} time:" >  ${NAME_OF_FILE}
		echo -n ${NAME_OF_BENCHMARK} >> ${BENCH_RESULTS_DIR}/aggregated_results.txt
		${ORIGINAL_DIR}/get_the_seconds.py ${NAME_OF_FILE} >> ${BENCH_RESULTS_DIR}/aggregated_results.txt
	done

	#doing_everything
	NAME_OF_BENCHMARK="DOING_EVERYTHING_VAR_SIZE_${var_size}"
	echo ${NAME_OF_BENCHMARK}
	NAME_OF_FILE=${BENCH_RESULTS_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}.txt
	cd ${PATH_TO_AUTOMATE_SH}
	cp ${ORIGINAL_DIR}/automate_template.sh ${PATH_TO_AUTOMATE_SH}/automate.sh
	./automate.sh 32 ${var_size} 3 8 ${SECURE_HEAP_SIZE} 8 ${SECURE_STACK_SIZE} 8 16 >/dev/null
	time ./main_program_ksec | grep "New Secure ${NAME_OF_SECURE_FUNCTION} time:" >  ${NAME_OF_FILE}
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
		DATA_CACHE_SIZE=$cache_size
		CODE_CACHE_SIZE=$cache_size
		NAME_OF_BENCHMARK="USING_CACHE_CODE_CACHE=${CODE_CACHE_SIZE}_DATA_CACHE=${DATA_CACHE_SIZE}_FIXED_SIZE_${FIXED_SIZE}"
		echo ${NAME_OF_BENCHMARK}
		NAME_OF_FILE=${BENCH_RESULTS_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}.txt
		cd ${PATH_TO_AUTOMATE_SH}
		cp ${ORIGINAL_DIR}/automate_template.sh ${PATH_TO_AUTOMATE_SH}/automate.sh
		sed -i "s/CODE_CACHE_TYPE=2/CODE_CACHE_TYPE=${CODE_CACHE_TYPE}/" automate.sh
		sed -i "s/DATA_CACHE_TYPE=2/DATA_CACHE_TYPE=${DATA_CACHE_TYPE}/" automate.sh
		sed -i "s/NUM_OF_CACHED_BLOCKS_OF_CODE=0/NUM_OF_CACHED_BLOCKS_OF_CODE=${CODE_CACHE_SIZE}/" automate.sh
		sed -i "s/NUM_OF_CACHED_BLOCKS_OF_DATA=0/NUM_OF_CACHED_BLOCKS_OF_DATA=${DATA_CACHE_SIZE}/" automate.sh
		sed -i "s/CODE_CACHE_SET_ASSOSIATIVE_SIZE=0/CODE_CACHE_SET_ASSOSIATIVE_SIZE=${CODE_CACHE_ASSOC}/" automate.sh
		sed -i "s/DATA_CACHE_SET_ASSOSIATIVE_SIZE=0/DATA_CACHE_SET_ASSOSIATIVE_SIZE=${DATA_CACHE_ASSOC}/" automate.sh
		./automate.sh 32 ${MAX_NUM_OF_CMDS_IN_FIXED} 3 8 ${SECURE_HEAP_SIZE} 8 ${SECURE_STACK_SIZE} 8 16 ${FIXED_SIZE} >/dev/null
		time ./main_program_ksec | grep "New Secure ${NAME_OF_SECURE_FUNCTION} time:" >  ${NAME_OF_FILE}
		echo -n ${NAME_OF_BENCHMARK} >> ${BENCH_RESULTS_DIR}/aggregated_results.txt
		${ORIGINAL_DIR}/get_the_seconds.py ${NAME_OF_FILE} >> ${BENCH_RESULTS_DIR}/aggregated_results.txt
	done

	#doing_everything
	NAME_OF_BENCHMARK="DOING_EVERYTHING_FIXED_SIZE_${FIXED_SIZE}"
	echo ${NAME_OF_BENCHMARK}
	NAME_OF_FILE=${BENCH_RESULTS_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}.txt
	cd ${PATH_TO_AUTOMATE_SH}
	cp ${ORIGINAL_DIR}/automate_template.sh ${PATH_TO_AUTOMATE_SH}/automate.sh
	./automate.sh 32 ${MAX_NUM_OF_CMDS_IN_FIXED} 3 8 ${SECURE_HEAP_SIZE} 8 ${SECURE_STACK_SIZE} 8 16 ${FIXED_SIZE}>/dev/null
	time ./main_program_ksec | grep "New Secure ${NAME_OF_SECURE_FUNCTION} time:" >  ${NAME_OF_FILE}
	echo -n ${NAME_OF_BENCHMARK} >> ${BENCH_RESULTS_DIR}/aggregated_results.txt
	${ORIGINAL_DIR}/get_the_seconds.py ${NAME_OF_FILE} >> ${BENCH_RESULTS_DIR}/aggregated_results.txt
	
done



#restore original automate.sh
cd ${ORIGINAL_DIR}
cp ./backup_automate.sh ${PATH_TO_AUTOMATE_SH}/automate.sh
#remove all junk from this directory
#rm ./automate*.sh
