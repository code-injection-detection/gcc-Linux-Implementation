#!/usr/bin/env bash

#script to prove that accildental generation of jmp <number of nops> ofcode will result in error
#Now the problem is fixed though
for ((i=1;i<=100;i++)); do

	echo $i
	x=$(./automate.sh 5 1 4 1024)
	a=$(echo $x | grep "Acc")
	if [ "$a" != "" ]; then
		echo $x
		exit
	fi
done
