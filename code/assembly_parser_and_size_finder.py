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
		linesplit_colon=line.split(":")
		address=linesplit_colon[0].strip()
		bytes_and_cmd=linesplit_colon[1].strip()
		bytes_and_cmd_split_tab=bytes_and_cmd.split('\t')
		bytes_in_hex=bytes_and_cmd_split_tab[0].strip()
		num_of_bytes=len(bytes_in_hex.split(' '))
		cmd=bytes_and_cmd_split_tab[1].strip()
		return cmd
		
def is_cmd_nop(line):
	if "\tnop" in line and line[-4:]=="\tnop":
		return True
	else:
		return False

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
		
	if (is_cmd_nop(line)==False):
		linesplit_space=line.split(" ")
		if (len(linesplit_space)>1 and linesplit_space[1].startswith("<")==True and linesplit_space[1].startswith("<.UNIQUE")==False):
			linesout.append("NEXT_FUNCTION " + linesplit_space[1].replace("<","").replace(">","").replace(":","")) #name of function
			continue
		#add the labels
		if (len(linesplit_space)>1 and linesplit_space[1].startswith("<.UNIQUE")==True):
			#linesout.append(line) #nah don't add them
			continue
		
		linesplit_colon=line.split(":")
		address=linesplit_colon[0].strip()
		bytes_and_cmd=linesplit_colon[1].strip()
		bytes_and_cmd_split_tab=bytes_and_cmd.split('\t')
		bytes_in_hex=bytes_and_cmd_split_tab[0].strip()
		num_of_bytes=len(bytes_in_hex.split(' '))
		
		if (len(bytes_and_cmd_split_tab)<2): #it's a continuation of the former command
			former_num_of_bytes=int(linesout[-1].split(" ")[0])
			new_num_of_bytes=former_num_of_bytes+num_of_bytes
			linesout_parts=linesout[-1].split(" ")
			linesout[-1]=(str(new_num_of_bytes)+" ")
			for i in range(1,len(linesout_parts)):
				linesout[-1]+=linesout_parts[i]+" "
			continue
		else: #it's a new command
			cmd=bytes_and_cmd_split_tab[1].strip()
	else:
		cmd="nop"
		num_of_bytes=1
	
	if (cmd=="nop"):
		nop_cnt+=1
		if ((linecnt==len(lines)-1) or ((is_cmd_nop(lines[linecnt+1])==False) and nop_cnt>10)):
			linesout.append("NOPS_HERE "+str(nop_cnt))
			nop_cnt=0
		if ((linecnt==len(lines)-1) or ((is_cmd_nop(lines[linecnt+1])==False) and nop_cnt<=10)): #there are some nops that are alone...
			for i in range(nop_cnt):
				linesout.append("1 nop")
			nop_cnt=0
		continue
	else:
		nop_cnt=0
	
	linesout.append(str(num_of_bytes)+" "+str(cmd))


for line in linesout:
	print(line)
