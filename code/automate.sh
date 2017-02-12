#!/bin/bash

SECURE_GLOBAL_VARIABLES_WITH_SEPARATE_KEYS=1
DECLARE_GLOBAL_KEYS_AS_AN_ARRAY=0
INSERT_PARAMERERS_INTO_NEW_SECURE_STACK_AS_ARRAYS=1
ADD_CODE_ON_THE_FLY_VERIFICATION=0
USE_FIXED_SIZE_CHUNKS_OF_CODE=0

if [[ ( "$#" -ne 9 ) && ( "$#" -ne 10) ]]; then
    echo "Please execute as following:"
    echo -e "\n$0 <a> <b> <c> <d> <e> <f> <g> <h> <i> <j>"
    echo "Where: a=number_of_interleaved keys in code, b=number_of grouped instructions in code"
    echo "c=number of canary values before keyshares in code, to denote keyshare presence"
    echo "d=number of grouped useful bytes in heap memory, e=total bytes to (try to) pre-allocate in heap memory"
    echo "f=number of grouped useful bytes in stack memory, g=total bytes to (try to) pre-allocate in stack memory"
    echo "h=number of grouped useful bytes between keyshares in global variables"
    echo "i=number of bytes for MACs"
	echo "j=size of a fixed chunk in code (optional, will not use fixed size if not given)."
	echo "if j is given, b is ignored"
    echo "Example: $0 32 1 3 4 25000 4 20000 8 16"
	echo "OR:"
	echo "Example: $0 32 1 3 4 25000 4 20000 8 16 16"
    exit
fi

NUM_OF_INTERLEAVED_KEYS=5
NUM_OF_GROUPED_INSTRUCTIONS=1
NUM_OF_GROUPED_USEFUL_BYTES=4
NUM_OF_TOTAL_BYTES_ALLOC=10000
NUM_OF_CANARIES=2
NUM_OF_GROUPED_USEFUL_STACK_BYTES=4
NUM_OF_TOTAL_STACK_BYTES_ALLOC=8000
NUM_OF_GLOBAL_USEFUL_BYTES=8
NUM_OF_MAC_BYTES=16
NUM_OF_BYTES_IN_CODE_CHUNK=20

if [ "$#" -eq 9 ]; then
	NUM_OF_INTERLEAVED_KEYS=$1
	NUM_OF_GROUPED_INSTRUCTIONS=$2
	NUM_OF_CANARIES=$3
	NUM_OF_GROUPED_USEFUL_BYTES=$4
	NUM_OF_TOTAL_BYTES_ALLOC=$5
	NUM_OF_GROUPED_USEFUL_STACK_BYTES=$6
	NUM_OF_TOTAL_STACK_BYTES_ALLOC=$7
	NUM_OF_GLOBAL_USEFUL_BYTES=$8
	NUM_OF_MAC_BYTES=$9
fi

if [ "$#" -eq 10 ]; then
	NUM_OF_INTERLEAVED_KEYS=$1
	NUM_OF_GROUPED_INSTRUCTIONS=$2
	NUM_OF_CANARIES=$3
	NUM_OF_GROUPED_USEFUL_BYTES=$4
	NUM_OF_TOTAL_BYTES_ALLOC=$5
	NUM_OF_GROUPED_USEFUL_STACK_BYTES=$6
	NUM_OF_TOTAL_STACK_BYTES_ALLOC=$7
	NUM_OF_GLOBAL_USEFUL_BYTES=$8
	NUM_OF_MAC_BYTES=$9
	NUM_OF_BYTES_IN_CODE_CHUNK=${10}
	USE_FIXED_SIZE_CHUNKS_OF_CODE=1
fi

echo -n "NUM_OF_INTERLEAVED_KEYS: "
echo $NUM_OF_INTERLEAVED_KEYS
echo -n "NUM_OF_GROUPED_INSTRUCTIONS: "
echo $NUM_OF_GROUPED_INSTRUCTIONS
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

if [ "$#" -eq 10 ]; then
	echo -n "NUM_OF_BYTES_IN_CODE_CHUNK: "
	echo $NUM_OF_BYTES_IN_CODE_CHUNK
fi

echo ""

