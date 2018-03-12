#!/usr/bin/python3 -S

import sys

#takes one assembly cmd in "assembly_commands_for_parsing.txt" and finds its size
#this file is the output of "objdump -d"
#which could look like this:
'''
00000000004044ce <init_function_params>:
  4044ce:	55                   	push   %rbp
  4044cf:	48 89 e5             	mov    %rsp,%rbp
  4044d2:	53                   	push   %rbx
  4044d3:	48 81 ec 08 01 00 00 	sub    $0x108,%rsp
  4044da:	48 89 b5 48 ff ff ff 	mov    %rsi,-0xb8(%rbp)
  4044e1:	48 89 95 50 ff ff ff 	mov    %rdx,-0xb0(%rbp)
  4044e8:	48 89 8d 58 ff ff ff 	mov    %rcx,-0xa8(%rbp)
  4044ef:	4c 89 85 60 ff ff ff 	mov    %r8,-0xa0(%rbp)
  ...
  ...
'''

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
	
	if (line.split(" ")[0].startswith("00000")): #name of function
		continue

	address=line.split(":")[0].strip()
	bytes_and_cmd=line.split(":")[1].strip()
	bytes_in_hex=bytes_and_cmd.split('\t')[0].strip()
	num_of_bytes=len(bytes_in_hex.split(' '))
	
	if (len(bytes_and_cmd.split('\t'))<2): #it's a continuation of the former command in a second line
		former_num_of_bytes=int(linesout[-1].split(" ")[0])
		new_num_of_bytes=former_num_of_bytes+num_of_bytes
		linesout_parts=linesout[-1].split(" ") #and now fix the former line to have the proper size
		linesout[-1]=(str(new_num_of_bytes)+" ")
		for i in range(1,len(linesout_parts)):
			linesout[-1]+=linesout_parts[i]+" "
		continue
	else: #it's a new command
		cmd=bytes_and_cmd.split('\t')[1].strip()

	linesout.append(str(num_of_bytes)+" "+str(cmd))
	
	
for line in linesout:
	print(line.split(" ")[0])
