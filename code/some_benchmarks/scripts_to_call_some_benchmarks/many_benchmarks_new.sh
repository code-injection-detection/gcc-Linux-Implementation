#!/usr/bin/env bash

PATH_TO_AUTOMATE_SH=/home/menoobs/virus_detection/gcc-Linux-Implementation/code/
ORIGINAL_DIR=`pwd`
NAME_OF_SECURE_FUNCTION=Dijkstra
BENCHMARK_NAME=Dijkstra_500

CODE_CACHE_TYPE=2  #0 -> fully assosiative
				   #1 -> direct mapped
				   #2 -> set assosiative
DATA_CACHE_TYPE=2  #0 -> fully assosiative
				   #1 -> direct mapped
				   #2 -> set assosiative
CODE_CACHE_ASSOC=2
DATA_CACHE_ASSOC=2
SECURE_HEAP_SIZE=5000000
SECURE_STACK_SIZE=10000000
USEFUL_BYTES_PER_BLOCK=16
KEYSHARES_BYTES_PER_BLOCK=32
MAC_BYTES_PER_BLOCK=16
CALC_TIME_WITH_SEPARATE_MAC_ADDITION=1
PRODUCE_SECURE_EXEC=1
RUN_SECURE_EXEC=1
WORLD_IN_WHICH_WE_ARE=3

#take a backup of automate.sh
cp ${PATH_TO_AUTOMATE_SH}/automate.sh ${ORIGINAL_DIR}/backup_automate.sh

if [[ ( "$CALC_TIME_WITH_SEPARATE_MAC_ADDITION" -eq 1) && ( "$RUN_SECURE_EXEC" -eq 1 ) ]]; then #calculate proper mac times
	cd ${PATH_TO_AUTOMATE_SH}
	echo "Calculating proper mac times..."
	./automate.sh 32 3 16 5000000 16 40000000 16 16 16 >/dev/null
	time ./mac_time_calculator > mac_invocation_times.txt
	cd ${ORIGINAL_DIR}
fi

