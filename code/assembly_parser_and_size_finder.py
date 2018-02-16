#!/usr/bin/env python3

import sys
import copy
import platform
import gc

#takes an assembly output and finds the size of the individual commands
#For example:
'''
00000000000033cc <.UNIQUE159>:
    33cc:	9c                   	pushfq 
    33cd:	e8 00 00 00 00       	callq  33d2 <.UNIQUE159+0x6>
    33d2:	9d                   	popfq  
    33d3:	48 8b 45 f0          	mov    -0x10(%rbp),%rax
    33d7:	48 8b 50 08          	mov    0x8(%rax),%rdx
    33db:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
    33df:	48 89 50 08          	mov    %rdx,0x8(%rax)
    33e3:	e9 35 00 00 00       	jmpq   341d <.UNIQUE160>
    33e8:	90                   	nop
    33e9:	90                   	nop
	... (nops)
'''

#will result in 
'''
1 pushfq
5 callq  33d2 <.UNIQUE159+0x6>
1 popfq
4 mov    -0x10(%rbp),%rax
4 mov    0x8(%rax),%rdx
4 mov    -0x8(%rbp),%rax
4 mov    %rdx,0x8(%rax)
5 jmpq   341d <.UNIQUE160>
NOPS_HERE 53
'''



filename="assembly_commands_for_parsing.txt"
number_of_nops_in_code=int(sys.argv[1])
linesout=[]

sizes_of_cmds={} #memorize the sizes that have already been found


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
		
		#get the name of the cmd
		linesplit_tab=line.split('\t')
		do_extensive_calcs_for_cmd=1
		if len(linesplit_tab)==2: #it's a cmd in one line
			do_extensive_calcs_for_cmd=0
			name_of_cmd= linesplit_tab[-1].strip()
			if name_of_cmd in sizes_of_cmds:
				num_of_bytes=sizes_of_cmds[name_of_cmd]
				linesout.append(str(num_of_bytes)+" "+str(cmd))
				print(str(num_of_bytes)+" "+str(cmd))
				continue
			else:
				do_extensive_calcs_for_cmd=1
				
		if (do_extensive_calcs_for_cmd==1): #split the command, calculate the bytes, etc. Many calculations
		
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
			
			if (len(bytes_and_cmd_split_tab)<2): #it's a continuation of the former command, some commands are big and spread in two lines
				former_num_of_bytes=int(linesout[-1].split(" ")[0])
				new_num_of_bytes=former_num_of_bytes+num_of_bytes
				linesout_parts=linesout[-1].split(" ") #correct the size of the last line
				linesout[-1]=(str(new_num_of_bytes)+" ")
				for i in range(1,len(linesout_parts)):
					linesout[-1]+=linesout_parts[i]+" "
				continue
			else: #it's a new command
				cmd=bytes_and_cmd_split_tab[1].strip()
				sizes_of_cmds[cmd]=num_of_bytes
	else:
		cmd="nop"
		num_of_bytes=1
	
	if (cmd=="nop"):
		nop_cnt+=1 #count nops going forward
		if ((linecnt==len(lines)-1) or ((is_cmd_nop(lines[linecnt+1])==False) and nop_cnt>10)): #we have more than 10 nops in total
			linesout.append("NOPS_HERE "+str(nop_cnt)) #put one line representing all of them
			nop_cnt=0
		if ((linecnt==len(lines)-1) or ((is_cmd_nop(lines[linecnt+1])==False) and nop_cnt<=10)): #there are some nops that are alone...
			for i in range(nop_cnt):
				linesout.append("1 nop") #put many lines, one for each one of them
			nop_cnt=0
		continue
	else:
		nop_cnt=0
	
	linesout.append(str(num_of_bytes)+" "+str(cmd))


for line in linesout:
	print(line)
