#!/usr/bin/env python3

import sys
import copy
import random
import gc

inputfiles=[ './template_files/memory_manager_template.c',
			 './template_files/verification_procedure_template.c',
			 './template_files/stack_manager_template.c',
			 './template_files/functions_needed_template.c',
			 './template_files/memory_manager_test_suite_template.c',
			 './template_files/stack_manager_test_suite_template.c',
			 './template_files/Helloworldadd_template.c'
		   ]

outputfiles=[ 'memory_manager.c',
			 'verification_procedure.c',
			 'stack_manager.c',
			 'functions_needed.c',
			 'memory_manager_test_suite.c',
			 'stack_manager_test_suite.c',
			 'Helloworldadd.c'
		   ]

canary_str='ATTENTION: GLOBAL VARIABLE FOLLOWING!'
keycnt_major=0
insert_keys_in_one_line=0
number_of_keys=0
keys_generated=[]
keys_generated_cnt=0

if (len(sys.argv)!=3):
	print("insert_keys_among_globals:Wrong number of arguments.")
	print("Usage:"+str(sys.argv[0])+ "<a> <b>")
	print("Where a=number of interleaved keys")
	print("b=Whether (1) or not (0) to insert the keys in one line as an array")
	sys.exit(1)
else:
	number_of_keys=int(sys.argv[1])
	insert_keys_in_one_line=int(sys.argv[2])
	



def get_next_keyshare():
	global keys_generated_cnt
	global keys_generated
	
	key=random.randint(0,255) #of course this can be changed
	keys_generated.append(key)
	keys_generated_cnt+=1
	return key
	

def add_keys():
	global keycnt_major
	global filelines_out
	
	if number_of_keys>0:
		keycnt_major+=1
		for i in range(1,number_of_keys+1):
			filelines_out.append("const unsigned char key_"+str(keycnt_major)+"_"+str(i) +" = "+str(get_next_keyshare())+"; \n")


def add_keys_one_line():
	global keycnt_major
	global filelines_out
	
	if number_of_keys>0:
		keycnt_major+=1
		s="const unsigned char key_"+str(keycnt_major)+"["+str(number_of_keys)+"] = {" 
		for i in range(1,number_of_keys+1):
			s+=" "+str(get_next_keyshare())
			if i<number_of_keys:
				s+=","
			
		s+="};\n"
		filelines_out.append(s)



filelines_out=[]
filelines_in=[]
processing_global=0


#insert keys among the global variables in the code
for fileindex,filein in enumerate(inputfiles):
	#read lines
	filehandler=open(filein,'r')
	filelines_in = filehandler.readlines()
	filehandler.close()
	
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
				if insert_keys_in_one_line:
					add_keys_one_line()
				else:
					add_keys()
			processing_global=0
	for line in filelines_out:
		filehandler.write(line)
	filehandler.close()
	filelines_out=[]
	filelines_in=[]
	gc.collect()



#write keyshares into file
keyshare_outfile='global_keyshares'

f = open(keyshare_outfile, 'wb')
f.write(bytes(keys_generated))
f.close()
