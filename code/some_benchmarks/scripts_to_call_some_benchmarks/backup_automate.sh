#!/bin/bash

#this script creates the actual secure program
#do "make clean" if after the execution you want to clear the files

DECLARE_GLOBAL_KEYS_AS_AN_ARRAY=0  #default 0
INSERT_PARAMERERS_INTO_NEW_SECURE_STACK_AS_ARRAYS=1 #default 1
CHECK_FOR_SECURE_STACK_ALLOCATION_OVERLOW=0 #default 0, checks if we don't have enough stack memory to accommodate for a given secure stack allocation

USE_INLINE_CODE_FOR_DELAYS=0 #make it 1 when tou want to benchmark normal times (where extra code is added to the normal functions to simulate a fair (for the secure functions) delay. Default 0.
CODE_CACHE_TYPE=2  #0 -> fully assosiative (default 2)
				   #1 -> direct mapped
				   #2 -> set assosiative
DATA_CACHE_TYPE=2  #0 -> fully assosiative (default 2)
				   #1 -> direct mapped
				   #2 -> set assosiative
				   
			
NUM_OF_CACHED_BLOCKS_OF_CODE=100 #if a code block is in the cache, it does not have to be verified. If it is 0, we have no cache
CODE_CACHE_SET_ASSOSIATIVE_SIZE=2 #the size of the set in the code cache
NUM_OF_CACHED_BLOCKS_OF_DATA=100 #if a data block is in the cache, it does not have to be verified. If it is 0, we have no cache
DATA_CACHE_SET_ASSOSIATIVE_SIZE=2 #the size of the set in the data cache
SQEEZE_KEYS_WHEN_MACING=1  #Reduces the size of the keys from 32 bytes to 16 when calculating mac. Default 1
SIZE_OF_JMP_COMMAND=5 #jmp.d32 <label>
BYTES_FOR_INSTR_LEN=2 #the number of bytes after the canaries that hold the size of the verifications+useful bytes+the jmp bytes
BYTES_FOR_NUM_OF_PADDED_NOPS_LEN=2 # the number of bytes after the canaries+bytes_for_instructions  that hold the number of padded nops
OVERHEAD_OF_VERIFICATION=7 #7 for fixed size, 14 for variable size (obsolete)
USE_NEW_SECURE_HEAP=2 # use the new secure heap implementation. 1-> use it, but do not use the secured global variables for its position/size etc. 2-> use it, with the secured global variables
STACK_SHOULD_GROW_TO_DECREASING_NUMBERS=1 #IMPORTANT: 1 ONLY WORKS WHEN INSERT_PARAMERERS_INTO_NEW_SECURE_STACK_AS_ARRAYS=1. Currently the default, the stack canaries won't work without it.
USE_STACK_CANARIES=3 # IMPORTANT: ONLY WORKS WHEN STACK_SHOULD_GROW_TO_DECREASING_NUMBERS=1. Inserts a stack canary on top of the local variables of a function, in order to protect from buffer overflows. 1->use constant static stack canaries, 2-> use stack canaries different for every block in the secure stack , 3->use cryptographically distinct stack canaries
SIZE_OF_STACK_CANARIES=8
WORLD_IN_WHICH_WE_ARE=3 # 1->No MACs no verification. 2-> Put MACs but ignore them (no verification), 3-> everything calculated world .  NOPs are padded in ALL worlds.
ALL_GETTER_SETTER_ARGUMENTS_POINT_AT_START_OF_BLOCKS=0 #Default 0. A pointer to the secure memory given to a getter or a setter may not be at the start of a block 

#SEMI_OBSOLETE FLAG BELOW
COUNT_MAC_INVOCATIONS=0 #Ignores mac correctness and reports mac invocations. Default 1. That is the third world. This is the only flag that we would like to change once in a while for correctnes check

