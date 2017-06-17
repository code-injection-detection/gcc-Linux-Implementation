#!/usr/bin/env python3

import sys
import copy

#pads enough nops to the proper assembly, so that the fixed size block length for code is reached


def RepresentsInt(s):
    try: 
        int(s)
        return True
    except ValueError:
        return False



assembly_sizes_filename="assembly_sizes.txt"
assembly_filename="main_program_sec.s"
number_of_nops_in_code=int(sys.argv[1]) #after the jmp
num_of_bytes_in_code_chunk=int(sys.argv[2]) #verif+useful+jmp
add_code_on_the_fly_verification=int(sys.argv[3])
linesout=[]
lines_sizes=[]
lines_assembly=[]
#read lines
with open(assembly_sizes_filename) as f1:
	lines_sizes = f1.readlines()
	lines_sizes= [x.replace("\n","") for x in lines_sizes]

with open(assembly_filename) as f2:
	lines_assembly = f2.readlines()
	lines_assembly= [x.replace("\n","") for x in lines_assembly]


i=0
j=0
#find the "UNIQUE0 in the sizes
while j<len(lines_sizes) and ("UNIQUE0" not in lines_sizes[j+1].strip()):
	j=j+1
	
unique_cnt=0
while i<len(lines_assembly) and j<len(lines_sizes):
	#iterate in assembly file until the next jmp instruction
	unique_str="UNIQUE"+str(unique_cnt)
	jmp_unique_str="jmp ."+unique_str
	
	while i<len(lines_assembly) and (jmp_unique_str not in lines_assembly[i].strip()):
		linesout.append(lines_assembly[i])
		i=i+1
		
	#add the jmp too
	if (i<len(lines_assembly)):
		linesout.append(lines_assembly[i])
	
	#iterate the sizes file until the same point in order to reach the same jmp
	while j<len(lines_sizes) and ("NOPS_HERE" not in lines_sizes[j].strip()):
		j=j+1
	
		
	#now we have found the same jump in both the codes
	if (i<len(lines_assembly) and j<len(lines_sizes)):
		#print ("i,j,unique=",i,j,unique_cnt)
		#go back and add the sizes of the commands until the first number is not an int
		k=1
		total_size_of_cmds=0
		while k<=j:
			former_cmd_and_size=lines_sizes[j-k].strip()
			former_cmd_and_size_split_space=former_cmd_and_size.split(" ")
			if (RepresentsInt(former_cmd_and_size_split_space[0])):	
				size_of_former_cmd=int(former_cmd_and_size_split_space[0])
				total_size_of_cmds+=size_of_former_cmd #add the sizes
				k+=1
			else:
				break
		'''
		if (add_code_on_the_fly_verification):
			nops_to_pad=num_of_bytes_in_code_chunk-2-5-size_of_former_cmd #jmp is 2 and call is 5 bytes long
		else:
			nops_to_pad=num_of_bytes_in_code_chunk-2-size_of_former_cmd #jmp is 2
		'''	
		nops_to_pad=num_of_bytes_in_code_chunk-total_size_of_cmds
		
		#pad nops
		for n in range(nops_to_pad):
			linesout.append("NOP")
		
	#print ("i,j,unique=",i,j,unique_cnt)
	i=i+1
	j=j+1
	unique_cnt=unique_cnt+1


while i<len(lines_assembly):
	linesout.append(lines_assembly[i])
	i=i+1
	


for line in linesout:
	print(line)
