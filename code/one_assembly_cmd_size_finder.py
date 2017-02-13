#!/usr/bin/env python3

import sys

#takes one assembly cmd in "assembly_commands_for_parsing.txt" and finds its size

filename="assembly_commands_for_parsing.txt"
linesout=[]


def get_next_cmd(line):
	if line=="":
		return line
	else:
		address=line.split(":")[0].strip()
		bytes_and_cmd=line.split(":")[1].strip()
		bytes_in_hex=bytes_and_cmd.split('\t')[0].strip()
		num_of_bytes=len(bytes_in_hex.split(' '))
		cmd=bytes_and_cmd.split('\t')[1].strip()
		return cmd


#read lines
lines = sys.stdin.readlines()
lines= [x.strip() for x in lines]


#deleting lines until we reach the first function
while("Disassembly of section .text" not in lines[0]):
	del lines[0]
del lines[0]
		

for linecnt,line in enumerate(lines):
	if line.strip()=="":
		continue
	
	if (line.split(" ")[0].startswith("00000")):
		continue

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

	linesout.append(str(num_of_bytes)+" "+str(cmd))
	
	
for line in linesout:
	print(line.split(" ")[0])