#OBSOLETE FLAGS BELOW
ADD_CODE_ON_THE_FLY_VERIFICATION=1 #default 1, that is the third world
FORCE_NUM_OF_INSTRUCTIONS_OVER_NUM_OF_BYTES=0 #for fixed size length, the default config (0) is to just have a fixed size code block without caring to complete the number of instructions given per block. If it is set to 1, then every block should have X instructions, or else an error occurs. OBSOLETE since now we don't care completing a specific number of instructions per block
DO_NOT_MAC_WHAT_WHE_ADD_IN_CODE=1 #ignore our additions to the code (like verification procedure, jmps etc) when calculating mac. Default 1. ALWAYS TRUE.
IGNORE_MACS_EVEN_IF_THERE_ARE_MAC_BYTES=0  #put the macs in the memory, but do absolutely nothing about  (default 0), That is world 2.
IGNORE_MACS_LAST_MOMENT_EVEN_IF_THERE_ARE_MAC_BYTES=0 #put the macs in memory, include the on the fly verification code, and when it comes to calculate them, don't do it (default 0). OBSOLETE FLAG.
FORCE_CODE_BLOCK_SPLIT_ON_LABELS_AND_CALLS=0 #use it with IGNORE_MACS_EVEN_IF_THERE_ARE_MAC_BYTES=1, the blocks are split but no verification code added. OBSOLETE FLAG.
TREAT_LOOP_COUNTERS_AS_UNSECURED_VARIABLES=0 #don't call the secure getters and setters for the loop counters. It seems wrong to not call them. Default 0. ALWAYS FALSE.
ADD_THE_PADDED_NOPS_IN_THE_MAC_IN_FIXED_SIZE=1 #takes into account the padded nops in the mac calculation. Default 1. ALWAYS TRUE.
USE_CODE_CACHE_WITH_UNSPLIT_BLOCKS=1 #The code blocks that are cached are cached if being unsplit. Default 1. ALWAYS TRUE.
SET_AS_GIVEN_THAT_EVERYTHING_MACED_WILL_BE_FIXED_AND_MULTIPLE_OF_16=1 #this means that we can disable length prepending and padding. Default 1. ALWAYS TRUE. 
WHEN_SPLITTING_BLOCKS_DO_NOT_INVOKE_VERIF_UNLESS_ON_LABEL=1 #Does not calculate the mac when splitting blocks due to label encounter and we continue normal execution. Only calcs mac when we jump to that label. OBSOLETE FLAG.
SPLIT_THE_BLOCKS_WHEN_THE_SECURE_CPU_WOULD=1 #It changes the values of WHEN_SPLITTING_BLOCKS_DO_NOT_INVOKE_VERIF_UNLESS_ON_LABEL and USE_CODE_CACHE_WITH_UNSPLIT_BLOCKS to hold its value. Splits blocks when encountering call or label, but calculates the mac on the unsplit block. ALWAYS TRUE.
USING_LARGE_JMPS_AND_CODE_BLOCKS_WITH_3_WORLDS=1 #using the new implementation which restricts the variables that we have. The worlds are: no macs, ignoring macs, splitting and caching like secure cpu would. ALWAYS TRUE.
VERIFY_EVERYTHING=1 #the third world
SECURE_GLOBAL_VARIABLES_WITH_SEPARATE_KEYS=1  #default 1



#usage
if [[ ( "$#" -ne 9 ) ]]; then
    echo "Please execute as following:"
    echo -e "\n$0 <a> <b> <c> <d> <e> <f> <g> <h> <i>"
    echo "Where: a=number_of_interleaved keys in code"
    echo "b=number of canary values before keyshares in code, to denote keyshare presence"
    echo "c=number of grouped useful bytes in heap memory, d=total bytes to (try to) pre-allocate in heap memory"
    echo "e=number of grouped useful bytes in stack memory, f=total bytes to (try to) pre-allocate in stack memory"
    echo "g=number of grouped useful bytes between keyshares in global variables"
    echo "h=number of bytes for MACs"
	echo "i=size in bytes of a fixed chunk in code"
	echo "Example: $0 32 3 16 20000000 16 40000000 16 16 16"
    exit
fi

NUM_OF_INTERLEAVED_KEYS=32 #The number of bytes for both the keyshares in a block
NUM_OF_GROUPED_INSTRUCTIONS=80 #grouped code instructions per code block (obsolete)
NUM_OF_GROUPED_USEFUL_BYTES=16 #the useful bytes in a heap block
NUM_OF_TOTAL_BYTES_ALLOC_IN_HEAP=100000 #the size of the secure heap
NUM_OF_CANARIES=3 
NUM_OF_GROUPED_USEFUL_STACK_BYTES=16 #the useful bytes in a stack block
NUM_OF_TOTAL_STACK_BYTES_ALLOC=80000 #the size of the secure stack
NUM_OF_GLOBAL_USEFUL_BYTES=16  #the useful bytes in a data segment block
NUM_OF_MAC_BYTES=16 
USE_FIXED_SIZE_CHUNKS_OF_CODE=1 #should we use fixed chunks in code blocks? ALWAYS TRUE
NUM_OF_REQUESTED_USEFUL_BYTES_IN_CODE_CHUNK=16 #We will complete that number with padded nops if we can't reach it

