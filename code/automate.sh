#!/bin/bash

#this script creates the actual secure program

SECURE_GLOBAL_VARIABLES_WITH_SEPARATE_KEYS=1  #default 1
DECLARE_GLOBAL_KEYS_AS_AN_ARRAY=0  #default 0
INSERT_PARAMERERS_INTO_NEW_SECURE_STACK_AS_ARRAYS=1 #default 1

ADD_CODE_ON_THE_FLY_VERIFICATION=1 #default 1
FORCE_NUM_OF_INSTRUCTIONS_OVER_NUM_OF_BYTES=0 #for fixed size length, the default config (0) is to just have a fixed size code block without caring to complete the number of instructions given per block. If it is set to 1, then every block should have X instructions, or else an error occurs.
DO_NOT_MAC_WHAT_WHE_ADD_IN_CODE=1 #ignore our additions to the code (like verification procedure, jmps etc) when calculating mac. Default 1
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
IGNORE_MACS_EVEN_IF_THERE_ARE_MAC_BYTES=0  #put the macs in the memory, but do absolutely nothing about  (default 0)
IGNORE_MACS_LAST_MOMENT_EVEN_IF_THERE_ARE_MAC_BYTES=0 #put the macs in memory, include the on the fly verification code, and when it comes to calculate them, don't do it (default 0)
FORCE_CODE_BLOCK_SPLIT_ON_LABELS_AND_CALLS=0 #use it with IGNORE_MACS_EVEN_IF_THERE_ARE_MAC_BYTES=1, the blocks are split but no verification code added
TREAT_LOOP_COUNTERS_AS_UNSECURED_VARIABLES=0 #don't call the secure getters and setters for the loop counters. It seems wrong to not call them. Default 0.
SQEEZE_KEYS_WHEN_MACING=1  #Reduces the size of the keys from 32 bytes to 16 when calculating mac. Default 1
COUNT_MAC_INVOCATIONS=0 #Ignores mac correctness and reports mac invocations. Default 0.
ADD_THE_PADDED_NOPS_IN_THE_MAC_IN_FIXED_SIZE=1 #takes into account the padded nops in the mac calculation. Default 1.
USE_CODE_CACHE_WITH_UNSPLIT_BLOCKS=1 #The code blocks that are cached are cached if being unsplit. Default 0.
SET_AS_GIVEN_THAT_EVERYTHING_MACED_WILL_BE_FIXED_AND_MULTIPLE_OF_16=0 #this means that we can disable length prepending and padding. Default 0.
WHEN_SPLITTING_BLOCKS_DO_NOT_INVOKE_VERIF_UNLESS_ON_LABEL=1 #Does not calculate the mac when splitting blocks due to label encounter and we continue normal execution. Only calcs mac when we jump to that label.
SPLIT_THE_BLOCKS_WHEN_THE_SECURE_CPU_WOULD=1 #It changes the values of WHEN_SPLITTING_BLOCKS_DO_NOT_INVOKE_VERIF_UNLESS_ON_LABEL and USE_CODE_CACHE_WITH_UNSPLIT_BLOCKS to hold its value. Splits blocks when encountering call or label, but calculates the mac on the unsplit block.
SIZE_OF_JMP_COMMAND=5 #jmp.d32 <label>
BYTES_FOR_INSTR_LEN=2 #the number of bytes after the canaries that hold the size of the verif+useful bytes+the jmp bytes
OVERHEAD_OF_VERIFICATION=7 #7 for fixed size, 14 for variable size (obsolete)
USING_LARGE_JMPS_AND_CODE_BLOCKS_WITH_3_WORLDS=1 #using the new implementation which restricts the variables that we have. The worlds are: no macs, ignoring macs, splitting and caching like secure cpu would
VERIFY_EVERYTHING=1 #the third world
USE_NEW_SECURE_HEAP=0 # use the new secure heap implementation. 1-> use it, but do not use the secured global variables for its position/size etc. 2-> use it, with the secured global variables


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
	echo "Example: $0 32 3 16 50000 16 40000 16 16 28"
    exit
fi

