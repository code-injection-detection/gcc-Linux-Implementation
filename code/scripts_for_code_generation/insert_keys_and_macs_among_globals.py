#!/usr/bin/env python3

import sys
import copy
import random
import gc
import platform
import hashlib
from collections import Iterable
from subprocess import Popen, PIPE

#example of invocation
'''
//GLOBAL DECLARATION
typedef struct
{
//ATTENTION: GLOBAL VARIABLE FOLLOWING! | SIZE:double
double global_double_variable_for_testing;
//ATTENTION: GLOBAL VARIABLE FOLLOWING! | SIZE:int
int test_global;
//ATTENTION: GLOBAL VARIABLE FOLLOWING! | SIZE:int 
int secured_i;
//ATTENTION: GLOBAL VARIABLE FOLLOWING! | SIZE:long
long secured_sum;
}global_vars;
'''

'''
The general way of a global variable should be
//ATTENTION: GLOBAL VARIABLE FOLLOWING! | SIZE:int |<obsolete part>| EXTRA_STUFF: stuff1=info1,stuff2=info2, etc
int secured_i;
'''

#This script parses the global declaration, puts the keys/macs among them and initializes the struct with the global variables



#input files that are going to be checked if they have global declarations
#currently, only the headers_needed.h has
inputfiles=[ 'headers_needed.h',
             './template_files/memory_manager_template.c',
			 './template_files/stack_manager_template.c',
			 './template_files/functions_needed_header_template.c',
			 './template_files/memory_manager_test_suite_template.c',
			 './template_files/stack_manager_test_suite_template.c',
			 './template_files/main_program_template.c',
			 './template_files/final_mac_checking_functions_template.c',
			 'general_tests.c',
			 'tests_with_new_stack.c',
			 './template_files/functions_needed_footer_template.c', #verification procedure and functions_needed_footer must be last!
			 './template_files/verification_procedure_template.c'
		   ]

#the corresponding output files
outputfiles=['headers_needed.h', 
             'memory_manager.c',
			 'stack_manager.c',
			 'functions_needed_header.c',
			 'memory_manager_test_suite.c',
			 'stack_manager_test_suite.c',
			 'main_program.c',
			 'final_mac_checking_functions.c',
			 'general_tests.c',
			 'tests_with_new_stack.c',
			 'functions_needed_footer.c',
			 'verification_procedure.c'
		   ]

#canary strings that denote something to the python program
canary_str='ATTENTION: GLOBAL VARIABLE FOLLOWING!'
verification_canary_str='PLEASE PYTHON ADD CODE FOR GLOBAL KEYS VERIFICATION'
mac_verification_canary_str='PLEASE PYTHON ADD CODE FOR GLOBAL MACS VERIFICATION'
initialization_canary_str='PLEASE PYTHON INITIALISE THE GLOBAL VARS'
keycnt_major=0
maccnt_major=0
insert_keys_and_macs_in_one_line=0 #boolean variable that chooses if the keys and macs should be inserted in one line or in multiple lines
number_of_keys=0
keys_generated=[]
keys_generated_cnt=0
useful_bytes_size=8
useless_bytes_cnt=0
num_of_mac_bytes=0
hash_handler=hashlib.sha256()
bytes_to_be_maced=[]
value_of_useless_bytes=1
global_variable_values=[]
squeeze_keys_when_macing=0
do_stuff_for_headers_needed_only=0 # should we only create the header file (headers_needed.h) or do the job for every file?

if (len(sys.argv)!=7):
	print("insert_keys_among_globals:Wrong number of arguments.")
	sys.exit(1)
else:
	number_of_keys=int(sys.argv[1])
	insert_keys_and_macs_in_one_line=int(sys.argv[2])
	useful_bytes_size=int(sys.argv[3])
	num_of_mac_bytes=int(sys.argv[4])
	squeeze_keys_when_macing=int(sys.argv[5])
	do_stuff_for_headers_needed_only=int(sys.argv[6])
	
	
#functionality for some var types. For example const. Use with caution, not guaranteed to work.
def process_var_type(var_type):
	if var_type=='normal':
		return ''
	else:
		return str(var_type)
	
def RepresentsInt(s):
    try: 
        int(s)
        return True
    except ValueError:
        return False
        
        	
#returns the variable size, depending on the type. 
def process_var_size(var_size_full): #This has to be improved in the future not to have these static values
	var_size=''.join(var_size_full.split("unsigned ",1)) #remove unsigned
	if var_size=='int':
		return 4
	if var_size=='char':
		return 1
	if var_size=='long' or var_size=='ptr' or var_size=='pointer':
		if ('64' in platform.architecture()[0]):
			return 8
		else:
			return 4
	if var_size=='double':
		return 8
	if var_size=='float':
		return 4
	if RepresentsInt(var_size):
		return int(var_size)
	else:
		print("UNKNOWN VARIABLE SIZE:",var_size)


