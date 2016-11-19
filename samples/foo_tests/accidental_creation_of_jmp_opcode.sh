#!/usr/bin/env bash

#script to prove that accildental generation of jmp <number of nops> opcode will result in error
#run it and wait. At less than 30 iterations, the error should appear. It's a matter of probability. 
#Now the problem is fixed though
cd ..
for ((i=1;i<=20000;i++)); do

	echo $i
	x=$(./automate.sh 110 1 1 8 10000 8 8000 8 1)
	a=$(echo $x | grep "Acc")
	if [ "$a" != "" ]; then
		echo $x
		exit
	fi
done