NUM_OF_INTERLEAVED_KEYS=32 #The number of bytes for both the keyshares in a block
NUM_OF_GROUPED_INSTRUCTIONS=80 #grouped code instructions per code block (obsolete)
NUM_OF_GROUPED_USEFUL_BYTES=16 #the useful bytes in a heap block
NUM_OF_TOTAL_BYTES_ALLOC=10000 #the size of the secure heap
NUM_OF_CANARIES=3 
NUM_OF_GROUPED_USEFUL_STACK_BYTES=16 #the useful bytes in a stack block
NUM_OF_TOTAL_STACK_BYTES_ALLOC=8000 #the size of the secure stack
NUM_OF_GLOBAL_USEFUL_BYTES=16  #the useful bytes in a data segment block
NUM_OF_MAC_BYTES=16 
USE_FIXED_SIZE_CHUNKS_OF_CODE=1 #should we use fixed chunks in code blocks? The preferred option is yes.
NUM_OF_BYTES_IN_CODE_CHUNK=28 #Maximum value for code (verification code + useful code + jmps) per code block. The block may be split if we encounter label or call.

#set the values

if [ "$#" -eq 9 ]; then
	NUM_OF_INTERLEAVED_KEYS=$1
	NUM_OF_CANARIES=$2
	NUM_OF_GROUPED_USEFUL_BYTES=$3
	NUM_OF_TOTAL_BYTES_ALLOC=$4
	NUM_OF_GROUPED_USEFUL_STACK_BYTES=$5
	NUM_OF_TOTAL_STACK_BYTES_ALLOC=$6
	NUM_OF_GLOBAL_USEFUL_BYTES=$7
	NUM_OF_MAC_BYTES=$8
	NUM_OF_BYTES_IN_CODE_CHUNK=$9  #${10} for a tenth parameter
	USE_FIXED_SIZE_CHUNKS_OF_CODE=1
fi

echo -n "NUM_OF_INTERLEAVED_KEYS: "
echo $NUM_OF_INTERLEAVED_KEYS
echo -n "NUM_OF_GROUPED_USEFUL_BYTES: "
echo $NUM_OF_GROUPED_USEFUL_BYTES
echo -n "NUM_OF_TOTAL_BYTES_ALLOC: "
echo $NUM_OF_TOTAL_BYTES_ALLOC
echo -n "NUM_OF_CANARIES: "
echo $NUM_OF_CANARIES
echo -n "NUM_OF_GROUPED_USEFUL_STACK_BYTES: "
echo $NUM_OF_GROUPED_USEFUL_STACK_BYTES
echo -n "NUM_OF_TOTAL_STACK_BYTES_ALLOC: "
echo $NUM_OF_TOTAL_STACK_BYTES_ALLOC
echo -n "SECURE_GLOBAL_VARIABLES_WITH_SEPARATE_KEYS: "
echo $SECURE_GLOBAL_VARIABLES_WITH_SEPARATE_KEYS
echo -n "NUM_OF_GLOBAL_USEFUL_BYTES: "
echo $NUM_OF_GLOBAL_USEFUL_BYTES
echo -n "NUM_OF_MAC_BYTES: "
echo $NUM_OF_MAC_BYTES
echo -n "NUM_OF_BYTES_IN_CODE_CHUNK: "
echo $NUM_OF_BYTES_IN_CODE_CHUNK

echo ""


