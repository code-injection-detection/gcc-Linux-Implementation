#!/usr/bin/env bash


ORIGINAL_DIR=`pwd`
PATH_TO_AUTOMATE_SH=${ORIGINAL_DIR}"/../../"
NAME_OF_SECURE_FUNCTION="Matrix_multiplication"
BENCHMARK_NAME="Matrix_multiplication_800_sc_3"

CODE_CACHE_TYPE=2  #0 -> fully assosiative
				   #1 -> direct mapped
				   #2 -> set assosiative
DATA_CACHE_TYPE=2  #0 -> fully assosiative
				   #1 -> direct mapped
				   #2 -> set assosiative
CODE_CACHE_ASSOC=2
DATA_CACHE_ASSOC=2
SECURE_HEAP_SIZE=50000000
SECURE_STACK_SIZE=50000000
USEFUL_BYTES_PER_BLOCK=16
KEYSHARES_BYTES_PER_BLOCK=32
MAC_BYTES_PER_BLOCK=16
CALC_TIME_WITH_SEPARATE_MAC_ADDITION=1 #leave it as it is
PRODUCE_SECURE_EXEC=1
RUN_SECURE_EXEC=1
WORLD_IN_WHICH_WE_ARE=3
STACK_CANARIES_WORLD=3
RUN_TIME_SENSITIVE_BENCHMARKS=1 #no macs, ignoring macs
RUN_TIME_INSENSITIVE_BENCHMARKS=1 #caches with CALC_TIME_WITH_SEPARATE_MAC_ADDITION=1

BENCHMARK_IS_HANOI_WITH_OUTPUT=0 #if that's the case, the output will be huge (hundreds of MBs). We must not save it to disk


if [[ ( "$CALC_TIME_WITH_SEPARATE_MAC_ADDITION" -ne 1 ) ]]; then
	echo "We need CALC_TIME_WITH_SEPARATE_MAC_ADDITION==1."
	exit
fi

#take a backup of automate.sh
#cp ${PATH_TO_AUTOMATE_SH}/automate.sh ${ORIGINAL_DIR}/backup_automate.sh

if [[ ( "$CALC_TIME_WITH_SEPARATE_MAC_ADDITION" -eq 1) && ( "$RUN_SECURE_EXEC" -eq 1 ) && ( "$RUN_TIME_SENSITIVE_BENCHMARKS" -eq 1 ) ]]; then #calculate proper mac times
	cd ${PATH_TO_AUTOMATE_SH}
	echo "Calculating proper mac times..."
	./automate.sh 32 3 16 5000000 16 40000000 16 16 16 >/dev/null
	time ./mac_time_calculator > mac_invocation_times.txt
	cd ${ORIGINAL_DIR}
fi



#create benchmakrs dir
mkdir -p ${ORIGINAL_DIR}/${NAME_OF_SECURE_FUNCTION}_${BENCHMARK_NAME}
BENCH_RESULTS_DIR=${ORIGINAL_DIR}/${NAME_OF_SECURE_FUNCTION}_${BENCHMARK_NAME}/
mkdir -p ${BENCH_RESULTS_DIR}/secure_executables/
SECURE_EXEC_DIR=${BENCH_RESULTS_DIR}/secure_executables/



