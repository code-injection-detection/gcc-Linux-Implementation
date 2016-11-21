#!/usr/bin/env python3

import sys
import copy
import random
import gc
import platform
import hashlib

inputfiles=[ './template_files/memory_manager_template.c',
			 './template_files/stack_manager_template.c',
			 './template_files/functions_needed_header_template.c',
			 './template_files/memory_manager_test_suite_template.c',
			 './template_files/stack_manager_test_suite_template.c',
			 './template_files/Helloworldadd_template.c',
			 './template_files/mac_handling_functions_template.c',
			 'general_tests.c',
			 './template_files/functions_needed_footer_template.c', #verification procedure and functions_needed_footer must be last!
			 './template_files/verification_procedure_template.c'
		   ]

outputfiles=[ 'memory_manager.c',
			 'stack_manager.c',
			 'functions_needed_header.c',
			 'memory_manager_test_suite.c',
			 'stack_manager_test_suite.c',
			 'Helloworldadd.c',
			 'mac_handling_functions.c',
			 'general_tests.c',
			 'functions_needed_footer.c',
			 'verification_procedure.c'
		   ]

canary_str='ATTENTION: GLOBAL VARIABLE FOLLOWING!'
verification_canary_str='PLEASE PYTHON ADD CODE FOR GLOBAL KEYS VERIFICATION'
mac_verification_canary_str='PLEASE PYTHON ADD CODE FOR GLOBAL MACS VERIFICATION'
keycnt_major=0
maccnt_major=0
insert_keys_and_macs_in_one_line=0
number_of_keys=0
keys_generated=[]
keys_generated_cnt=0
useful_bytes_size=8
useless_bytes_cnt=0
num_of_mac_bytes=0
hash_handler=hashlib.sha256()
bytes_to_be_hashed=[]
value_of_useless_bytes=1

if (len(sys.argv)!=5):
	print("insert_keys_among_globals:Wrong number of arguments.")
	print("Usage:"+str(sys.argv[0])+ "<a> <b> <c> <d>")
	print("Where a=number of interleaved keys")
	print("b=Whether (1) or not (0) to insert the keys in one line as an array")
	print("c=The size of the useful bytes that are left between keyshares")
	print("d=The number of the mac bytes to insert after the keyshares")
	sys.exit(1)
else:
	number_of_keys=int(sys.argv[1])
	insert_keys_and_macs_in_one_line=int(sys.argv[2])
	useful_bytes_size=int(sys.argv[3])
	num_of_mac_bytes=int(sys.argv[4])
	

def process_var_type(var_type):
	if var_type=='normal':
		return ''
	else:
		return str(var_type)
		
def process_var_size(var_size): #This has to be improved in the future
	if var_size=='int':
		return 4
	if var_size=='char':
		return 1
	if var_size=='long' or var_size=='ptr':
		if ('64' in platform.architecture()[0]):
			return 8
		else:
			return 4
	if var_size=='double':
		return 8
	if var_size=='float':
		return 4
	else:
		print("UNKNOWN VARIABLE SIZE:",var_size)

def get_next_keyshare():
	global keys_generated_cnt
	global keys_generated
	
	key=random.randint(0,255) #of course this can be changed
	keys_generated.append(key)
	keys_generated_cnt+=1
	return key
	

def add_keys_and_macs(var_type):
	global keycnt_major
	global filelines_out
	global maccnt_major
	global bytes_to_be_hashed
	global hash_handler
	
	if number_of_keys>0:
		keycnt_major+=1
		for i in range(1,number_of_keys+1):
			s=''
			s+=process_var_type(var_type)+" "
			keyshare=get_next_keyshare()
			bytes_to_be_hashed.append(keyshare)
			s+="unsigned char key_"+str(keycnt_major)+"_"+str(i) +" = "+str(keyshare)+"; \n"
			filelines_out.append(s)
	if num_of_mac_bytes>0:
		hash_handler.update(bytes(bytes_to_be_hashed))
		sha_hash=list(hash_handler.digest())
		#print("bytes_to_be_hashed:",bytes_to_be_hashed)
		#print("sha_hash:",sha_hash)
		maccnt_major+=1
		for i in range(1,num_of_mac_bytes+1):
			s=''
			s+=process_var_type(var_type)+" "
			s+="unsigned char mac_"+str(maccnt_major)+"_"+str(i) +" = "+str(sha_hash[i-1])+"; \n"
			filelines_out.append(s)
		

def add_keys_and_macs_one_line(var_type):
	global keycnt_major
	global filelines_out
	global maccnt_major
	global bytes_to_be_hashed
	global hash_handler
	
	s=''
	if number_of_keys>0:
		s+=process_var_type(var_type)+" "
		keycnt_major+=1
		s+="unsigned char key_"+str(keycnt_major)+"["+str(number_of_keys)+"] = {" 
		for i in range(1,number_of_keys+1):
			keyshare=get_next_keyshare()
			bytes_to_be_hashed.append(keyshare)
			s+=" "+str(keyshare)
			if i<number_of_keys:
				s+=","
		s+="};\n"
		filelines_out.append(s)
	
	s=''
	if num_of_mac_bytes>0:
		hash_handler.update(bytes(bytes_to_be_hashed))
		sha_hash=list(hash_handler.digest())
		#print("bytes_to_be_hashed:",bytes_to_be_hashed)
		#print("sha_hash:",sha_hash)
		s+=process_var_type(var_type)+" "
		maccnt_major+=1
		s+="unsigned char mac_"+str(maccnt_major)+"["+str(num_of_mac_bytes)+"] = {" 
		for i in range(1,num_of_mac_bytes+1):
			s+=" "+str(sha_hash[i-1])
			if i<num_of_mac_bytes:
				s+=","
		s+="};\n"
		filelines_out.append(s)