if [ "$NUM_OF_BYTES_IN_CODE_CHUNK" -lt "28" ]; then
	echo "Caution! The length of the code chunk should be bigger or equal than 28"
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
	if [ ! -f ../bin/Secure_Assembly.class ]; then #if .class file is not there
		echo "Secure_Assembly class file not found!"
		echo "The script will do the job for you. Make sure Java compiler is installed."
		echo "Compiling Java class..."
		javac ../src/Secure_Assembly.java
		mv ../src/Secure_Assembly.class ../bin/
		echo "Compiled Java class."
	else if [ ../bin/Secure_Assembly.class -ot ../src/Secure_Assembly.java ]; then #if the class file is older than the code
			echo "Secure_Assembly class file is out of date!"
			echo "The script will do the job for you. Make sure Java compiler is installed."
			echo "Compiling Java class..."
			javac ../src/Secure_Assembly.java
			mv ../src/Secure_Assembly.class ../bin/
			echo "Compiled Java class."
		 fi
	fi
	
	if [ ! -f ../bin/Secure_Assembly_new.class ]; then #if .class file is not there
		echo "Secure_Assembly_new class file not found!"
		echo "The script will do the job for you. Make sure Java compiler is installed."
		echo "Compiling Java class..."
		javac ../src/Secure_Assembly_new.java
		mv ../src/Secure_Assembly_new.class ../bin/
		echo "Compiled Java class."
	else if [ ../bin/Secure_Assembly_new.class -ot ../src/Secure_Assembly_new.java ]; then #if the class file is older than the code
			echo "Secure_Assembly_new class file is out of date!"
			echo "The script will do the job for you. Make sure Java compiler is installed."
			echo "Compiling Java class..."
			javac ../src/Secure_Assembly_new.java
			mv ../src/Secure_Assembly_new.class ../bin/
			echo "Compiled Java class."
		 fi
	fi
	
	if [ ! -f ../bin/Secure_Machine_Code.class ]; then #if .class file is not there
		echo "Secure_Machine_Code class file not found!"
		echo "The script will do the job for you. Make sure Java compiler is installed."
		echo "Compiling Java class..."
		javac ../src/Secure_Machine_Code.java
		mv ../src/Secure_Machine_Code.class ../bin/
		echo "Compiled Java class."
	else if [ ../bin/Secure_Machine_Code.class -ot ../src/Secure_Machine_Code.java ]; then #if the class file is older than the code
		echo "Secure_Machine_Code class file is out of date!"
		echo "The script will do the job for you. Make sure Java compiler is installed."
		echo "Compiling Java class..."
		javac ../src/Secure_Machine_Code.java
		mv ../src/Secure_Machine_Code.class ../bin/
		echo "Compiled Java class."
		fi
	fi
	
	if [ ! -f ../bin/Secure_Machine_Code_new.class ]; then #if .class file is not there
		echo "Secure_Machine_Code_new class file not found!"
		echo "The script will do the job for you. Make sure Java compiler is installed."
		echo "Compiling Java class..."
		javac ../src/Secure_Machine_Code_new.java
		mv ../src/Secure_Machine_Code_new.class ../bin/
		echo "Compiled Java class."
	else if [ ../bin/Secure_Machine_Code_new.class -ot ../src/Secure_Machine_Code_new.java ]; then #if the class file is older than the code
		echo "Secure_Machine_Code_new class file is out of date!"
		echo "The script will do the job for you. Make sure Java compiler is installed."
		echo "Compiling Java class..."
		javac ../src/Secure_Machine_Code_new.java
		mv ../src/Secure_Machine_Code_new.class ../bin/
		echo "Compiled Java class."
		fi
	fi
	
fi

#removing potentially old stuff...
rm -f addresses_of_unsplit_blocks.txt

START_TIME_FIRST_PART=$(date +%s.%N)
echo "Changing defines according to input..."
#this script changes the defines according to user input, so that se secure program knows the constants as headers.
SET_PROPER_DEFINES='python3 set_correct_defines.py $NUM_OF_INTERLEAVED_KEYS $NUM_OF_CANARIES $NUM_OF_GROUPED_USEFUL_BYTES $NUM_OF_TOTAL_BYTES_ALLOC $NUM_OF_GROUPED_USEFUL_STACK_BYTES $NUM_OF_TOTAL_STACK_BYTES_ALLOC $NUM_OF_GLOBAL_USEFUL_BYTES $NUM_OF_MAC_BYTES $INSERT_PARAMERERS_INTO_NEW_SECURE_STACK_AS_ARRAYS $USE_FIXED_SIZE_CHUNKS_OF_CODE $NUM_OF_BYTES_IN_CODE_CHUNK $DO_NOT_MAC_WHAT_WHE_ADD_IN_CODE $ADD_CODE_ON_THE_FLY_VERIFICATION $USE_INLINE_CODE_FOR_DELAYS $NUM_OF_CACHED_BLOCKS_OF_CODE $NUM_OF_CACHED_BLOCKS_OF_DATA $IGNORE_MACS_EVEN_IF_THERE_ARE_MAC_BYTES $CODE_CACHE_TYPE $DATA_CACHE_TYPE $CODE_CACHE_SET_ASSOSIATIVE_SIZE $DATA_CACHE_SET_ASSOSIATIVE_SIZE $IGNORE_MACS_LAST_MOMENT_EVEN_IF_THERE_ARE_MAC_BYTES $TREAT_LOOP_COUNTERS_AS_UNSECURED_VARIABLES $SQEEZE_KEYS_WHEN_MACING $COUNT_MAC_INVOCATIONS $ADD_THE_PADDED_NOPS_IN_THE_MAC_IN_FIXED_SIZE $FORCE_CODE_BLOCK_SPLIT_ON_LABELS_AND_CALLS $USE_CODE_CACHE_WITH_UNSPLIT_BLOCKS $SET_AS_GIVEN_THAT_EVERYTHING_MACED_WILL_BE_FIXED_AND_MULTIPLE_OF_16 $WHEN_SPLITTING_BLOCKS_DO_NOT_INVOKE_VERIF_UNLESS_ON_LABEL $SIZE_OF_JMP_COMMAND $OVERHEAD_OF_VERIFICATION $USING_LARGE_JMPS_AND_CODE_BLOCKS_WITH_3_WORLDS $BYTES_FOR_INSTR_LEN $VERIFY_EVERYTHING $USE_NEW_SECURE_HEAP'
eval $SET_PROPER_DEFINES