def get_next_keyshare():
	global keys_generated_cnt
	global keys_generated
	
	key=random.randint(0,255) #of course this can be changed
	keys_generated.append(key)
	keys_generated_cnt+=1
	return key
	
#if the mac is not large enough, zeros are appended. However the C program that outputs the macs does this automatically
def enlarge_mac_if_needed(MAC):
	if(num_of_mac_bytes>len(MAC)):
		x=[0 for i in range(num_of_mac_bytes-len(MAC))]
		for k in x:
			MAC.append(k) 

#calls the C program with the correct parameters, to get the mac of the <bytes_to_be_maced>
def get_mac_from_c_code(MAC):
	global bytes_to_be_maced
	
	if (do_stuff_for_headers_needed_only==1): #no mac calulation here, the program does not even exist
		MAC=[0]*num_of_mac_bytes
	else:
		program='./calc_mac_for_external_programs' #use the old (slightly slower) version. The globals are few and that's ok
		mac_as_str=[str(i) for i in bytes_to_be_maced]
		args=[program,str(len(bytes_to_be_maced)),str(useful_bytes_size)]
		for i in mac_as_str:
			args.append(i)
		process = Popen(args, stdout=PIPE, stderr=PIPE)
		mac_out=process.stdout.read()
		for i in list(mac_out.split()):
			MAC.append(int(i.decode('ascii')))

#for one chunk of useful bytes, adds the keys and the macs (uninitialized)
def add_keys_and_macs(var_type):
	global keycnt_major
	global filelines_out
	global maccnt_major
	global bytes_to_be_maced
	global hash_handler
	global global_variable_values
	
	#keys
	if number_of_keys>0:
		keycnt_major+=1
		for i in range(1,number_of_keys+1):
			s=''
			s+=process_var_type(var_type)+" "
			keyshare=get_next_keyshare()
			bytes_to_be_maced.append(keyshare)
			s+="unsigned char key_"+str(keycnt_major)+"_"+str(i) +";\n"
			global_variable_values.append(keyshare)
			filelines_out.append(s)
	#macs
	if num_of_mac_bytes>0:
		MAC=[]
		get_mac_from_c_code(MAC)
		enlarge_mac_if_needed(MAC)
		#print("bytes_to_be_maced:",bytes_to_be_maced)
		#print("MAC:",MAC)
		maccnt_major+=1
		for i in range(1,num_of_mac_bytes+1):
			s=''
			s+=process_var_type(var_type)+" "
			s+="unsigned char mac_"+str(maccnt_major)+"_"+str(i) +";\n"
			global_variable_values.append(MAC[i-1])
			filelines_out.append(s)
		
#for one chunk of useful bytes, adds the keys and the macs (uninitialized), but in one line as arrays
def add_keys_and_macs_one_line(var_type):
	global keycnt_major
	global filelines_out
	global maccnt_major
	global bytes_to_be_maced
	global hash_handler
	global global_variable_values
	
	s=''
	#keys
	if number_of_keys>0:
		s+=process_var_type(var_type)+" "
		keycnt_major+=1
		s+="unsigned char key_"+str(keycnt_major)+"["+str(number_of_keys)+"];\n" 
		values_of_array=[]
		for i in range(1,number_of_keys+1):
			keyshare=get_next_keyshare()
			bytes_to_be_maced.append(keyshare)
			values_of_array.append(keyshare)
		global_variable_values.append(values_of_array)
		filelines_out.append(s)
	
	s=''
	#macs
	if num_of_mac_bytes>0:
		MAC=[]
		get_mac_from_c_code(MAC)
		enlarge_mac_if_needed(MAC)
		#print("bytes_to_be_maced:",bytes_to_be_maced)
		#print("MAC:",MAC)
		s+=process_var_type(var_type)+" "
		maccnt_major+=1
		s+="unsigned char mac_"+str(maccnt_major)+"["+str(num_of_mac_bytes)+"];\n" 
		values_of_array=[]
		for i in range(1,num_of_mac_bytes+1):
			values_of_array.append(MAC[i-1])
		global_variable_values.append(values_of_array)
		filelines_out.append(s)

#for every chunk, useless bytes are padded so as to make the size of the chunk to be fixed
#For example, if a global is an int (4 bytes) and the useful size per block is 8 s, the rest have to be padded.
def pad_random_useless_bytes(var_type,num):
	global filelines_out
	global useless_bytes_cnt
	global bytes_to_be_maced
	global hash_handler
	global global_variable_values
	
	for i in range(num):
		useless_bytes_cnt+=1
		bytes_to_be_maced.append(value_of_useless_bytes)
		filelines_out.append(process_var_type(var_type)+' char useless_byte_'+ str(useless_bytes_cnt)+ ';\n')
		global_variable_values.append(value_of_useless_bytes)