do_benchmarks() {

	FIXED_CODE_SIZE_NUMBERS=$1
	CACHE_SIZES=$2
	CODE_AND_DATA_CACHE_ASSOCS=$3
	DO_CACHES_ONLY=$4
	CODE_CACHE_TYPE=$5
	DATA_CACHE_TYPE=$6
	
	
	
	#copy original automate.sh
	cp ${ORIGINAL_DIR}/backup_automate.sh ${PATH_TO_AUTOMATE_SH}/automate.sh
	cp ${PATH_TO_AUTOMATE_SH}/automate.sh ${ORIGINAL_DIR}/automate_template.sh

	for FIXED_SIZE in ${FIXED_CODE_SIZE_NUMBERS}; do

        DATA_BLOCK_SIZE=$FIXED_SIZE
		#no macs
		if [[ ( "$DO_CACHES_ONLY" -eq 0 )  && ( "$RUN_TIME_SENSITIVE_BENCHMARKS" -eq 1 ) ]]; then
			NAME_OF_BENCHMARK="NO_MACS_FIXED_SIZE_${FIXED_SIZE}"
			echo ${NAME_OF_BENCHMARK}
			NAME_OF_FILE=${BENCH_RESULTS_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}.txt
			NAME_OF_EXEC=${SECURE_EXEC_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}_ksec
			NAME_OF_ALL_KEYSHARES_FOR_VERIF=${SECURE_EXEC_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}_all_keyshares
			NAME_OF_HEAP_KEYSHARES=${SECURE_EXEC_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}_heap_keyshares
			NAME_OF_STACK_KEYSHARES=${SECURE_EXEC_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}_stack_keyshares
            NAME_OF_ADDRESSES_OF_CPU_SPLIT_BLOCKS=${SECURE_EXEC_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}_addresses_of_cpu_split_blocks.txt
			#get the template
			cd ${PATH_TO_AUTOMATE_SH}
			cp ${ORIGINAL_DIR}/automate_template.sh ${PATH_TO_AUTOMATE_SH}/automate.sh
			sed -i 's/WORLD_IN_WHICH_WE_ARE=3/WORLD_IN_WHICH_WE_ARE=1/' automate.sh
			sed -i "s/USE_STACK_CANARIES=3/USE_STACK_CANARIES=${STACK_CANARIES_WORLD}/" automate.sh
			if [[ ( "$PRODUCE_SECURE_EXEC" -eq 1 ) ]]; then
				./automate.sh 32 3 ${DATA_BLOCK_SIZE} ${SECURE_HEAP_SIZE} ${DATA_BLOCK_SIZE} ${SECURE_STACK_SIZE} ${DATA_BLOCK_SIZE} 0 ${FIXED_SIZE} >/dev/null
				cp ./main_program_ksec ${NAME_OF_EXEC}
				cp heap_keyshares ${NAME_OF_HEAP_KEYSHARES}
				cp stack_keyshares ${NAME_OF_STACK_KEYSHARES}
				cp all_keyshares_for_verification ${NAME_OF_ALL_KEYSHARES_FOR_VERIF}
                cp addresses_of_cpu_split_blocks.txt ${NAME_OF_ADDRESSES_OF_CPU_SPLIT_BLOCKS}
			else
				cp ${NAME_OF_EXEC} ./main_program_ksec
				cp ${NAME_OF_HEAP_KEYSHARES} heap_keyshares
				cp ${NAME_OF_STACK_KEYSHARES} stack_keyshares
				cp ${NAME_OF_ALL_KEYSHARES_FOR_VERIF} all_keyshares_for_verification
                cp ${NAME_OF_ADDRESSES_OF_CPU_SPLIT_BLOCKS} addresses_of_cpu_split_blocks.txt 
			fi	
			if [[ ( "$RUN_SECURE_EXEC" -eq 1 ) ]]; then
				WHOLE_OUTPUT_FILENAME=${NAME_OF_FILE}_whole_output.txt
				if [[ ( "$BENCHMARK_IS_HANOI_WITH_OUTPUT" -eq 1 ) ]]; then
					#don't access the disk
					WHOLE_OUTPUT_FILENAME=""
				fi 
				time ./main_program_ksec | tee ${WHOLE_OUTPUT_FILENAME} | grep "Secure ${NAME_OF_SECURE_FUNCTION} time:" >  ${NAME_OF_FILE}
				echo -n ${NAME_OF_BENCHMARK} >> ${BENCH_RESULTS_DIR}/aggregated_results.txt
				${ORIGINAL_DIR}/get_the_seconds.py ${NAME_OF_FILE} >> ${BENCH_RESULTS_DIR}/aggregated_results.txt
			fi
		fi


		#ignoring macs
		if [[ ( "$DO_CACHES_ONLY" -eq 0 )  && ( "$RUN_TIME_SENSITIVE_BENCHMARKS" -eq 1 ) ]]; then
			NAME_OF_BENCHMARK="IGNORING_MACS_FIXED_SIZE_${FIXED_SIZE}"
			echo ${NAME_OF_BENCHMARK}
			NAME_OF_FILE=${BENCH_RESULTS_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}.txt
			NAME_OF_EXEC=${SECURE_EXEC_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}_ksec
			NAME_OF_ALL_KEYSHARES_FOR_VERIF=${SECURE_EXEC_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}_all_keyshares
			NAME_OF_HEAP_KEYSHARES=${SECURE_EXEC_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}_heap_keyshares
			NAME_OF_STACK_KEYSHARES=${SECURE_EXEC_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}_stack_keyshares
            NAME_OF_ADDRESSES_OF_CPU_SPLIT_BLOCKS=${SECURE_EXEC_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}_addresses_of_cpu_split_blocks.txt
			cd ${PATH_TO_AUTOMATE_SH}
			cp ${ORIGINAL_DIR}/automate_template.sh ${PATH_TO_AUTOMATE_SH}/automate.sh
			sed -i 's/WORLD_IN_WHICH_WE_ARE=3/WORLD_IN_WHICH_WE_ARE=2/' automate.sh
			sed -i "s/USE_STACK_CANARIES=3/USE_STACK_CANARIES=${STACK_CANARIES_WORLD}/" automate.sh
			if [[ ( "$PRODUCE_SECURE_EXEC" -eq 1 ) ]]; then
				./automate.sh 32 3 ${DATA_BLOCK_SIZE} ${SECURE_HEAP_SIZE} ${DATA_BLOCK_SIZE} ${SECURE_STACK_SIZE} ${DATA_BLOCK_SIZE} ${MAC_BYTES_PER_BLOCK} ${FIXED_SIZE} >/dev/null
				cp ./main_program_ksec ${NAME_OF_EXEC}
				cp heap_keyshares ${NAME_OF_HEAP_KEYSHARES}
				cp stack_keyshares ${NAME_OF_STACK_KEYSHARES}
				cp all_keyshares_for_verification ${NAME_OF_ALL_KEYSHARES_FOR_VERIF}
                cp addresses_of_cpu_split_blocks.txt ${NAME_OF_ADDRESSES_OF_CPU_SPLIT_BLOCKS}
			else
				cp ${NAME_OF_EXEC} ./main_program_ksec
				cp ${NAME_OF_HEAP_KEYSHARES} heap_keyshares
				cp ${NAME_OF_STACK_KEYSHARES} stack_keyshares
				cp ${NAME_OF_ALL_KEYSHARES_FOR_VERIF} all_keyshares_for_verification
                cp ${NAME_OF_ADDRESSES_OF_CPU_SPLIT_BLOCKS} addresses_of_cpu_split_blocks.txt 
			fi	
			if [[ ( "$RUN_SECURE_EXEC" -eq 1 ) ]]; then
				WHOLE_OUTPUT_FILENAME=${NAME_OF_FILE}_whole_output.txt
				if [[ ( "$BENCHMARK_IS_HANOI_WITH_OUTPUT" -eq 1 ) ]]; then
					#don't access the disk
					WHOLE_OUTPUT_FILENAME=""
				fi 
				time ./main_program_ksec | tee ${WHOLE_OUTPUT_FILENAME} | grep "Secure ${NAME_OF_SECURE_FUNCTION} time:" >  ${NAME_OF_FILE}
				echo -n ${NAME_OF_BENCHMARK} >> ${BENCH_RESULTS_DIR}/aggregated_results.txt
				${ORIGINAL_DIR}/get_the_seconds.py ${NAME_OF_FILE} >> ${BENCH_RESULTS_DIR}/aggregated_results.txt
			fi
		fi


		#using cache
		if [[ ( "$RUN_TIME_INSENSITIVE_BENCHMARKS" -eq 1 ) ]]; then
			for cache_size in ${CACHE_SIZES}; do
				for cache_assoc in ${CODE_AND_DATA_CACHE_ASSOCS}; do
					DATA_CACHE_SIZE=$cache_size
					DATA_CACHE_ASSOC=$cache_assoc
					CODE_CACHE_SIZE=$cache_size
					CODE_CACHE_ASSOC=$cache_assoc
					NAME_OF_BENCHMARK="USING_CACHE_CODE_CACHE=${CODE_CACHE_SIZE}_DATA_CACHE=${DATA_CACHE_SIZE}_ASSOC_${CODE_CACHE_ASSOC}_FIXED_SIZE_${FIXED_SIZE}"
					echo ${NAME_OF_BENCHMARK}
					NAME_OF_FILE=${BENCH_RESULTS_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}.txt
					NAME_OF_EXEC=${SECURE_EXEC_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}_ksec
					NAME_OF_ALL_KEYSHARES_FOR_VERIF=${SECURE_EXEC_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}_all_keyshares
					NAME_OF_HEAP_KEYSHARES=${SECURE_EXEC_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}_heap_keyshares
					NAME_OF_STACK_KEYSHARES=${SECURE_EXEC_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}_stack_keyshares
					NAME_OF_UNSPLIT_CODE_BLOCK_ADDRESSES=${SECURE_EXEC_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}_unsplit_code_block_addresses
					NAME_OF_ADDRESSES_OF_CPU_SPLIT_BLOCKS=${SECURE_EXEC_DIR}/${NAME_OF_SECURE_FUNCTION}_${NAME_OF_BENCHMARK}_addresses_of_cpu_split_blocks.txt
					cd ${PATH_TO_AUTOMATE_SH}
					cp ${ORIGINAL_DIR}/automate_template.sh ${PATH_TO_AUTOMATE_SH}/automate.sh
					if [[ ( "$CALC_TIME_WITH_SEPARATE_MAC_ADDITION" -eq 1 ) ]]; then
						sed -i 's/COUNT_MAC_INVOCATIONS=0/COUNT_MAC_INVOCATIONS=1/' automate.sh
					fi
					if [[ ( "$CALC_TIME_WITH_SEPARATE_MAC_ADDITION" -eq 0 ) ]]; then
						sed -i 's/COUNT_MAC_INVOCATIONS=1/COUNT_MAC_INVOCATIONS=0/' automate.sh
					fi
					sed -i "s/CODE_CACHE_TYPE=2/CODE_CACHE_TYPE=${CODE_CACHE_TYPE}/" automate.sh
					sed -i "s/DATA_CACHE_TYPE=2/DATA_CACHE_TYPE=${DATA_CACHE_TYPE}/" automate.sh
					sed -i "s/NUM_OF_CACHED_BLOCKS_OF_CODE=100/NUM_OF_CACHED_BLOCKS_OF_CODE=${CODE_CACHE_SIZE}/" automate.sh
					sed -i "s/NUM_OF_CACHED_BLOCKS_OF_DATA=100/NUM_OF_CACHED_BLOCKS_OF_DATA=${DATA_CACHE_SIZE}/" automate.sh
					sed -i "s/CODE_CACHE_SET_ASSOSIATIVE_SIZE=0/CODE_CACHE_SET_ASSOSIATIVE_SIZE=${CODE_CACHE_ASSOC}/" automate.sh
					sed -i "s/DATA_CACHE_SET_ASSOSIATIVE_SIZE=0/DATA_CACHE_SET_ASSOSIATIVE_SIZE=${DATA_CACHE_ASSOC}/" automate.sh
					sed -i "s/USE_STACK_CANARIES=3/USE_STACK_CANARIES=${STACK_CANARIES_WORLD}/" automate.sh
					if [[ ( "$PRODUCE_SECURE_EXEC" -eq 1 ) ]]; then
						./automate.sh 32 3 ${DATA_BLOCK_SIZE} ${SECURE_HEAP_SIZE} ${DATA_BLOCK_SIZE} ${SECURE_STACK_SIZE} ${DATA_BLOCK_SIZE} ${MAC_BYTES_PER_BLOCK} ${FIXED_SIZE} >/dev/null
						cp ./main_program_ksec ${NAME_OF_EXEC}
						cp heap_keyshares ${NAME_OF_HEAP_KEYSHARES}
						cp stack_keyshares ${NAME_OF_STACK_KEYSHARES}
						cp all_keyshares_for_verification ${NAME_OF_ALL_KEYSHARES_FOR_VERIF}
						cp addresses_of_cpu_split_blocks.txt ${NAME_OF_ADDRESSES_OF_CPU_SPLIT_BLOCKS}
					else
						cp ${NAME_OF_EXEC} ./main_program_ksec
						cp ${NAME_OF_HEAP_KEYSHARES} heap_keyshares
						cp ${NAME_OF_STACK_KEYSHARES} stack_keyshares
						cp ${NAME_OF_ALL_KEYSHARES_FOR_VERIF} all_keyshares_for_verification
						cp ${NAME_OF_ADDRESSES_OF_CPU_SPLIT_BLOCKS} addresses_of_cpu_split_blocks.txt 
					fi
					if [[ ( "$RUN_SECURE_EXEC" -eq 1 ) ]]; then
						WHOLE_OUTPUT_FILENAME=${NAME_OF_FILE}_whole_output.txt
						if [[ ( "$BENCHMARK_IS_HANOI_WITH_OUTPUT" -eq 1 ) ]]; then
							#don't access the disk
							WHOLE_OUTPUT_FILENAME=""
						fi 
					
						if [[ ( "$CALC_TIME_WITH_SEPARATE_MAC_ADDITION" -eq 0 ) ]]; then
							time ./main_program_ksec | tee ${WHOLE_OUTPUT_FILENAME} | grep "Secure ${NAME_OF_SECURE_FUNCTION} time:" >  ${NAME_OF_FILE}
						fi
						if [[ ( "$CALC_TIME_WITH_SEPARATE_MAC_ADDITION" -eq 1 ) ]]; then
							./calc_extra_total_mac_time.sh  ${WHOLE_OUTPUT_FILENAME} | grep "Total extra time for macs" > ${NAME_OF_FILE}
						fi
						echo -n ${NAME_OF_BENCHMARK} >> ${BENCH_RESULTS_DIR}/aggregated_results.txt
						${ORIGINAL_DIR}/get_the_seconds.py ${NAME_OF_FILE} >> ${BENCH_RESULTS_DIR}/aggregated_results.txt
					fi
				done
			done
		fi

	done
}