echo "Inserting secure heap manager + more tests into the great function that contains the secure functions..."
	cp ./template_files/heap_manager_functions_that_use_secure_stack_template.c heap_manager_functions_that_use_secure_stack.c
	cp ./template_files/tests_with_new_stack_template.c tests_with_new_stack.c
	cp ./template_files/more_tests_that_use_new_stack_template.c more_tests_that_use_new_stack.c
	#now put all the things from heap_manager_functions_that_use_secure_stack.c inside tests_with_new_stack.c where it says "BASH PLEASE PLACE THE HEAP MANAGER FUNCTIONS HERE"
	sed -i -e '/BASH PLEASE PLACE THE HEAP MANAGER FUNCTIONS HERE/r./heap_manager_functions_that_use_secure_stack.c' tests_with_new_stack.c 
	sed -i -e '/BASH PLEASE PLACE MORE_TESTS_THAT_USE_NEW_STACK.c HERE/r./more_tests_that_use_new_stack.c' tests_with_new_stack.c 
echo "Inserted secure heap manager + more tests into the great function that contains the secure functions."

if [ "$INSERT_PARAMERERS_INTO_NEW_SECURE_STACK_AS_ARRAYS" == "0" ]; then
	#we now insert the code that manipulates the secure stack
	python3 insert_new_stack_commands.py $NUM_OF_INTERLEAVED_KEYS $NUM_OF_GROUPED_USEFUL_STACK_BYTES $NUM_OF_MAC_BYTES
fi
if [ "$INSERT_PARAMERERS_INTO_NEW_SECURE_STACK_AS_ARRAYS" == "1" ]; then
	#we now insert the code that manipulates the secure stack
	python3 insert_new_stack_commands_groups_of_vars_as_arrays.py $NUM_OF_INTERLEAVED_KEYS $NUM_OF_GROUPED_USEFUL_STACK_BYTES $NUM_OF_MAC_BYTES
fi
echo "Changed defines."


echo "Copying header files, secure getters/setters, crypto functions and initializer..."
	#copying some template files (that do not have to be changed).
	cp ./template_files/crypto_functions_template.h crypto_functions.h
	cp ./template_files/secure_getters_setters_template.h secure_getters_setters.h
	cp ./template_files/secure_getters_setters_template.c secure_getters_setters.c
	cp ./template_files/crypto_functions_template.c crypto_functions.c
	cp ./template_files/initializer_template.c initializer.c
	cp ./template_files/secure_stack_manipulation_functions_template.c secure_stack_manipulation_functions.c
	cp ./template_files/heap_manager_new_unsafe_template.c heap_manager_new_unsafe.c
	cp ./template_files/heap_manager_new_secure_template.c heap_manager_new_secure.c
echo "Copied these files."

echo "Creating headers.h for compilation of encryption calculators, as well as the crypto initializer... "
	./insert_keys_and_macs_among_globals.py $NUM_OF_INTERLEAVED_KEYS $DECLARE_GLOBAL_KEYS_AS_AN_ARRAY $NUM_OF_GLOBAL_USEFUL_BYTES $NUM_OF_MAC_BYTES $SQEEZE_KEYS_WHEN_MACING 1 #use only for headers_needed.h
echo "Created headers.h for compilation of encryption calculators, as well as the crypto initializer."