#the verification code for the keys is added here (when they are saved in arrays)
def add_verification_one_line():
	global filelines_out
	global keycnt_major
	
	for i in range(1,keycnt_major+1):
		filelines_out.append('for (keycnt=0;keycnt<number_of_interleaved_keys;keycnt++) \n')
		filelines_out.append('{ \n')
		filelines_out.append('keys[keycnt]^=(unsigned char) globals.key_'+str(i)+'[keycnt]; \n')
		filelines_out.append('} \n')

#the verification code for the keys is added here (when they are saved as discrete variables)
def add_verification():
	global filelines_out
	global keycnt_major
	global number_of_keys

	for j in range(1,number_of_keys+1):
		for i in range(1,keycnt_major+1):
			filelines_out.append('keys['+str(j-1)+'] ^=(unsigned char) globals.key_'+str(i)+'_'+str(j)+';\n')

#adds the verifications code for the macs 
def add_mac_verification():
	global filelines_out
	global maccnt_major
	global number_of_keys

	s='int error=0;\n \n'
	for i in range(1,maccnt_major+1):
		s+='if (!ignore_macs_even_if_there_are_mac_bytes && check_mac_for_error((unsigned char *)&(globals.mac_'+str(i)+'_1)-(number_of_global_useful_bytes+bytes_used_for_keyshares),number_of_global_useful_bytes+bytes_used_for_keyshares,number_of_global_useful_bytes))\n'
		s+='{\n'	
		s+='	fprintf(stderr,"Error in global macs, mac no %d\\n",'+str(i)+');\n'
		s+='	error=1;\n'
		s+='}\n'
		
	if (maccnt_major>0):
		s+='if (error==0)\n'
		s+='{\n'
		s+='	fprintf(stderr,"All global macs ok!\\n");\n'
		s+='}\n'
	else:
		s+='fprintf(stderr,"No macs to check in globals!\\n");\n'
	filelines_out.append(s)

def add_mac_verification_one_line():
	global filelines_out
	global maccnt_major
	global number_of_keys
	
	s='int error=0;\n \n'
	for i in range(1,maccnt_major+1):
		s+='if(check_mac_for_error((unsigned char *)&(globals.mac_'+str(i)+')-(number_of_global_useful_bytes+bytes_used_for_keyshares),number_of_global_useful_bytes+bytes_used_for_keyshares,number_of_global_useful_bytes))\n'
		s+='{\n'	
		s+='	fprintf(stderr,"Error in global macs, mac no %d\\n",'+str(i)+');\n'
		s+='	error=1;\n'
		s+='}\n'
		
	if (maccnt_major>0):
		s+='if (error==0)\n'
		s+='{\n'
		s+='	fprintf(stderr,"All global macs ok!\\n");\n'
		s+='}\n'
	else:
		s+='fprintf(stderr,"No macs to check in globals!\\n");\n'
	filelines_out.append(s)


filelines_out=[]
filelines_in=[]
processing_global=0
var_type='normal' #or 'static' or 'const' or 'extern'
chunk_bytes_cnt=0
var_size=1



#insert keys among the global variables in the code, by searching for canary strings
for fileindex,filein in enumerate(inputfiles):
	if (do_stuff_for_headers_needed_only==1 and filein!="headers_needed.h"):
		#IMPORTANT BIT HERE. This script will be called with this flag activated as well.
		continue
	#read lines
	filehandler=open(filein,'r')
	filelines_in = filehandler.readlines()
	filelines_in = [x for x in filelines_in if not "PYTHON IGNORE" in x]
	filehandler.close()
	
	#write lines
	filelines_out=[]
	fileout=outputfiles[fileindex]
	filehandler=open(fileout,'w')
	processing_global=0
	for line in filelines_in:
		if canary_str in line:  #global variable following
			var_size=4
			if (len(line.split('|')))>1:
				var_size=int(process_var_size(line.split('|')[1].split(':')[1].strip().lower()))
			var_type='normal'
			if (len(line.split('|')))>2 and line.split('|')[2]!='':
				var_type=line.split('|')[2].split(':')[1].strip().lower()
			processing_global=1
			bytes_to_be_maced=[]
			hash_handler=hashlib.sha256()
		else:
			filelines_out.append(line)
			if (processing_global):
				chunk_bytes_cnt+=var_size  #Ok so far we add keyshares for EACH global variable. Will be a pain to change this.
				global_variable_values.append(0)
				for i in range(var_size):
					bytes_to_be_maced.append(0)
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
				
		#if we found the place where we must initialise the global variables
		if initialization_canary_str in line:
			for i in range(len(global_variable_values)):
				s=''
				if isinstance(global_variable_values[i], Iterable):  #check if it is a list
					s+='{'
					for j in range(len(global_variable_values[i])):
						s+=str(global_variable_values[i][j])
						if (j<len(global_variable_values[i])-1):
							s+=','
					s+='}'
				else:							   #if not a list
					s+=str(global_variable_values[i])
					
				if (i<len(global_variable_values)-1):
					s+=','
				s+='\n'
				filelines_out.append(s)
		
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
