#!/usr/bin/env python3

import sys
import copy

#verifies that the padded nops in assembly result in fixed size blocks


def RepresentsInt(s):
    try: 
        int(s)
        return True
    except ValueError:
        return False


assembly_sizes_filename="assembly_sizes.txt"
number_of_nops_in_code=int(sys.argv[1])
num_of_bytes_in_code_chunk=int(sys.argv[2])
add_code_on_the_fly_verification=int(sys.argv[3])
lines_sizes=[]

#read lines
with open(assembly_sizes_filename) as f1:
	lines_sizes = f1.readlines()
	lines_sizes= [x.replace("\n","") for x in lines_sizes]




j=0
#find the first "UNIQUE0" in the sizes
while j<len(lines_sizes) and ("UNIQUE0" not in lines_sizes[j+1].strip()):
	j=j+1

while j<len(lines_sizes):
	
	#iterate the sizes file until the "NOPS HERE"
	while j<len(lines_sizes) and ("NOPS_HERE" not in lines_sizes[j].strip()):
		j=j+1
	
	#find the sizes of the former commands
	#go back and add the sizes of the commands until the first number is not an int
	k=1
	total_size_of_cmds=0
	while k<=j:
		former_cmd_and_size=lines_sizes[j-k].strip()
		if (RepresentsInt(former_cmd_and_size.split(" ")[0])):	
			size_of_former_cmd=int(former_cmd_and_size.split(" ")[0])
			total_size_of_cmds+=size_of_former_cmd
			k+=1
		else:
			break
			
	nops_to_pad=num_of_bytes_in_code_chunk-total_size_of_cmds

	if nops_to_pad<0:
		sys.stderr.write('Error:code block size is smaller than the program can support. Increase it at least by '+str(-nops_to_pad)+'\n')
		sys.exit(-1)		
	
	all_nops_for_this_block=int(lines_sizes[j].strip().split(" ")[1])
	if (nops_to_pad+number_of_nops_in_code!=all_nops_for_this_block):
		sys.stderr.write("Error in nop count. The number of the total nops is not correct. Line: "+str(j)+"\n")
	
	j=j+1


sys.exit(0)