echo "Compiling hash and encryption calculators, as well as the crypto initializer..."
	(cd crypto_algorithms; make >/dev/null ;
	 cp sha256_for_us.c ../sha256.c ; #the sha256 implementation
	 cp sha256.h ../ ; 
	 cd .. ; 
	 gcc -O3 -c sha256.c #-mno-red-zone;
	 rm -f sha256.c sha256.h  #removing the sha stuff that we don't need.
	 gcc -O3 -c crypto_functions.c -lcrypto -Wno-div-by-zero #-mno-red-zone
	 if [ "$ADD_CODE_ON_THE_FLY_VERIFICATION" -eq "1" ]; then
		#find the number of subtractions we have to do to fetch the return address (which is in the stack) in the verifier
         FIRST_LINES_OF_VERIF_PROCEDURE="$(objdump -d crypto_functions.o | grep -A 20  '<do_verify_code_on_the_fly>:')"
         BYTE_DIFFERENCE=$(echo "$FIRST_LINES_OF_VERIF_PROCEDURE" | ./finder_of_stack_pointer_reduction.py)
		 #old, wrong way sometimes:
		 #LINE_OF_VERIFIER=$(objdump -d crypto_functions.o | grep -n "<do_verify_code_on_the_fly>:" | grep -Eo '^[0123456789]+')
		 #LINE_OF_MOV=$(objdump -d crypto_functions.o | grep -C 10 -n "<do_verify_code_on_the_fly>:" | grep "mov    0x10(%rsp),%rax" | grep -Eo '^[0123456789]+')
		 #NUM_OF_8_BYTE_PUSHES=$(( $LINE_OF_MOV-$LINE_OF_VERIFIER -1 ))
		 #BYTE_DIFFERENCE=$(( NUM_OF_8_BYTE_PUSHES*8 ))
		 STR_FOR_SED="s/movq 0x10(%rsp),%rax;/movq ${BYTE_DIFFERENCE}(%rsp),%rax;/g" #changing the offset from %rsp to get the return address
		 #replace and put the proper offset
		 sed -i "$STR_FOR_SED" crypto_functions.c
		 #and compile again
		 gcc -O3 -c crypto_functions.c -lcrypto -Wno-div-by-zero #-mno-red-zone
	 fi
	 #compile the extra stuff that would be implemented in hardware
	 gcc -O3 -c secure_stack_manipulation_functions.c -lcrypto #-mno-red-zone
	 gcc -O3 -c calc_mac_for_external_programs.c -lcrypto #-mno-red-zone #this one just calcs a mac
	 gcc -O3 -c mac_time_calculator.c -lcrypto #-mno-red-zone  #this one calculates mac times, for all possible sizes
	 gcc -O3 calc_mac_for_external_programs.o ./sha256.o ./crypto_functions.o -o calc_mac_for_external_programs -lcrypto #-mno-red-zone
	 gcc -O3 mac_time_calculator.o ./sha256.o ./crypto_functions.o -o mac_time_calculator -lcrypto #-mno-red-zone
	 gcc -O3 initializer.c -c -mno-red-zone #this one runs 
	 )
echo "Compiled hash and encryption calculators, and the crypto initializer."


if [ "$SECURE_GLOBAL_VARIABLES_WITH_SEPARATE_KEYS" != "0" ]; then
	echo "Inserting keys among global variables and copying some templates...."
	#first we recreate headers_needed.h from it template. We do that because if we try to find globals in "headers_needed.h" twice, the second time there are no annotations fot the globals.
	eval $SET_PROPER_DEFINES
	#this secures the data segment
	./insert_keys_and_macs_among_globals.py $NUM_OF_INTERLEAVED_KEYS $DECLARE_GLOBAL_KEYS_AS_AN_ARRAY $NUM_OF_GLOBAL_USEFUL_BYTES $NUM_OF_MAC_BYTES $SQEEZE_KEYS_WHEN_MACING 0 
	echo "Inserted keys among global variables and copied some templates."