def pad_random_useless_bytes(var_type,num):
	global filelines_out
	global useless_bytes_cnt
	global bytes_to_be_hashed
	global hash_handler
	
	for i in range(num):
		useless_bytes_cnt+=1
		bytes_to_be_hashed.append(value_of_useless_bytes)
		filelines_out.append(process_var_type(var_type)+' char useless_byte_'+ str(useless_bytes_cnt)+ ' = ' +str(value_of_useless_bytes) +';\n')


def add_verification_one_line():
	global filelines_out
	global keycnt_major
	
	for i in range(1,keycnt_major+1):
		filelines_out.append('for (keycnt=0;keycnt<number_of_interleaved_keys;keycnt++) \n')
		filelines_out.append('{ \n')
		filelines_out.append('keys[keycnt]^=(unsigned char) key_'+str(i)+'[keycnt]; \n')
		filelines_out.append('} \n')

def add_verification():
	global filelines_out
	global keycnt_major
	global number_of_keys

	for j in range(1,number_of_keys+1):
		for i in range(1,keycnt_major+1):
			filelines_out.append('keys['+str(j-1)+'] ^=(unsigned char) key_'+str(i)+'_'+str(j)+';\n')


def add_mac_verification():
	global filelines_out
	global maccnt_major
	global number_of_keys

	s='int error=0;\n char shasum[SHA256_BLOCK_SIZE];\n char mac[number_of_mac_bytes];\n'
	for i in range(1,maccnt_major+1):
		s+='calculate_sha256_sum((unsigned char *)&(mac_'+str(i)+'_1)-(number_of_global_useful_bytes+bytes_used_for_keyshares),number_of_global_useful_bytes+bytes_used_for_keyshares,shasum);\n'
		s+='truncate_sha256sum(shasum,mac);\n'
		s+='if (0!=memcmp((unsigned char *)&(mac_'+str(i)+'_1),mac,number_of_mac_bytes))\n'
		s+='{\n'	
		s+='	printf("Error in global macs, mac no %d\\n",'+str(i)+');\n'
		s+='	error=1;\n'
		s+='}\n'
	s+='if (error==0)\n'
	s+='{\n'
	s+='	printf("All global macs ok!\\n");\n'
	s+='}\n'
	filelines_out.append(s)

def add_mac_verification_one_line():
	global filelines_out
	global maccnt_major
	global number_of_keys
	
	s='int error=0;\n char shasum[SHA256_BLOCK_SIZE];\n char mac[number_of_mac_bytes];\n'
	for i in range(1,maccnt_major+1):
		s+='calculate_sha256_sum((unsigned char *)&(mac_'+str(i)+')-(number_of_global_useful_bytes+bytes_used_for_keyshares),number_of_global_useful_bytes+bytes_used_for_keyshares,shasum);\n'
		s+='truncate_sha256sum(shasum,mac);\n'
		s+='if (0!=memcmp((unsigned char *)&(mac_'+str(i)+'),mac,number_of_mac_bytes))\n'
		s+='{\n'	
		s+='	printf("Error in global macs, mac no %d\\n",'+str(i)+');\n'
		s+='	error=1;\n'
		s+='}\n'
	s+='if (error==0)\n'
	s+='{\n'
	s+='	printf("All global macs ok!\\n");\n'
	s+='}\n'
	filelines_out.append(s)




filelines_out=[]
filelines_in=[]
processing_global=0
var_type='normal' #or 'static' or 'const' or 'extern'
chunk_bytes_cnt=0
var_size=1


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
			var_size=4
			if (len(line.split('|')))>1:
				var_size=int(process_var_size(line.split('|')[1].split(':')[1].strip().lower()))
			var_type='normal'
			if (len(line.split('|')))>2:
				var_type=line.split('|')[2].split(':')[1].strip().lower()
			processing_global=1
			bytes_to_be_hashed=[]
			hash_handler=hashlib.sha256()
		else:
			filelines_out.append(line)
			if (processing_global):
				chunk_bytes_cnt+=var_size  #Ok so far we add keyshares for EACH global variable. Will be a pain to change this.
				for i in range(var_size):
					bytes_to_be_hashed.append(0)
				pad_random_useless_bytes(var_type,useful_bytes_size-chunk_bytes_cnt) #pad with random useless bytes	
				chunk_bytes_cnt=0
				if insert_keys_and_macs_in_one_line:
					add_keys_and_macs_one_line(var_type)
				else:
					add_keys_and_macs(var_type)
			processing_global=0
		
		#if we found the verification procedure
		if verification_canary_str in line:
			if insert_keys_and_macs_in_one_line:
				add_verification_one_line()
			else:
				add_verification()
				
		#if we found the verification procedure for the macs
		if mac_verification_canary_str in line:
			if insert_keys_and_macs_in_one_line:
				add_mac_verification_one_line()
			else:
				add_mac_verification()
		
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