#set the values

if [ "$#" -eq 9 ]; then
	NUM_OF_INTERLEAVED_KEYS=$1
	NUM_OF_CANARIES=$2
	NUM_OF_GROUPED_USEFUL_BYTES=$3
	NUM_OF_TOTAL_BYTES_ALLOC_IN_HEAP=$4
	NUM_OF_GROUPED_USEFUL_STACK_BYTES=$5
	NUM_OF_TOTAL_STACK_BYTES_ALLOC=$6
	NUM_OF_GLOBAL_USEFUL_BYTES=$7
	NUM_OF_MAC_BYTES=$8
	NUM_OF_REQUESTED_USEFUL_BYTES_IN_CODE_CHUNK=$9  #${10} for a tenth parameter
	USE_FIXED_SIZE_CHUNKS_OF_CODE=1
fi

echo -n "NUM_OF_INTERLEAVED_KEYS: "
echo $NUM_OF_INTERLEAVED_KEYS
echo -n "NUM_OF_GROUPED_USEFUL_BYTES: "
echo $NUM_OF_GROUPED_USEFUL_BYTES
echo -n "NUM_OF_TOTAL_BYTES_ALLOC_IN_HEAP: "
echo $NUM_OF_TOTAL_BYTES_ALLOC_IN_HEAP
echo -n "NUM_OF_CANARIES: "
echo $NUM_OF_CANARIES
echo -n "NUM_OF_GROUPED_USEFUL_STACK_BYTES: "
echo $NUM_OF_GROUPED_USEFUL_STACK_BYTES
echo -n "NUM_OF_TOTAL_STACK_BYTES_ALLOC: "
echo $NUM_OF_TOTAL_STACK_BYTES_ALLOC
echo -n "NUM_OF_GLOBAL_USEFUL_BYTES: "
echo $NUM_OF_GLOBAL_USEFUL_BYTES
echo -n "NUM_OF_MAC_BYTES: "
echo $NUM_OF_MAC_BYTES
echo -n "NUM_OF_REQUESTED_USEFUL_BYTES_IN_CODE_CHUNK: "
echo $NUM_OF_REQUESTED_USEFUL_BYTES_IN_CODE_CHUNK

echo ""


#Attempt to set the obsolete flags with our new version (v2), which only uses worlds.
if [ "$WORLD_IN_WHICH_WE_ARE" -eq "1" ]; then
	ADD_CODE_ON_THE_FLY_VERIFICATION=0
	NUM_OF_MAC_BYTES=0 #greatly simplifies things
	COUNT_MAC_INVOCATIONS=0
	VERIFY_EVERYTHING=0
	IGNORE_MACS_EVEN_IF_THERE_ARE_MAC_BYTES=1
	IGNORE_MACS_LAST_MOMENT_EVEN_IF_THERE_ARE_MAC_BYTES=1
fi

if [ "$WORLD_IN_WHICH_WE_ARE" -eq "2" ]; then
	ADD_CODE_ON_THE_FLY_VERIFICATION=0
	COUNT_MAC_INVOCATIONS=0
	VERIFY_EVERYTHING=0
	IGNORE_MACS_EVEN_IF_THERE_ARE_MAC_BYTES=1
	IGNORE_MACS_LAST_MOMENT_EVEN_IF_THERE_ARE_MAC_BYTES=1
	FORCE_CODE_BLOCK_SPLIT_ON_LABELS_AND_CALLS=1
fi

if [ "$WORLD_IN_WHICH_WE_ARE" -eq "3" ]; then
	#nothing changes from default values above
	: ;
fi



if [ "$NUM_OF_REQUESTED_USEFUL_BYTES_IN_CODE_CHUNK" -lt "16" ]; then
	echo "Caution! The useful bytes in the code chunk should be more or equal than 16"
	echo "Your value of code chunk length is small enough to cause concerns. Exiting for safety."
	echo "If you REALLY want such a value (it is small however), change the automate.sh script."
	exit
fi

if [ "$NUM_OF_INTERLEAVED_KEYS" -ne "32" ]; then
	echo "Keys should be 32 bytes long (16 bytes [=128 bits] for each key). Other sizes currently not supported."
	exit
fi