else
	echo "Copying templates to target files"
	#copying the rest of the templates
	#headers_needed and general_tests are missing, they are taken care of the first python script
	cp ./template_files/memory_manager_template.c memory_manager.c
	cp ./template_files/verification_procedure_template.c verification_procedure.c
	cp ./template_files/stack_manager_template.c stack_manager.c
	cp ./template_files/functions_needed_header_template.c functions_needed_header.c
	cp ./template_files/functions_needed_footer_template.c functions_needed_footer.c
	cp ./template_files/main_program_template.c main_program.c
	cp ./template_files/memory_manager_test_suite_template.c memory_manager_test_suite.c
	cp ./template_files/stack_manager_test_suite_template.c stack_manager_test_suite.c
	cp ./template_files/mac_handling_functions_template.c mac_handling_functions.c
	echo "Copied templates"
fi



echo "Compiling secure getters and setters..."
	gcc -O3 -c secure_getters_setters.c -lcrypto #-mno-red-zone #these getters and setters are normally implemented in hardware
	#gcc -O0 -c heap_manager_new_unsafe.c -lcrypto -mno-red-zone #no optimization!
echo "Compiled secure getters and setters."

echo "Compiling...."
make #compiling the actual program
echo "Compiled."

END_TIME_FIRST_PART=$(date +%s.%N)

echo "Inserting NOPs into assembly..."
mkdir -p /run/shm/
ramtmp="$(mktemp -p /run/shm/)" #temporary file
#this java code inserts the nops in assembly, as well as the jmps and the on-the-fly verification code
if [ "$BYTES_FOR_INSTR_LEN" == "1" ]; then
	java -cp ../bin Secure_Assembly $NUM_OF_INTERLEAVED_KEYS $NUM_OF_GROUPED_INSTRUCTIONS $NUM_OF_CANARIES $NUM_OF_MAC_BYTES $ADD_CODE_ON_THE_FLY_VERIFICATION $USE_FIXED_SIZE_CHUNKS_OF_CODE $NUM_OF_BYTES_IN_CODE_CHUNK $FORCE_NUM_OF_INSTRUCTIONS_OVER_NUM_OF_BYTES $ramtmp $IGNORE_MACS_EVEN_IF_THERE_ARE_MAC_BYTES $FORCE_CODE_BLOCK_SPLIT_ON_LABELS_AND_CALLS $WHEN_SPLITTING_BLOCKS_DO_NOT_INVOKE_VERIF_UNLESS_ON_LABEL $SPLIT_THE_BLOCKS_WHEN_THE_SECURE_CPU_WOULD
else
	java -cp ../bin Secure_Assembly_new $NUM_OF_INTERLEAVED_KEYS $NUM_OF_CANARIES $NUM_OF_MAC_BYTES $ADD_CODE_ON_THE_FLY_VERIFICATION $NUM_OF_BYTES_IN_CODE_CHUNK $ramtmp $IGNORE_MACS_EVEN_IF_THERE_ARE_MAC_BYTES $SPLIT_THE_BLOCKS_WHEN_THE_SECURE_CPU_WOULD $VERIFY_EVERYTHING
fi
if [ $? -eq 0 ]; then
		: #all ok
	else
		echo "Error. Could not insert NOPs properly."
		rm -f $ramtmp
		exit
	fi
rm -f $ramtmp
echo "NOPs inserted."

END_TIME_FIRST_JAVA_PART=$(date +%s.%N)
#echo "Lines of main_program_sec.s: " `cat main_program_sec.s |wc -l`


echo "Padding the nops for each block of code in order to reach fixed size blocks..."
#assembling and disassembling
cat main_program_sec.s | as && objdump -d > assembly_commands_for_parsing.txt
NUM_OF_NOPS=$(( $NUM_OF_CANARIES + $BYTES_FOR_INSTR_LEN + $NUM_OF_INTERLEAVED_KEYS + $NUM_OF_MAC_BYTES ))
#calculating sizes of commands
./assembly_parser_and_size_finder.py $NUM_OF_NOPS > assembly_sizes.txt
#padding bytes
./nop_padder_for_fixed_size_code_blocks.py $NUM_OF_NOPS $NUM_OF_BYTES_IN_CODE_CHUNK $ADD_CODE_ON_THE_FLY_VERIFICATION > assembly_with_padded_nops.s
mv assembly_with_padded_nops.s main_program_sec.s