if [ "$NUM_OF_GROUPED_INSTRUCTIONS" -gt "20" ]; then
	echo "Caution! The length of the grouped instructions should not be >253 bytes under no circumstances!"
	echo "Your value of grouped instructions is big enough to cause concerns. Exiting for safety."
	echo "If you REALLY want such a value (it is big however), change the automate.sh script."
	exit
fi

if [ "$NUM_OF_BYTES_IN_CODE_CHUNK" -lt "12" ]; then
	echo "Caution! The length of the code chunk should be bigger or equal than 12"
	echo "Your value of code chunk length is small enough to cause concerns. Exiting for safety."
	echo "If you REALLY want such a value (it is small however), change the automate.sh script."
	exit
fi

if [ "$NUM_OF_INTERLEAVED_KEYS" -ne "32" ]; then
	echo "Keys should be 32 bytes long (16 bytes [=128 bits] for each key). Other sizes currently not supported."
	exit
fi

#Checking if the .class files are present
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
fi


echo "Changing defines according to input..."
python3 set_correct_defines.py $NUM_OF_INTERLEAVED_KEYS $NUM_OF_CANARIES $NUM_OF_GROUPED_USEFUL_BYTES $NUM_OF_TOTAL_BYTES_ALLOC $NUM_OF_GROUPED_USEFUL_STACK_BYTES $NUM_OF_TOTAL_STACK_BYTES_ALLOC $NUM_OF_GLOBAL_USEFUL_BYTES $NUM_OF_MAC_BYTES $INSERT_PARAMERERS_INTO_NEW_SECURE_STACK_AS_ARRAYS $USE_FIXED_SIZE_CHUNKS_OF_CODE $NUM_OF_BYTES_IN_CODE_CHUNK
if [ "$INSERT_PARAMERERS_INTO_NEW_SECURE_STACK_AS_ARRAYS" == "0" ]; then
	python3 insert_new_stack_commands.py $NUM_OF_INTERLEAVED_KEYS $NUM_OF_GROUPED_USEFUL_STACK_BYTES $NUM_OF_MAC_BYTES
fi
if [ "$INSERT_PARAMERERS_INTO_NEW_SECURE_STACK_AS_ARRAYS" == "1" ]; then
	python3 insert_new_stack_commands_groups_of_vars_as_arrays.py $NUM_OF_INTERLEAVED_KEYS $NUM_OF_GROUPED_USEFUL_STACK_BYTES $NUM_OF_MAC_BYTES
fi
echo "Changed defines."

echo "Copying header files, secure getters/setters, crypto functions and initializer..."
	cp ./template_files/crypto_functions_template.h crypto_functions.h
	cp ./template_files/secure_getters_setters_template.h secure_getters_setters.h
	cp ./template_files/secure_getters_setters_template.c secure_getters_setters.c
	cp ./template_files/crypto_functions_template.c crypto_functions.c
	cp ./template_files/initializer_template.c initializer.c
echo "Copied these files."

echo "Compiling hash and encryption calculators, as well as the crypto initializer..."
	(cd crypto_algorithms; make >/dev/null ;
	 cp sha256_for_us.c ../sha256.c ; 
	 cp sha256.h ../ ; 
	 cd .. ; 
	 gcc -O3 -c sha256.c #-mno-red-zone;
	 rm -f sha256.c sha256.h  #removing the sha stuff that we don't need.
	 gcc -O3 -c crypto_functions.c -lcrypto #-mno-red-zone
	 #find the number of subtractions we have to do to fetch the return address in the verifier
	 LINE_OF_VERIFIER=$(objdump -d crypto_functions.o | grep -n "<do_verify_code_on_the_fly>:" | grep -Eo '^[0123456789]+')
	 LINE_OF_MOV=$(objdump -d crypto_functions.o | grep -C 10 -n "<do_verify_code_on_the_fly>:" | grep "mov    0x10(%rsp),%rax" | grep -Eo '^[0123456789]+')
	 NUM_OF_8_BYTE_PUSHES=$(( $LINE_OF_MOV-$LINE_OF_VERIFIER -1 ))
	 BYTE_DIFFERENCE=$(( NUM_OF_8_BYTE_PUSHES*8 ))
	 #replace and put the proper offset
	 sed -i 's/movq 0x10(%rsp),%rax;/movq 16(%rsp),%rax;/g' crypto_functions.c
	 #and compile again
	 gcc -O3 -c crypto_functions.c -lcrypto #-mno-red-zone
	 gcc -O3 -c calc_mac_for_external_programs.c -lcrypto #-mno-red-zone
	 gcc -O3 calc_mac_for_external_programs.o ./sha256.o ./crypto_functions.o -o calc_mac_for_external_programs -lcrypto #-mno-red-zone
	 gcc -O3 initializer.c -c -mno-red-zone
	 )
