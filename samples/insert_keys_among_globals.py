#!/usr/bin/env python3

import sys
import copy
import random
import gc

inputfiles=[ './template_files/memory_manager_template.c',
			 './template_files/verification_procedure_template.c',
			 './template_files/stack_manager_template.c',
			 './template_files/functions_needed_template.c',
			 'memory_manager_test_suite.c',
			 'stack_manager_test_suite.c'
			 'Helloworldadd.c'
		   ]

outputfiles=[ 'memory_manager.c',
			 'verification_procedure.c',
			 'stack_manager.c',
			 'functions_needed.c',
			 'memory_manager_test_suite.c',
			 'stack_manager_test_suite.c'
			 'Helloworldadd.c'
		   ]

canary_str='ATTENTION: GLOBAL VARIABLE FOLLOWING!'
keycnt_major=0
insert_keys_in_one_line=0
number_of_keys=0

if (len(sys.argv)!=3):
	print("insert_keys_among_globals:Wrong number of arguments.")
	sys.exit(1)
else:
	number_of_keys=int(sys.argv[1])
	insert_keys_in_one_line=int(sys.argv[2])
	



filelines_out=[]
filelines_in=[]
processing_global=0

for fileindex,filein in enumerate(inputfiles):
	#read lines
	filehandler=open(filein,'r')
	filelines_in = filehandler.readlines()
	filein.close()
	
	#write lines
	filelines_out=[]
	fileout=outputfiles[fileindex]
	filehandler=open(fileout,'w')
	processing_global=0
	for line in filelines_in:
		if canary_str in line:
			processing_global=1
		else:
			filelines_out.append(line)
			if (processing_global):
				insert_keys()
			processing_global=0
	for line in filelines_out:
		filehandler.write(line)
	filehandler.close()
	filelines_out=[]
	filelines_in=[]
	gc.collect()



def get_next_keyshare():
	return random.randint(0,255)   #of course this can be changed

def add_keys():
	global keycnt_major
	global filelines_out
	
	keycnt_major+=1
	for i in range(1,keyshare_bytes+1):
		filelines_out.append("const unsigned char key_"+str(keycnt_major)+"_"+str(i) +" = "+str(get_next_keyshare())+"; \n")


def add_keys_one_line():
	global keycnt_major
	global out_lines
	
	keycnt_major+=1
	s="key_"+str(keycnt_major)+" DB "
	for i in range(1,keyshare_bytes+1):
		s+=" "+str(get_next_keyshare())
		if i<keyshare_bytes:
			s+=","
		
	s+="\n"
	out_lines.append(s)



keyshare_bytes=0

if (len(sys.argv)==3):
	infile=str(sys.argv[1])
	keyshare_bytes=int(sys.argv[2])

if (len(sys.argv)==4):
	infile=str(sys.argv[1])
	keyshare_bytes=int(sys.argv[2])
	outfile=sys.argv[3]


in_global_vars=0
in_lines=[]
out_lines=[]


with open(infile) as f:
	for line in f:
		in_lines.append(line)
		out_lines.append(line)
		lowercase_line=line.lower()
		if len(lowercase_line.split(';', 1))>1:
			lowercase_line=lowercase_line.split(';', 1)[0] #remove all comments
			lowercase_line+="\n"

		#if (in_global_vars==1 and ((".code" in lowercase_line) or (".text" in lowercase_line) or (".stack" in lowercase_line)): #better way to deteck end of data segment?
		if (in_global_vars==1 and ("." in lowercase_line)): #SUPER unsafe. We need something better.
			in_global_vars=0

		if (in_global_vars and lowercase_line.strip()!=""):
			add_keys()
			#add_keys_one_line() #change to this if you want the keys to be in one line as an array
			
		if ".data" in lowercase_line:
			in_global_vars=1
		
		
if (outfile==''):
	for i in out_lines:
		print(i,end="")
else:
	f = open(outfile,'w')
	for i in out_lines:
		f.write(i)
	f.close()
