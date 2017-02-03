#!/usr/bin/env python3

import sys
import copy
import platform
import gc

#takes an assembly output and finds the size of the chunks

num_of_chunks_given=1
filename="assembly_commands_for_parsing.txt"
number_of_nops_in_code=int(sys.argv[1])
linesout=[]



#read lines
with open(filename) as f:
	lines = f.readlines()
	lines= [x.strip() for x in lines]


#deleting lines until we reach the first function
while("Disassembly of section .text" not in lines[0]):
	del lines[0]
del lines[0]
		
nop_cnt=0
in_function=0
#find functions start
for line in lines:
	if (line.startswith("00000")):
		in_function=1
		continue
	elif line=="" :
		in_function=0
		linesout.append("NEXT_FUNCTION")
			
	if (in_function):
		address=line.split(":")[0].strip()
		bytes_and_cmd=line.split(":")[1].strip()
		bytes_in_hex=bytes_and_cmd.split('\t')[0].strip()
		num_of_bytes=len(bytes_in_hex.split(' '))
		
		if (len(bytes_and_cmd.split('\t'))<2): #it's a continuation of the former command
			former_num_of_bytes=int(linesout[-1].split(" ")[0])
			new_num_of_bytes=former_num_of_bytes+num_of_bytes
			linesout_parts=linesout[-1].split(" ")
			linesout[-1]=(str(new_num_of_bytes)+" ")
			for i in range(1,len(linesout_parts)):
				linesout[-1]+=linesout_parts[i]+" "
			continue
		else: #it's a new command
			cmd=bytes_and_cmd.split('\t')[1].strip()
		
		if (cmd=="nop"):
			nop_cnt+=1
		else:
			nop_cnt=0
		
		if nop_cnt==number_of_nops_in_code:
			for i in range(number_of_nops_in_code-1):
				del linesout[-1]
			linesout.append("NOPS_HERE")
		else:
			linesout.append(str(num_of_bytes)+" "+str(cmd))


for line in linesout:
	print(line)