echo "Compiled hash and encryption calculators, and the crypto initializer."


if [ "$SECURE_GLOBAL_VARIABLES_WITH_SEPARATE_KEYS" != "0" ]; then
	echo "Inserting keys among global variables and copying templates...."
	./insert_keys_and_macs_among_globals.py $NUM_OF_INTERLEAVED_KEYS $DECLARE_GLOBAL_KEYS_AS_AN_ARRAY $NUM_OF_GLOBAL_USEFUL_BYTES $NUM_OF_MAC_BYTES
	echo "Inserted keys among global variables and copied templates."
else
	echo "Copying templates to target files"
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
	gcc -O3 -c secure_getters_setters.c
echo "Compiled secure getters and setters."

echo "Compiling...."
make
echo "Compiled."

echo "Inserting NOPs into assembly..."
java -cp ../bin Secure_Assembly $NUM_OF_INTERLEAVED_KEYS $NUM_OF_GROUPED_INSTRUCTIONS $NUM_OF_CANARIES $NUM_OF_MAC_BYTES $ADD_CODE_ON_THE_FLY_VERIFICATION $USE_FIXED_SIZE_CHUNKS_OF_CODE $NUM_OF_BYTES_IN_CODE_CHUNK
echo "NOPs inserted."

if [ "$#" -eq 10 ]; then
	echo "Padding the nops for each block of code in order to reach fixed size blocks..."
	#assembling and disassembling
	cat main_program_sec.s | as && objdump -d > assembly_commands_for_parsing.txt
	NUM_OF_NOPS=$(( $NUM_OF_CANARIES + 1 + $NUM_OF_INTERLEAVED_KEYS + $NUM_OF_MAC_BYTES ))
	#calculating sizes of commands
	./assembly_parser_and_size_finder.py $NUM_OF_NOPS > assembly_sizes.txt
	#padding bytes
	./nop_padder_for_fixed_size_code_blocks.py $NUM_OF_NOPS $NUM_OF_BYTES_IN_CODE_CHUNK $ADD_CODE_ON_THE_FLY_VERIFICATION > assembly_with_padded_nops.s
	mv assembly_with_padded_nops.s main_program_sec.s
	
	
	#verifying that blocks are fixed size
	#do the same thing with the new main_program_sec.s
	cat main_program_sec.s | as && objdump -d > assembly_commands_for_parsing.txt
	./assembly_parser_and_size_finder.py $NUM_OF_NOPS > assembly_sizes.txt
	./assembly_fixed_size_verifier.py $NUM_OF_NOPS $NUM_OF_BYTES_IN_CODE_CHUNK $ADD_CODE_ON_THE_FLY_VERIFICATION
	if [ $? -eq 0 ]; then
		: #all ok
	else
		echo "Error. Could not make the code blocks to be fixed size."
		exit
	fi
	
	#rm -f assembly_commands_for_parsing.txt assembly_sizes.txt
	echo "Padded the nops."
fi

echo "Assembling code with NOPs..."
make secure
echo "Assembled."


echo "Replacing NOPs with canaries,keys and macs..."
java -cp ../bin Secure_Machine_Code $NUM_OF_INTERLEAVED_KEYS $NUM_OF_CANARIES $NUM_OF_GROUPED_USEFUL_BYTES $NUM_OF_TOTAL_BYTES_ALLOC $NUM_OF_GROUPED_USEFUL_STACK_BYTES $NUM_OF_TOTAL_STACK_BYTES_ALLOC $NUM_OF_MAC_BYTES $ADD_CODE_ON_THE_FLY_VERIFICATION $USE_FIXED_SIZE_CHUNKS_OF_CODE $NUM_OF_BYTES_IN_CODE_CHUNK
echo "NOPs replaced with keys."

