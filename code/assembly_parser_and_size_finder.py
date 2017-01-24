#!/usr/bin/env python3

import sys
import copy
import platform
import gc

#takes an assembly output and finds the size of the chunks

num_of_chunks_given=1
filename="assembly_commands_for_parsing.txt"

#read lines
with open(filename) as f:
	lines = f.readlines()
	lines= [x.strip() for x in lines]


in_function=0
#find functions start
for line in lines:
	if (line.startswith("00000"):
		in_function=1
		continue
	elif line=="" :
		in_function=0
			
	if (in_function):
		pass