if [[ ( "$NUM_OF_MAC_BYTES" -eq 0 ) && ( "$ADD_CODE_ON_THE_FLY_VERIFICATION" -eq 1 ) ]]; then
	echo "Can't have 0 mac bytes and code on the fly verification."
	exit
fi

if [[ ( "$NUM_OF_CACHED_BLOCKS_OF_DATA" -ne 0 ) && ( "$NUM_OF_GROUPED_USEFUL_BYTES" -ne "$NUM_OF_GROUPED_USEFUL_STACK_BYTES" ) ]]; then
	echo "Can't have data cache and the useful bytes in the heap be different in number than those in the stack."
	exit
fi

if [[ ( "$NUM_OF_CACHED_BLOCKS_OF_DATA" -ne 0 ) && ( "$NUM_OF_GROUPED_USEFUL_BYTES" -ne "$NUM_OF_GLOBAL_USEFUL_BYTES" ) ]]; then
	echo "Can't have data cache and the useful bytes in the heap be different in number than those in the globals."
	exit
fi

if [[ ( "$NUM_OF_CACHED_BLOCKS_OF_DATA" -ne 0 ) && ( "$NUM_OF_GROUPED_USEFUL_STACK_BYTES" -ne "$NUM_OF_GLOBAL_USEFUL_BYTES" ) ]]; then
	echo "Can't have data cache and the useful bytes in the stack be different in number than those in the globals."
	exit
fi

if [[ "$SIZE_OF_STACK_CANARIES" -ne 8  ]]; then
	echo "Size of stack canaries is not supported to be different than 8."
	exit
fi


#OBSOLETE FLAGS checks
if [ "$SPLIT_THE_BLOCKS_WHEN_THE_SECURE_CPU_WOULD" -eq "1" ]; then
	WHEN_SPLITTING_BLOCKS_DO_NOT_INVOKE_VERIF_UNLESS_ON_LABEL=1
	USE_CODE_CACHE_WITH_UNSPLIT_BLOCKS=1
fi

if [ "$SPLIT_THE_BLOCKS_WHEN_THE_SECURE_CPU_WOULD" -eq "0" ]; then
	WHEN_SPLITTING_BLOCKS_DO_NOT_INVOKE_VERIF_UNLESS_ON_LABEL=0
	USE_CODE_CACHE_WITH_UNSPLIT_BLOCKS=0
fi


