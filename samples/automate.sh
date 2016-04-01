#!/bin/bash

if [ "$#" -ne 2   -a   "$#" -ne 4 ]; then
    echo "Please execute as following:"
    echo "$0 <number_of_interleaved keys in code> <number_of grouped instructions in code>"
    echo "Example: $0 5 1"
    echo -e "Or:\n$0 <a> <b> <c> <d>"
    echo "Where: a=number_of_interleaved keys in code, b=number_of grouped instructions in code"
    echo "c=number of grouped useful bytes in memory, d=total bytes to (try to) pre-allocate in memory"
    echo "Example: $0 5 1 4 1024"
    exit
fi

NUM_OF_INTERLEAVED_KEYS=5
NUM_OF_GROUPED_INSTRUCTIONS=1
NUM_OF_GROUPED_USEFUL_BYTES=4
NUM_OF_TOTAL_BYTES_ALLOC=1024

if [ "$#" -eq 2 ]; then
	NUM_OF_INTERLEAVED_KEYS=$1
	NUM_OF_GROUPED_INSTRUCTIONS=$2
fi

if [ "$#" -eq 4 ]; then
	NUM_OF_INTERLEAVED_KEYS=$1
	NUM_OF_GROUPED_INSTRUCTIONS=$2
	NUM_OF_GROUPED_USEFUL_BYTES=$3
	NUM_OF_TOTAL_BYTES_ALLOC=$4
fi

echo -n "NUM_OF_INTERLEAVED_KEYS: "
echo $NUM_OF_INTERLEAVED_KEYS
echo -n "NUM_OF_GROUPED_INSTRUCTIONS: "
echo $NUM_OF_GROUPED_INSTRUCTIONS
echo -n "NUM_OF_GROUPED_USEFUL_BYTES: "
echo $NUM_OF_GROUPED_USEFUL_BYTES
echo -n "NUM_OF_TOTAL_BYTES_ALLOC: "
echo $NUM_OF_TOTAL_BYTES_ALLOC
echo ""

echo "Changing defines according to input..."
python3 set_correct_defines.py $NUM_OF_INTERLEAVED_KEYS $NUM_OF_GROUPED_USEFUL_BYTES $NUM_OF_TOTAL_BYTES_ALLOC
echo "Changed defines."
echo "Compiling...."
make
echo "Compiled."
#cd ../src/
echo "Inserting NOPs into assembly..."
java -cp ../bin Secure_Assembly $NUM_OF_INTERLEAVED_KEYS $NUM_OF_GROUPED_INSTRUCTIONS
echo "NOPS inserted."
#cd ../samples/
echo "Assembling code with NOPs..."
make secure
echo "Assembled."
#cd ../src/
echo "Replacing NOPs with keys..."
java -cp ../bin Secure_Machine_Code $NUM_OF_INTERLEAVED_KEYS $NUM_OF_GROUPED_USEFUL_BYTES $NUM_OF_TOTAL_BYTES_ALLOC
echo "NOPs replaced with keys."
#cd ../samples/
