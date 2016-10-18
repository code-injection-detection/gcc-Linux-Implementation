#!/bin/bash

if [ "$#" -ne 7 ]; then
    echo "Please execute as following:"
    echo -e "\n$0 <a> <b> <c> <d> <e> <f> <g>"
    echo "Where: a=number_of_interleaved keys in code, b=number_of grouped instructions in code"
    echo "c=number of canary values before keyshares in code, to denote keyshare presence"
    echo "d=number of grouped useful bytes in heap memory, e=total bytes to (try to) pre-allocate in heap memory"
    echo "f=number of grouped useful bytes in stack memory, g=total bytes to (try to) pre-allocate in stack memory"
    echo "Example: $0 5 1 2 4 2048 4 1024"
    exit
fi

NUM_OF_INTERLEAVED_KEYS=5
NUM_OF_GROUPED_INSTRUCTIONS=1
NUM_OF_GROUPED_USEFUL_BYTES=4
NUM_OF_TOTAL_BYTES_ALLOC=2048
NUM_OF_CANARIES=2
NUM_OF_GROUPED_USEFUL_STACK_BYTES=4
NUM_OF_TOTAL_STACK_BYTES_ALLOC=1024

if [ "$#" -eq 7 ]; then
	NUM_OF_INTERLEAVED_KEYS=$1
	NUM_OF_GROUPED_INSTRUCTIONS=$2
	NUM_OF_CANARIES=$3
	NUM_OF_GROUPED_USEFUL_BYTES=$4
	NUM_OF_TOTAL_BYTES_ALLOC=$5
	NUM_OF_GROUPED_USEFUL_STACK_BYTES=$6
	NUM_OF_TOTAL_STACK_BYTES_ALLOC=$7
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
echo ""

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
python3 set_correct_defines.py $NUM_OF_INTERLEAVED_KEYS $NUM_OF_CANARIES $NUM_OF_GROUPED_USEFUL_BYTES $NUM_OF_TOTAL_BYTES_ALLOC $NUM_OF_GROUPED_USEFUL_STACK_BYTES $NUM_OF_TOTAL_STACK_BYTES_ALLOC
echo "Changed defines."

echo "Copying templates to target files"
cp ./template_files/memory_manager_template.c memory_manager.c
cp ./template_files/verification_procedure_template.c verification_procedure.c
cp ./template_files/stack_manager_template.c stack_manager.c
echo "Copied templates"

echo "Compiling...."
make
echo "Compiled."

echo "Inserting NOPs into assembly..."
java -cp ../bin Secure_Assembly $NUM_OF_INTERLEAVED_KEYS $NUM_OF_GROUPED_INSTRUCTIONS $NUM_OF_CANARIES
echo "NOPs inserted."

echo "Assembling code with NOPs..."
make secure
echo "Assembled."

echo "Replacing NOPs with keys..."
java -cp ../bin Secure_Machine_Code $NUM_OF_INTERLEAVED_KEYS $NUM_OF_CANARIES $NUM_OF_GROUPED_USEFUL_BYTES $NUM_OF_TOTAL_BYTES_ALLOC $NUM_OF_GROUPED_USEFUL_STACK_BYTES $NUM_OF_TOTAL_STACK_BYTES_ALLOC
echo "NOPs replaced with keys."