#verifying that blocks are fixed size
#do the same thing with the new main_program_sec.s
cat main_program_sec.s | as && objdump -d > assembly_commands_for_parsing.txt
./assembly_parser_and_size_finder.py $NUM_OF_NOPS > assembly_sizes.txt
./assembly_fixed_size_verifier.py $NUM_OF_NOPS $NUM_OF_BYTES_IN_CODE_CHUNK $ADD_CODE_ON_THE_FLY_VERIFICATION $NUM_OF_CANARIES $NUM_OF_INTERLEAVED_KEYS $NUM_OF_MAC_BYTES
if [ $? -eq 0 ]; then
	: #all ok
else
	echo "Error. Could not make the code blocks to be fixed size."
	exit
fi

#rm -f assembly_commands_for_parsing.txt assembly_sizes.txt
echo "Padded the nops."


echo "Assembling code with NOPs..."
make secure
echo "Assembled."

END_TIME_NOPS_PADDED_AND_MAKE=$(date +%s.%N)

echo "Replacing NOPs with canaries,keys and macs..."
#this java code searches through the binary, finds the jmps+rest of nops, and replaces the nops with canaries,padded nops (in case of fixed length), keys and macs
if [ "$BYTES_FOR_INSTR_LEN" == "1" ]; then
	java -cp ../bin Secure_Machine_Code $NUM_OF_INTERLEAVED_KEYS $NUM_OF_CANARIES $NUM_OF_GROUPED_USEFUL_BYTES $NUM_OF_TOTAL_BYTES_ALLOC $NUM_OF_GROUPED_USEFUL_STACK_BYTES $NUM_OF_TOTAL_STACK_BYTES_ALLOC $NUM_OF_MAC_BYTES $ADD_CODE_ON_THE_FLY_VERIFICATION $USE_FIXED_SIZE_CHUNKS_OF_CODE $NUM_OF_BYTES_IN_CODE_CHUNK $DO_NOT_MAC_WHAT_WHE_ADD_IN_CODE $IGNORE_MACS_EVEN_IF_THERE_ARE_MAC_BYTES $SQEEZE_KEYS_WHEN_MACING $ADD_THE_PADDED_NOPS_IN_THE_MAC_IN_FIXED_SIZE $FORCE_CODE_BLOCK_SPLIT_ON_LABELS_AND_CALLS $WHEN_SPLITTING_BLOCKS_DO_NOT_INVOKE_VERIF_UNLESS_ON_LABEL
else
	java -cp ../bin Secure_Machine_Code_new $NUM_OF_INTERLEAVED_KEYS $NUM_OF_CANARIES $NUM_OF_GROUPED_USEFUL_BYTES $NUM_OF_TOTAL_BYTES_ALLOC $NUM_OF_GROUPED_USEFUL_STACK_BYTES $NUM_OF_TOTAL_STACK_BYTES_ALLOC $NUM_OF_MAC_BYTES $ADD_CODE_ON_THE_FLY_VERIFICATION $NUM_OF_BYTES_IN_CODE_CHUNK $DO_NOT_MAC_WHAT_WHE_ADD_IN_CODE $IGNORE_MACS_EVEN_IF_THERE_ARE_MAC_BYTES $SQEEZE_KEYS_WHEN_MACING $ADD_THE_PADDED_NOPS_IN_THE_MAC_IN_FIXED_SIZE $SPLIT_THE_BLOCKS_WHEN_THE_SECURE_CPU_WOULD $VERIFY_EVERYTHING
fi
echo "NOPs replaced with keys."
END_TIME_SECOND_JAVA_PART=$(date +%s.%N)

echo ""
echo "First part time:  $(echo "scale=3; ($END_TIME_FIRST_PART - $START_TIME_FIRST_PART)*1000/1000" | bc) seconds"
echo "First Java part time:  $(echo "scale=3; ($END_TIME_FIRST_JAVA_PART - $END_TIME_FIRST_PART)*1000/1000" | bc) seconds"
echo "Padding NOPs & make time:  $(echo "scale=3; ($END_TIME_NOPS_PADDED_AND_MAKE - $END_TIME_FIRST_JAVA_PART)*1000/1000" | bc) seconds"
echo "Second Java part time:  $(echo "scale=3; ($END_TIME_SECOND_JAVA_PART - $END_TIME_NOPS_PADDED_AND_MAKE)*1000/1000" | bc) seconds"
echo "Total compilation time:  $(echo "scale=3; ($END_TIME_SECOND_JAVA_PART - $START_TIME_FIRST_PART)*1000/1000" | bc) seconds"