FIXED_CODE_SIZE_NUMBERS="16 32 48 64"
#CACHE_SIZES="20 40 60 80 100 150 200 250 300"
#CACHE_SIZES="1 2 4 6 8 10"
#CODE_AND_DATA_CACHE_ASSOCS="DIRECT_MAPPED"
CODE_AND_DATA_CACHE_ASSOCS="2"


#CACHE_SIZES="20 40 60 80 100 150 200 250 300"
#CACHE_SIZES="18 38 58 78 98 148 198"
CACHE_SIZES="50 100 150 200 250 300 350 400"
CODE_AND_DATA_CACHE_ASSOCS="2"
CODE_CACHE_TYPE=2
DATA_CACHE_TYPE=2
#if [[ ( "$CALC_TIME_WITH_SEPARATE_MAC_ADDITION" -eq 0 ) ]]; then
#    DO_CACHES_ONLY=0
#else
#    DO_CACHES_ONLY=1
#fi
do_benchmarks "${FIXED_CODE_SIZE_NUMBERS}"  "${CACHE_SIZES}" "${CODE_AND_DATA_CACHE_ASSOCS}" 0 ${CODE_CACHE_TYPE} ${DATA_CACHE_TYPE}
#don't do with such small cache sizes
#CACHE_SIZES="1 2 4 6 8 10"
#CODE_AND_DATA_CACHE_ASSOCS="DIRECT_MAPPED"
#CODE_CACHE_TYPE=1
#DATA_CACHE_TYPE=1
#do_benchmarks "${FIXED_CODE_SIZE_NUMBERS}"  "${CACHE_SIZES}" "${CODE_AND_DATA_CACHE_ASSOCS}" 1 ${CODE_CACHE_TYPE} ${DATA_CACHE_TYPE}




#restore original automate.sh
cd ${ORIGINAL_DIR}
cp ./backup_automate.sh ${PATH_TO_AUTOMATE_SH}/automate.sh


