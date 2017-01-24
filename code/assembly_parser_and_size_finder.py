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


#deleting lines until we reach the first function
while("Disassembly of section .text" not in lines[0]):
	del lines[0]
del lines[0]
		
		
in_function=0
#find functions start
for line in lines:
	if (line.startswith("00000")):
		in_function=1
		continue
	elif line=="" :
		in_function=0
		print("NEXT_FUNCTION")
			
	if (in_function):
		address=line.split(":")[0].strip()
		bytes_and_cmd=line.split(":")[1].strip()
		bytes_in_hex=bytes_and_cmd.split('\t')[0].strip()
		cmd=bytes_and_cmd.split('\t')[1].strip()
		num_of_bytes=len(bytes_in_hex.split(' '))
		print(num_of_bytes,cmd)