#Checking if the .class files are present. If not (or out of date), we create them.
if [ ! -d "../bin" ]; then  #if directory does not exist
	echo "The 'bin' directory with the class files is not present!" 
	echo "The script will do the job for you. Make sure Java compiler is installed."
	echo "Compiling Java classes..."
	javac ../src/*
	mkdir ../bin/
	mv ../src/*.class ../bin/
	echo "Compiled Java classes."
else
	declare -a java_names=("Secure_Assembly_v2" "Secure_Machine_Code_v2")
	for java_file in "${java_names[@]}"
	do 
		if [ ! -f ../bin/${java_file}.class ]; then #if .class file is not there
			echo "${java_file} class file not found!"
			echo "The script will do the job for you. Make sure Java compiler is installed."
			echo "Compiling Java class..."
			javac ../src/${java_file}.java
			mv ../src/${java_file}.class ../bin/
			echo "Compiled Java class."
		else if [ ../bin/${java_file}.class -ot ../src/${java_file}.java ]; then #if the class file is older than the code
				echo "${java_file} class file is out of date!"
				echo "The script will do the job for you. Make sure Java compiler is installed."
				echo "Compiling Java class..."
				javac ../src/${java_file}.java
				mv ../src/${java_file}.class ../bin/
				echo "Compiled Java class."
			 fi
		fi
	done 
fi

#removing potentially old stuff...
rm -f addresses_of_unsplit_blocks.txt


#creating 2 named pipes for communication (delete if already exist)
mkdir -p communication_files
cd communication_files
rm -f comm_file1
mkfifo comm_file1
rm -f comm_file2
mkfifo comm_file2
cd ..


SCRIPTS_FOR_CODEGEN_DIR='./scripts_for_code_generation/'

START_TIME_FIRST_PART=$(date +%s.%N)
echo "Copying scripts to current directory..."
cp ${SCRIPTS_FOR_CODEGEN_DIR}/* ./

echo "Changing defines according to input..."
#this script changes the defines according to user input, so that se secure program knows the constants as headers.
SET_PROPER_DEFINES='python3 set_correct_defines.py $NUM_OF_INTERLEAVED_KEYS $NUM_OF_CANARIES $NUM_OF_GROUPED_USEFUL_BYTES $NUM_OF_TOTAL_BYTES_ALLOC_IN_HEAP $NUM_OF_GROUPED_USEFUL_STACK_BYTES $NUM_OF_TOTAL_STACK_BYTES_ALLOC $NUM_OF_GLOBAL_USEFUL_BYTES $NUM_OF_MAC_BYTES $INSERT_PARAMERERS_INTO_NEW_SECURE_STACK_AS_ARRAYS $USE_FIXED_SIZE_CHUNKS_OF_CODE $NUM_OF_REQUESTED_USEFUL_BYTES_IN_CODE_CHUNK $DO_NOT_MAC_WHAT_WHE_ADD_IN_CODE $ADD_CODE_ON_THE_FLY_VERIFICATION $USE_INLINE_CODE_FOR_DELAYS $NUM_OF_CACHED_BLOCKS_OF_CODE $NUM_OF_CACHED_BLOCKS_OF_DATA $IGNORE_MACS_EVEN_IF_THERE_ARE_MAC_BYTES $CODE_CACHE_TYPE $DATA_CACHE_TYPE $CODE_CACHE_SET_ASSOSIATIVE_SIZE $DATA_CACHE_SET_ASSOSIATIVE_SIZE $IGNORE_MACS_LAST_MOMENT_EVEN_IF_THERE_ARE_MAC_BYTES $TREAT_LOOP_COUNTERS_AS_UNSECURED_VARIABLES $SQEEZE_KEYS_WHEN_MACING $COUNT_MAC_INVOCATIONS $ADD_THE_PADDED_NOPS_IN_THE_MAC_IN_FIXED_SIZE $FORCE_CODE_BLOCK_SPLIT_ON_LABELS_AND_CALLS $USE_CODE_CACHE_WITH_UNSPLIT_BLOCKS $SET_AS_GIVEN_THAT_EVERYTHING_MACED_WILL_BE_FIXED_AND_MULTIPLE_OF_16 $WHEN_SPLITTING_BLOCKS_DO_NOT_INVOKE_VERIF_UNLESS_ON_LABEL $SIZE_OF_JMP_COMMAND $OVERHEAD_OF_VERIFICATION $USING_LARGE_JMPS_AND_CODE_BLOCKS_WITH_3_WORLDS $BYTES_FOR_INSTR_LEN $VERIFY_EVERYTHING $USE_NEW_SECURE_HEAP $CHECK_FOR_SECURE_STACK_ALLOCATION_OVERLOW $STACK_SHOULD_GROW_TO_DECREASING_NUMBERS $USE_STACK_CANARIES $WORLD_IN_WHICH_WE_ARE $BYTES_FOR_NUM_OF_PADDED_NOPS_LEN $SIZE_OF_STACK_CANARIES $ALL_GETTER_SETTER_ARGUMENTS_POINT_AT_START_OF_BLOCKS'
eval $SET_PROPER_DEFINES

echo "Inserting secure heap manager + more tests into the great function that contains the secure functions..."
	cp ./template_files/heap_manager_functions_that_use_secure_stack_template.c heap_manager_functions_that_use_secure_stack.c
	cp ./template_files/tests_with_new_stack_template.c tests_with_new_stack.c
	cp ./template_files/more_tests_that_use_new_stack_template.c more_tests_that_use_new_stack.c
	cp ./template_files/tests_for_stack_commands_supporting_ast_parsing_template.c tests_for_stack_commands_supporting_ast_parsing.c

	#Transform C->secure C in the tests that benefit from pycparser
	CURRENT_PATH=`pwd`
	PATH_TO_C_RECONSTRUCTOR="${CURRENT_PATH}/pycparser_scripts/"
	cd  ${PATH_TO_C_RECONSTRUCTOR}
	${PATH_TO_C_RECONSTRUCTOR}/custom_c_generator.py ${CURRENT_PATH}/tests_for_stack_commands_supporting_ast_parsing.c > ${CURRENT_PATH}/1st_pass_of_C_reconstruction_of_tests.c
	mv ${PATH_TO_C_RECONSTRUCTOR}/semantic_data ${CURRENT_PATH}/semantic_data
	cd ${CURRENT_PATH}
	STR_FOR_CALLING_TESTS_THAT_USE_AST="label_for_tests_that_use_pycparser_ast:; \n {{{HEY PYTHON CALL FUNCTION WITH NEWER TEMPLATE: tests_that_use_pycparser_ast_main | HELPING ARGS FOR FUN CALL: |PARAMETERS TO CALL WITH: }}}; \n goto label_for_return_from_tests_that_use_pycparser_ast;"
	echo -e $STR_FOR_CALLING_TESTS_THAT_USE_AST >> ./1st_pass_of_C_reconstruction_of_tests.c
	./insert_stack_manipulation_commands_given_ast_of_functions.py ${NUM_OF_INTERLEAVED_KEYS} ${NUM_OF_GROUPED_USEFUL_STACK_BYTES} ${NUM_OF_MAC_BYTES} ${USE_STACK_CANARIES}
	cp 2nd_pass_of_C_reconstruction_of_tests.c 2nd_pass_of_C_reconstruction_of_tests_temp.c #take a backup of the 2nd_pass... because the global variables will be erased
	#tranfer the global declarations to headers_needed.h
	./transfer_c_reconstructor_globals.py 1 #erase the global declarations because the tests_with_new_stack will be filled with keysdestined for the struct that holds all the globals
	sed -i -e '/BASH PLEASE PLACE THE TESTS_FOR_STACK_COMMANDS_SUPPORTING_AST_PARSING.c HERE/r./2nd_pass_of_C_reconstruction_of_tests.c' tests_with_new_stack.c 
	STR_THAT_GOES_TO_TESTS_THAT_USE_AST_AND_BACK="\/\/goto the tests that use the pycarser ast and come back \ngoto label_for_tests_that_use_pycparser_ast; \n	label_for_return_from_tests_that_use_pycparser_ast: \n	;"
	sed  -i "/\/\/BASH PLEASE PLACE THE JUMP TO THE TESTS THAT USE PYCPARSER HERE/a ${STR_THAT_GOES_TO_TESTS_THAT_USE_AST_AND_BACK}" tests_with_new_stack.c 
	

	#now put all the things from heap_manager_functions_that_use_secure_stack.c inside tests_with_new_stack.c where it says "BASH PLEASE PLACE THE HEAP MANAGER FUNCTIONS HERE"
	sed -i -e '/BASH PLEASE PLACE THE HEAP MANAGER FUNCTIONS HERE/r./heap_manager_functions_that_use_secure_stack.c' tests_with_new_stack.c 
	sed -i -e '/BASH PLEASE PLACE MORE_TESTS_THAT_USE_NEW_STACK.c HERE/r./more_tests_that_use_new_stack.c' tests_with_new_stack.c 

echo "Inserted secure heap manager + more tests into the great function that contains the secure functions."


if [ "$INSERT_PARAMERERS_INTO_NEW_SECURE_STACK_AS_ARRAYS" == "1" ]; then
	#we now insert the code that manipulates the secure stack
	python3 insert_new_stack_commands_groups_of_vars_as_arrays.py $NUM_OF_INTERLEAVED_KEYS $NUM_OF_GROUPED_USEFUL_STACK_BYTES $NUM_OF_MAC_BYTES $STACK_SHOULD_GROW_TO_DECREASING_NUMBERS $USE_STACK_CANARIES
else
	echo "INSERT_PARAMERERS_INTO_NEW_SECURE_STACK_AS_ARRAYS !=1   !!!"
	exit
fi
echo "Changed defines."


echo "Copying header files, secure getters/setters, crypto functions and initializer..."
	#copying some template files (that do not have to be changed).
	cp ./template_files/crypto_and_mac_verify_functions_template.h crypto_and_mac_verify_functions.h
	cp ./template_files/secure_getters_setters_template.h secure_getters_setters.h
	cp ./template_files/secure_getters_setters_template.c secure_getters_setters.c
	cp ./template_files/crypto_functions_template.c crypto_functions.c
	cp ./template_files/initializer_template.c initializer.c
	cp ./template_files/secure_stack_manipulation_functions_template.c secure_stack_manipulation_functions.c
	cp ./template_files/heap_manager_new_unsafe_template.c heap_manager_new_unsafe.c
	cp ./template_files/heap_manager_new_secure_template.c heap_manager_new_secure.c
	cp ./template_files/mac_verification_functions_template.c mac_verification_functions.c
echo "Copied these files."

echo "Creating headers.h in which there are the global constants... "
	DO_STUFF_FOR_HEADERS_NEEDED_ONLY=1
	./insert_keys_and_macs_among_globals.py $NUM_OF_INTERLEAVED_KEYS $DECLARE_GLOBAL_KEYS_AS_AN_ARRAY $NUM_OF_GLOBAL_USEFUL_BYTES $NUM_OF_MAC_BYTES $SQEEZE_KEYS_WHEN_MACING $DO_STUFF_FOR_HEADERS_NEEDED_ONLY #use only for headers_needed.h
echo "Created headers.h in which there are the global constants."


echo "Compiling hash and encryption calculators, as well as the crypto initializer..."
	(cd crypto_algorithms; make >/dev/null ;
	 cp sha256_for_us.c ../sha256.c ; #the sha256 implementation
	 cp sha256.h ../ ; 
	 cd .. ; 
	 gcc -O3 -c sha256.c -fno-stack-protector #-mno-red-zone;
	 rm -f sha256.c sha256.h  #removing the sha stuff that we don't need.
	 gcc -O3 -c crypto_functions.c -lcrypto -Wno-div-by-zero -fno-stack-protector #-mno-red-zone
	 gcc -O3 -c mac_verification_functions.c -lcrypto -fno-stack-protector #-mno-red-zone
	 if [ "$ADD_CODE_ON_THE_FLY_VERIFICATION" -eq "1" ]; then
		#find the number of subtractions we have to do to fetch the return address (which is in the stack) in the verifier
		 FILE_TO_BE_CHANGED_O=crypto_functions.o #mac_verification_functions.o #todo: change it in the future
		 FILE_TO_BE_CHANGED_C=crypto_functions.c #mac_verification_functions.o
         FIRST_LINES_OF_VERIF_PROCEDURE="$(objdump -d $FILE_TO_BE_CHANGED_O | grep -A 20  '<do_verify_code_on_the_fly>:')"
         BYTE_DIFFERENCE=$(echo "$FIRST_LINES_OF_VERIF_PROCEDURE" | ./finder_of_stack_pointer_reduction.py)
		 STR_FOR_SED="s/movq 0x10(%rsp),%rax;/movq ${BYTE_DIFFERENCE}(%rsp),%rax;/g" #changing the offset from %rsp to get the return address
		 #replace and put the proper offset
		 sed -i "$STR_FOR_SED" $FILE_TO_BE_CHANGED_C
		 #and compile again
		 gcc -O3 -c $FILE_TO_BE_CHANGED_C -lcrypto -Wno-div-by-zero -fno-stack-protector #-mno-red-zone
	 fi
	 #compile the extra stuff that would be implemented in hardware
	 gcc -O3 -c secure_stack_manipulation_functions.c -lcrypto -fno-stack-protector #-mno-red-zone
	 gcc -O3 -c calc_mac_for_external_programs.c -lcrypto -fno-stack-protector #-mno-red-zone #this one just calcs a mac
	 gcc -O3 -c calc_mac_for_external_programs_faster.c -Wno-unused-result -lcrypto -fno-stack-protector #-mno-red-zone #this one just calcs a mac
	 gcc -O3 -c mac_time_calculator.c -lcrypto -fno-stack-protector #-mno-red-zone  #this one calculates mac times, for all possible sizes
	 gcc -O3 calc_mac_for_external_programs.o ./sha256.o ./crypto_functions.o -o calc_mac_for_external_programs -lcrypto -fno-stack-protector #-mno-red-zone
	 gcc -O3 calc_mac_for_external_programs_faster.o ./sha256.o ./crypto_functions.o -o calc_mac_for_external_programs_faster -lcrypto -fno-stack-protector #-mno-red-zone
	 gcc -O3 mac_time_calculator.o ./sha256.o ./crypto_functions.o -o mac_time_calculator -lcrypto -fno-stack-protector #-mno-red-zone
	 gcc -O3 initializer.c -c -mno-red-zone -fno-stack-protector #this one runs 
	 )
echo "Compiled hash and encryption calculators, and the crypto initializer."


echo "Inserting keys among global variables and copying some templates...."
#first we recreate headers_needed.h from its template. We do that because if we try to find globals in "headers_needed.h" twice, the second time there are no annotations for the globals.
eval $SET_PROPER_DEFINES
#tranfer the global declarations to headers_needed.h, again
cp 2nd_pass_of_C_reconstruction_of_tests_temp.c 2nd_pass_of_C_reconstruction_of_tests.c #restore the backup that holds the global variables, since they have been erased
./transfer_c_reconstructor_globals.py 1 #transfer the globals, and remove the original declarations in 2nd_pass_of_C_reconstruction_of_tests.c for good
#this secures the data segment
DO_STUFF_FOR_HEADERS_NEEDED_ONLY=0
./insert_keys_and_macs_among_globals.py $NUM_OF_INTERLEAVED_KEYS $DECLARE_GLOBAL_KEYS_AS_AN_ARRAY $NUM_OF_GLOBAL_USEFUL_BYTES $NUM_OF_MAC_BYTES $SQEEZE_KEYS_WHEN_MACING $DO_STUFF_FOR_HEADERS_NEEDED_ONLY # 0 means: do
echo "Inserted keys among global variables and copied some templates."




echo "Compiling secure getters and setters..."
	gcc -O3 -c secure_getters_setters.c -lcrypto -fno-stack-protector #-mno-red-zone #these getters and setters are normally implemented in hardware
	#gcc -O0 -c heap_manager_new_unsafe.c -lcrypto -mno-red-zone #no optimization!
echo "Compiled secure getters and setters."

echo "Compiling...."
make #compiling the actual program
echo "Compiled."

END_TIME_FIRST_PART=$(date +%s.%N)

echo "Splitting blocks and inserting jmps+NOPs into assembly..."
mkdir -p /run/shm/
ramtmp="$(mktemp -p /run/shm/)" #temporary file
#this java code splits blocks, inserts the nops (padded nops and for keyshares+macs) in assembly, as well as the jmps and the on-the-fly verification code
java -cp ../bin Secure_Assembly_v2 $NUM_OF_INTERLEAVED_KEYS $NUM_OF_CANARIES $NUM_OF_MAC_BYTES $WORLD_IN_WHICH_WE_ARE $NUM_OF_REQUESTED_USEFUL_BYTES_IN_CODE_CHUNK $ramtmp
if [ $? -eq 0 ]; then
		: #all ok
	else
		echo "Error. Could not split blocks and insert NOPs properly."
		rm -f $ramtmp
		exit
	fi
rm -f $ramtmp
echo "Blocks split and NOPs inserted."

END_TIME_FIRST_JAVA_PART=$(date +%s.%N)
#echo "Lines of main_program_sec.s: " `cat main_program_sec.s |wc -l`

echo "Assembling code with NOPs..."
make secure
echo "Assembled."

END_TIME_MAKE=$(date +%s.%N)

echo "Replacing NOPs with keys and macs..."
#first running the mac calculator so it is ready to receive commands...
#kill it first if it is running...
killall calc_mac_for_external_programs_faster 2>/dev/null
./calc_mac_for_external_programs_faster & #it will wait for macs to calculate (talks with the following java program)

#this java code searches through the binary, finds the jmps+rest of nops, and replaces the nops with keyshares and macs
java -cp ../bin Secure_Machine_Code_v2 $NUM_OF_INTERLEAVED_KEYS $NUM_OF_CANARIES $NUM_OF_GROUPED_USEFUL_BYTES $NUM_OF_TOTAL_BYTES_ALLOC_IN_HEAP $NUM_OF_GROUPED_USEFUL_STACK_BYTES $NUM_OF_TOTAL_STACK_BYTES_ALLOC $NUM_OF_MAC_BYTES $NUM_OF_REQUESTED_USEFUL_BYTES_IN_CODE_CHUNK $SQEEZE_KEYS_WHEN_MACING $WORLD_IN_WHICH_WE_ARE

#kill the program again if java segfaulted and did not send the termination number
killall calc_mac_for_external_programs_faster 2>/dev/null

echo "NOPs replaced with keys."
END_TIME_SECOND_JAVA_PART=$(date +%s.%N)

echo ""
echo "First part time:  $(echo "scale=3; ($END_TIME_FIRST_PART - $START_TIME_FIRST_PART)*1000/1000" | bc) seconds"
echo "First Java part time:  $(echo "scale=3; ($END_TIME_FIRST_JAVA_PART - $END_TIME_FIRST_PART)*1000/1000" | bc) seconds"
echo "make time:  $(echo "scale=3; ($END_TIME_MAKE - $END_TIME_FIRST_JAVA_PART)*1000/1000" | bc) seconds"
echo "Second Java part time:  $(echo "scale=3; ($END_TIME_SECOND_JAVA_PART - $END_TIME_MAKE)*1000/1000" | bc) seconds"
echo "Total compilation time:  $(echo "scale=3; ($END_TIME_SECOND_JAVA_PART - $START_TIME_FIRST_PART)*1000/1000" | bc) seconds"
