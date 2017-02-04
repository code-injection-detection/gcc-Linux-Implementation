#!/usr/bin/env python3

import sys
import copy
import platform
import gc

#takes an assembly output and finds the size of the chunks

filename="assembly_commands_for_parsing.txt"
number_of_nops_in_code=int(sys.argv[1])
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
with open(filename) as f:
	lines = f.readlines()
	lines= [x.strip() for x in lines]


#deleting lines until we reach the first function
while("Disassembly of section .text" not in lines[0]):
	del lines[0]
del lines[0]
		
nop_cnt=0
in_function=0
for linecnt,line in enumerate(lines):
	if line.strip()=="":
		continue
	if (len(line.split(" "))>1 and line.split(" ")[1].startswith("<")==True and line.split(" ")[1].startswith("<.UNIQUE")==False):
		linesout.append("NEXT_FUNCTION " + line.split(" ")[1].replace("<","").replace(">","").replace(":","")) #name of function
		continue
	#add the labels
	if (len(line.split(" "))>1 and line.split(" ")[1].startswith("<.UNIQUE")==True):
		#linesout.append(line) #nah don't add them
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
	
	if (cmd=="nop"):
		nop_cnt+=1
		if ((linecnt==len(lines)-1) or (get_next_cmd(lines[linecnt+1])!="nop") and nop_cnt>10):
			linesout.append("NOPS_HERE "+str(nop_cnt))
			nop_cnt=0
		if ((linecnt==len(lines)-1) or (get_next_cmd(lines[linecnt+1])!="nop") and nop_cnt<=10): #there are some nops that are alone...
			for i in range(nop_cnt):
				linesout.append("1 nop")
			nop_cnt=0
		continue
	else:
		nop_cnt=0
	
	linesout.append(str(num_of_bytes)+" "+str(cmd))


for line in linesout:
	print(line)
