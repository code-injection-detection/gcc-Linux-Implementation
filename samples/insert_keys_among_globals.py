#!/usr/bin/env python3

import sys
import copy
import random

inputfiles=[ './template_files/memory_manager_template.c',
			 './template_files/verification_procedure_template.c',
			 './template_files/stack_manager_template.c',
			 './template_files/functions_needed_template.c',
			 'memory_manager_test_suite.c',
			 'stack_manager_test_suite.c'
		   ]

outputfiles=[ 'memory_manager.c',
			 'verification_procedure.c',
			 'stack_manager.c',
			 'functions_needed.c',
			 'memory_manager_test_suite.c',
			 'stack_manager_test_suite.c'
		   ]


def get_next_keyshare():
	return random.randint(0,255)   #of course this can be changed

def add_keys():
	global keycnt_major
	global out_lines
	
	keycnt_major+=1
	for i in range(1,keyshare_bytes+1):
		out_lines.append("key_"+str(keycnt_major)+"_"+str(i) +" DB "+str(get_next_keyshare())+" \n")


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


if (len(sys.argv)<3) or (len(sys.argv)>5):
	usage()
	sys.exit(1)

infile=''
outfile=''
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
keycnt_major=0

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
