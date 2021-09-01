#!/usr/bin/env python3

import sys
import copy
import platform
import gc
import re
import random
import string

'''
This script inserts the commands that implement the secure stack.
It parses the function annotations in tests_with_new_stack_template.c
which describe the parameters, local vars, where the function is being called etc

Its sister file, insert_new_stack_commands.py can be used as well, but it will soon be unsupported. Prefer this one.
'''


#stack frame: args (arg(1), arg(2)...) , return value, return address, base pointer, (stack canary), local vars

#for the stack that grows downwards:
'''
 <former stack frame>
 args
 return value
 return address
 base pointer
 (stack canary)
 local vars  <---stack pointer
''' 

tests_src=open('tests_with_new_stack.c','r')

src_lines= tests_src.readlines()
src_lines = [x for x in src_lines if not "PYTHON IGNORE" in x]
dst_lines=[]

tests_src.close()
tests_dst=open('tests_with_new_stack.c','w')

number_of_stack_key_bytes=int(sys.argv[1])
number_of_stack_useful_data_bytes=int(sys.argv[2])
number_of_mac_bytes=int(sys.argv[3])
stack_grows_by_decreasing_numbers=int(sys.argv[4])
use_stack_canaries=int(sys.argv[5])

stack_dec_num=0
if (stack_grows_by_decreasing_numbers==1):
	stack_dec_num=1
	
op_to_move_in_stack='+'
if stack_dec_num==1:
	op_to_move_in_stack='-'


def calculate_chunks_needed_for_a_size(size_in_bytes):
	chunks_num=(size_in_bytes//number_of_stack_useful_data_bytes)
	if (chunks_num*number_of_stack_useful_data_bytes<size_in_bytes):
		chunks_num+=1	
	return chunks_num

size_of_stack_canary=0
if (use_stack_canaries>0):
	size_of_stack_canary=16
	if stack_dec_num==0:
		print("ERROR:We can't have stack canaries and the stack to grow towards increasing numbers!")
		sys.exit(-1)
chunks_for_stack_canary=str(calculate_chunks_needed_for_a_size(size_of_stack_canary))


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
	if var_size.lower()=='none' or var_size.lower()=='null':
		return 0
	else:
		print("UNKNOWN VARIABLE SIZE:",var_size)



def type_of_var_in_declaration(index):
	if (index==0):
		return 'char'
	if (index==1):
		return 'int'
	if (index==2):
		return 'long'
	if (index==3):
		return 'float'
	if (index==4):
		return 'double'
	if (index==5):
		return 'ptr'
	if (index==6):
		return 'arb_ptr'


#parses the local parameters and puts them into the dictionary
#eg
'''
NUM_OF_PARAMETERS: 5
		chars: 0 
		ints: 2 | names: X,Y
		longs: 0
		floats: 0
		doubles: 0
		pointers: 1 | names: TEST_PTR | size_of_pointed_elements:10 
		arb_pointers: 2 | names: STUFF,STUFF2 | size_of_objects:5,7
'''
def process_params_locals(type_of_vars):
	global params_locals_lines
	global function_dict
	
	if (type_of_vars=='params'):
		function_dict['params']={}
	if (type_of_vars=='locals'):
		function_dict['locals']={}
		
	for i,line in enumerate(params_locals_lines):
		name_of_type=type_of_var_in_declaration(i)
		parts_of_line=line.strip().split('|')
		num_of_type=parts_of_line[0].split(':')[1].strip()
		function_dict[type_of_vars][name_of_type]={}
		function_dict[type_of_vars][name_of_type]['number']=num_of_type
		num_of_type_int=int(num_of_type)
		if (num_of_type_int>0):
			names=parts_of_line[1].split(':')[1].strip().split(',')
			function_dict[type_of_vars][name_of_type]['names']=[]
			for x in names:
				function_dict[type_of_vars][name_of_type]['names'].append(x.strip())
				
			if ((type_of_var_in_declaration(i)=='ptr') or (type_of_var_in_declaration(i)=='arb_ptr')):
				if (len(parts_of_line)>2 or (type_of_var_in_declaration(i)!='ptr')): #having a size for pointers should not be necessary
					sizes=parts_of_line[2].split(':')[1].strip().split(',')
					function_dict[type_of_vars][name_of_type]['sizes']=[]
					for x in sizes:
						function_dict[type_of_vars][name_of_type]['sizes'].append(x.strip())

			
	
#how many chunks (blocks) the local variables are going to take. Their amounts are read from the dictionary.
def calculate_chunks_for_params_locals(type_of_vars):
	global function_dict
	
	chunks_needed=0
	for type_of_var in function_dict[type_of_vars]:
		num_of_var=int(function_dict[type_of_vars][type_of_var]['number'])
		if type_of_var!='arb_ptr':
			size_of_var=process_var_size(type_of_var)
			new_chunks_num=calculate_chunks_needed_for_a_size(size_of_var*num_of_var)
			chunks_needed+=new_chunks_num
		else:
			if (num_of_var>0):
				for sz in function_dict[type_of_vars][type_of_var]['sizes']:
					size_of_var=int(sz)
					new_chunks_num=calculate_chunks_needed_for_a_size(size_of_var)
					chunks_needed+=new_chunks_num
	
	return chunks_needed
		
		
		
def find_name_of_getter(type_of_var,use_array=1):
	name_of_getter='get_stack_'
	if( type_of_var=='long' or type_of_var=='long int'):
		name_of_getter+='long_int'
	if ( type_of_var=='pointer' or type_of_var=='ptr'):
		name_of_getter+='pointer'
	if (name_of_getter=='get_stack_'): #not changed
		name_of_getter+=type_of_var
	if (use_array):
		name_of_getter+='_array_element'
	return name_of_getter
	
	
	
def find_name_of_setter(type_of_var,use_array=1):
	name_of_setter='set_stack_'
	if( type_of_var=='long' or type_of_var=='long int'):
		name_of_setter+='long_int'
	if ( type_of_var=='pointer' or type_of_var=='ptr'):
		name_of_setter+='pointer'
	if (name_of_setter=='set_stack_'): #not changed
		name_of_setter+=type_of_var
	if (use_array):
		name_of_setter+='_array_element'
	return name_of_setter
	
def find_name_of_stack_setter_in_caps(type_of_var):
	name_of_setter='SET_STACK_'
	if( type_of_var=='long' or type_of_var=='long int'):
		name_of_setter+='LONG'
	if ( type_of_var=='pointer' or type_of_var=='ptr'):
		name_of_setter+='PTR'
	if ( type_of_var=='int'):
		name_of_setter+='INT'
	if ( type_of_var=='float'):
		name_of_setter+='FLOAT'
	if ( type_of_var=='double'):
		name_of_setter+='DOUBLE'
	if ( type_of_var=='char'):
		name_of_setter+='CHAR'
	return name_of_setter



def find_type_of_var_in_C(type_of_var):
	name_of_var_in_c=type_of_var
	if( type_of_var=='long' or type_of_var=='long int'):
		name_of_var_in_c='long'
	if ( type_of_var=='pointer' or type_of_var=='ptr'):
		name_of_var_in_c='void *'	
	return name_of_var_in_c


#calulcates the size of the function frame
def calc_size_of_fun_in_stack():
	global function_dict
	
	#calculate the chunks needed in secure stack
	chunks_for_params=calculate_chunks_for_params_locals('params')
	chunks_for_local_vars=calculate_chunks_for_params_locals('locals')
	chunks_for_return_value=calculate_chunks_needed_for_a_size(int(function_dict['return_value_size']))
	chunks_for_base_pointer=calculate_chunks_needed_for_a_size(process_var_size('ptr'))
	chunks_for_return_address=calculate_chunks_needed_for_a_size(process_var_size('ptr'))
	total_chunks_needed=chunks_for_params+chunks_for_local_vars+chunks_for_return_value+chunks_for_base_pointer+chunks_for_return_address+int(chunks_for_stack_canary)
	function_dict['chunks_in_stack']=str(total_chunks_needed)
	function_dict['chunks_for_params']=str(chunks_for_params)
	function_dict['chunks_for_local_vars']=str(chunks_for_local_vars)
	function_dict['chunks_for_return_value']=str(chunks_for_return_value)
	function_dict['chunks_for_base_pointer']=str(chunks_for_base_pointer)
	function_dict['chunks_for_return_address']=str(chunks_for_return_address)
	function_dict['chunks_for_stack_canary']=str(chunks_for_stack_canary)
	for type_of_var in ['char','int','long','float','double','ptr']:
		num_of_var=int(function_dict['params'][type_of_var]['number'])
		chunks_for_type=calculate_chunks_needed_for_a_size(num_of_var*process_var_size(type_of_var))
		function_dict['chunks_for_'+type_of_var+'_params']=str(chunks_for_type)
	for type_of_var in ['char','int','long','float','double','ptr']:
		num_of_var=int(function_dict['locals'][type_of_var]['number'])
		chunks_for_type=calculate_chunks_needed_for_a_size(num_of_var*process_var_size(type_of_var))
		function_dict['chunks_for_'+type_of_var+'_locals']=str(chunks_for_type)
	
	
	
def add_code_for_function_calling(fun_name,write_to,params,use_secure_stack_setter_for_result,given_setter_to_use_to_write_retval):
	global all_functions_dict
	
	fun_dict=all_functions_dict[fun_name]
	chunks_for_params=fun_dict['chunks_for_params']
	chunks_for_local_vars=fun_dict['chunks_for_local_vars']
	chunks_for_return_value=fun_dict['chunks_for_return_value']
	chunks_for_base_pointer=fun_dict['chunks_for_base_pointer']
	chunks_for_return_address=fun_dict['chunks_for_return_address']
	fun_dict['num_of_times_called_in_code']=str(int(fun_dict['num_of_times_called_in_code'])+1)
	num_of_times_called_in_code=fun_dict['num_of_times_called_in_code']
	params_cnt=0
	offset_for_params_in_chunks=0
	all_chunks_of_fun=str(int(chunks_for_params)+int(chunks_for_local_vars)+int(chunks_for_return_value)+int(chunks_for_base_pointer)+int(chunks_for_return_address)+int(chunks_for_stack_canary))
	

	lines_to_append=[]
	#allocate mem in secure stack
	lines_to_append.append('returned_addr_after_allocating=allocate_mem_into_secure_stack_in_chunks('+fun_dict['chunks_in_stack']+');\n')
	lines_to_append.append('if (returned_addr_after_allocating==NULL) {printf("ERROR! no stack mem left -> line %d\\n",__LINE__);exit(8);}\n')
	
	#initialize parameters
	lines_to_append.append(' \n')
	#return address
	if stack_dec_num==0:
		lines_to_append.append('set_stack_pointer(returned_addr_after_allocating+('+chunks_for_params+'+'+chunks_for_return_value+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data), &&return_label_'+fun_name+'_no_'+num_of_times_called_in_code+');\n')
	else:
		lines_to_append.append('set_stack_pointer(returned_addr_after_allocating-('+chunks_for_params+'+'+chunks_for_return_value+'+'+chunks_for_return_address+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data), &&return_label_'+fun_name+'_no_'+num_of_times_called_in_code+');\n')
	#set value to the parameters
	for type_of_var in ['char','int','long','float','double','ptr']: #in that order!
		num_of_var=int(fun_dict['params'][type_of_var]['number'])
		if (num_of_var>0):
			lines_to_append.append('size_of_array_for_array_fun_parameters='+str(num_of_var)+'*'+str(process_var_size(type_of_var))+';\n')
			for i in range(num_of_var):
				value_of_var=params[params_cnt]
				params_cnt+=1
				if(value_of_var.lower()=='null'):
					value_of_var='0'
				lines_to_append.append('array_for_'+type_of_var+'_fun_'+fun_name+'_params['+str(i)+']='+value_of_var+';\n')
			if stack_dec_num==0:
				lines_to_append.append('insert_data_into_stack_mem(size_of_array_for_array_fun_parameters,(unsigned char*)array_for_'+type_of_var+'_fun_'+fun_name+'_params,(unsigned char*)returned_addr_after_allocating+('+str(offset_for_params_in_chunks)+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data));\n')
			else:
				lines_to_append.append('insert_data_into_stack_mem(size_of_array_for_array_fun_parameters,(unsigned char*)array_for_'+type_of_var+'_fun_'+fun_name+'_params,(unsigned char*)returned_addr_after_allocating-('+chunks_for_params+'-'+str(offset_for_params_in_chunks)+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data));\n')
		offset_for_params_in_chunks+=int(fun_dict['chunks_for_'+type_of_var+'_params'])

	#same for the arbitrary pointers
	num_of_var=int(fun_dict['params']['arb_ptr']['number'])
	for i in range(num_of_var):
		size_of_arb_ptr_data=fun_dict['params']['arb_ptr']['sizes'][i] #has to be an int, python doesn't know "sizeof()"
		if (params[params_cnt]!='NULL' and params[params_cnt]!='0'):
			if stack_dec_num==0:
				lines_to_append.append('insert_data_into_stack_mem('+size_of_arb_ptr_data+','+params[params_cnt]+',returned_addr_after_allocating+('+str(offset_for_params_in_chunks)+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data));\n')
			else:
				lines_to_append.append('insert_data_into_stack_mem('+size_of_arb_ptr_data+','+params[params_cnt]+',returned_addr_after_allocating-('+chunks_for_params+'-'+str(offset_for_params_in_chunks)+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data));\n')
		params_cnt+=1
		offset_for_params_in_chunks+=calculate_chunks_needed_for_a_size(int(size_of_arb_ptr_data))
	#base pointer
	if stack_dec_num==0:
		lines_to_append.append('set_stack_pointer(returned_addr_after_allocating+('+chunks_for_params+'+'+chunks_for_return_value+'+'+chunks_for_return_address+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data),base_pointer_for_stack);\n')
		lines_to_append.append('base_pointer_for_stack=returned_addr_after_allocating+('+chunks_for_params+'+'+chunks_for_return_value+'+'+chunks_for_return_address+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data);\n')
	else:
		lines_to_append.append('set_stack_pointer(returned_addr_after_allocating-('+chunks_for_params+'+'+chunks_for_return_value+'+'+chunks_for_return_address+'+'+chunks_for_base_pointer+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data),base_pointer_for_stack);\n')
		lines_to_append.append('base_pointer_for_stack=returned_addr_after_allocating-('+chunks_for_params+'+'+chunks_for_return_value+'+'+chunks_for_return_address+'+'+chunks_for_base_pointer+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data);\n')

	
	#add goto to the function code
	lines_to_append.append('goto '+fun_name+'_start_label;\n')
	#add return label
	lines_to_append.append('return_label_'+fun_name+'_no_'+num_of_times_called_in_code+':\n')
	#write result to
	if (fun_dict['return_value_type']!='' and fun_dict['return_value_type'].lower()!='none' and fun_dict['return_value_type'].lower!='null'):
		name_of_getter=find_name_of_getter(fun_dict['return_value_type'],0)
		if (use_secure_stack_setter_for_result):
			name_of_setter=given_setter_to_use_to_write_retval
			if (stack_grows_by_decreasing_numbers==0):
				lines_to_append.append(name_of_setter+'('+write_to+','+name_of_getter+'(last_unused_stack_memory+('+chunks_for_params+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)));\n')
			else:
				#now last_unused_stack_memory is above the position we need to access
				lines_to_append.append(name_of_setter+'('+write_to+','+name_of_getter+'(last_unused_stack_memory-('+chunks_for_params+'+'+chunks_for_return_value+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)));\n')
		else:	
			#now using last_unused_stack_memory (the stack pointer), and not returned_addr_after_allocating, since it might have changed after the call
			if (stack_grows_by_decreasing_numbers==0):
				lines_to_append.append(write_to+'='+name_of_getter+'(last_unused_stack_memory+('+chunks_for_params+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data));\n')
			else:
				lines_to_append.append(write_to+'='+name_of_getter+'(last_unused_stack_memory-('+chunks_for_params+'+'+chunks_for_return_value+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data));\n')
	for line in lines_to_append:
		dst_lines.append(line)



def add_code_for_function_calling_new_template(function_name,helping_args_for_fun_call_dict,params):
	#puts everything in a block of ({ .... }), which is treated as one command
	global all_functions_dict
	global return_addr_for_allocation_ctr
	global sz_of_array_fun_params_ctr
	global array_of_params_ctr
	
	fun_name=function_name
	fun_dict=all_functions_dict[fun_name]
	chunks_for_params=fun_dict['chunks_for_params']
	chunks_for_local_vars=fun_dict['chunks_for_local_vars']
	chunks_for_return_value=fun_dict['chunks_for_return_value']
	chunks_for_base_pointer=fun_dict['chunks_for_base_pointer']
	chunks_for_return_address=fun_dict['chunks_for_return_address']
	fun_dict['num_of_times_called_in_code']=str(int(fun_dict['num_of_times_called_in_code'])+1)
	num_of_times_called_in_code=fun_dict['num_of_times_called_in_code']
	params_cnt=0
	offset_for_params_in_chunks=0
	all_chunks_of_fun=str(int(chunks_for_params)+int(chunks_for_local_vars)+int(chunks_for_return_value)+int(chunks_for_base_pointer)+int(chunks_for_return_address)+int(chunks_for_stack_canary))
	
	#every variable must be different, since we might nest function calls
	return_addr_for_allocation_ctr+=1
	ret_addr_alloc='returned_addr_after_allocating_'+str(return_addr_for_allocation_ctr)

	lines_to_append=[]
	#allocate mem in secure stack
	lines_to_append.append('({ void *'+ret_addr_alloc+'=allocate_mem_into_secure_stack_in_chunks('+fun_dict['chunks_in_stack']+');\n')
	lines_to_append.append('if ('+ret_addr_alloc+'==NULL) {printf("ERROR! no stack mem left -> line %d\\n",__LINE__);exit(8);}\n')
	
	#initialize parameters
	lines_to_append.append(' \n')
	#return address
	if stack_dec_num==0:
		lines_to_append.append('set_stack_pointer('+ret_addr_alloc+'+('+chunks_for_params+'+'+chunks_for_return_value+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data), &&return_label_'+fun_name+'_no_'+num_of_times_called_in_code+');\n')
	else:
		lines_to_append.append('set_stack_pointer('+ret_addr_alloc+'-('+chunks_for_params+'+'+chunks_for_return_value+'+'+chunks_for_return_address+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data), &&return_label_'+fun_name+'_no_'+num_of_times_called_in_code+');\n')
	#set value to the parameters
	for type_of_var in ['char','int','long','float','double','ptr']: #in that order!
		num_of_var=int(fun_dict['params'][type_of_var]['number'])
		if (num_of_var>0):
			sz_of_array_fun_params_ctr+=1
			size_of_array_for_array_fun_params='size_of_array_for_array_fun_parameters_'+str(sz_of_array_fun_params_ctr)
			array_of_params_ctr+=1
			array_of_params_for_type_and_fun_name='array_for_'+type_of_var+'_fun_'+fun_name+'_params_'+str(array_of_params_ctr)
			lines_to_append.append('long '+size_of_array_for_array_fun_params+'='+str(num_of_var)+'*'+str(process_var_size(type_of_var))+';\n')
			if (type_of_var=='ptr'):
				type_of_var_in_c='void *'
			else:
				type_of_var_in_c=type_of_var
			lines_to_append.append(type_of_var_in_c+' '+array_of_params_for_type_and_fun_name+'['+str(num_of_var)+'];\n')
			for i in range(num_of_var):
				value_of_var=params[params_cnt]
				params_cnt+=1
				if(value_of_var.lower()=='null'):
					value_of_var='0'
				lines_to_append.append(''+array_of_params_for_type_and_fun_name+'['+str(i)+']='+value_of_var+';\n')
			if stack_dec_num==0:
				lines_to_append.append('insert_data_into_stack_mem('+size_of_array_for_array_fun_params+',(unsigned char*)'+array_of_params_for_type_and_fun_name+',(unsigned char*)'+ret_addr_alloc+'+('+str(offset_for_params_in_chunks)+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data));\n')
			else:
				lines_to_append.append('insert_data_into_stack_mem('+size_of_array_for_array_fun_params+',(unsigned char*)'+array_of_params_for_type_and_fun_name+',(unsigned char*)'+ret_addr_alloc+'-('+chunks_for_params+'-'+str(offset_for_params_in_chunks)+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data));\n')
		offset_for_params_in_chunks+=int(fun_dict['chunks_for_'+type_of_var+'_params'])

	#same for the arbitrary pointers
	num_of_var=int(fun_dict['params']['arb_ptr']['number'])
	for i in range(num_of_var):
		size_of_arb_ptr_data=fun_dict['params']['arb_ptr']['sizes'][i] #has to be an int, python doesn't know "sizeof()"
		if (params[params_cnt]!='NULL' and params[params_cnt]!='0'):
			if stack_dec_num==0:
				lines_to_append.append('insert_data_into_stack_mem('+size_of_arb_ptr_data+','+params[params_cnt]+','+ret_addr_alloc+'+('+str(offset_for_params_in_chunks)+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data));\n')
			else:
				lines_to_append.append('insert_data_into_stack_mem('+size_of_arb_ptr_data+','+params[params_cnt]+','+ret_addr_alloc+'-('+chunks_for_params+'-'+str(offset_for_params_in_chunks)+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data));\n')
		params_cnt+=1
		offset_for_params_in_chunks+=calculate_chunks_needed_for_a_size(int(size_of_arb_ptr_data))
	#base pointer
	if stack_dec_num==0:
		lines_to_append.append('set_stack_pointer('+ret_addr_alloc+'+('+chunks_for_params+'+'+chunks_for_return_value+'+'+chunks_for_return_address+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data),base_pointer_for_stack);\n')
		lines_to_append.append('base_pointer_for_stack='+ret_addr_alloc+'+('+chunks_for_params+'+'+chunks_for_return_value+'+'+chunks_for_return_address+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data);\n')
	else:
		lines_to_append.append('set_stack_pointer('+ret_addr_alloc+'-('+chunks_for_params+'+'+chunks_for_return_value+'+'+chunks_for_return_address+'+'+chunks_for_base_pointer+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data),base_pointer_for_stack);\n')
		lines_to_append.append('base_pointer_for_stack='+ret_addr_alloc+'-('+chunks_for_params+'+'+chunks_for_return_value+'+'+chunks_for_return_address+'+'+chunks_for_base_pointer+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data);\n')	
	#add goto to the function code
	lines_to_append.append('goto '+fun_name+'_start_label;\n')
	#add return label
	lines_to_append.append('return_label_'+fun_name+'_no_'+num_of_times_called_in_code+':\n ;')
	#return value
	if (stack_grows_by_decreasing_numbers==0):
		start_of_return_place='last_unused_stack_memory+('+chunks_for_params+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)'
	else: 
		start_of_return_place='last_unused_stack_memory-('+chunks_for_params+'+'+chunks_for_return_value+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)'
	if (fun_dict['return_value_type']!='' and fun_dict['return_value_type'].lower()!='none' and fun_dict['return_value_type'].lower!='null'):
		getter_name=find_name_of_getter(fun_dict['return_value_type'],0)
		lines_to_append.append(getter_name+'(('+start_of_return_place+'));\n')
	lines_to_append.append('})')
	ret_str=''
	for line in lines_to_append:
		ret_str+=line
	return ret_str
	
	
#these are the lines that are put at the start of each function (eg definitions of local var and param macros, setting of base pointer etc)
def add_the_function_header():
	global function_dict
	
	chunks_for_params=function_dict['chunks_for_params']
	chunks_for_local_vars=function_dict['chunks_for_local_vars']
	chunks_for_return_value=function_dict['chunks_for_return_value']
	chunks_for_base_pointer=function_dict['chunks_for_base_pointer']
	chunks_for_return_address=function_dict['chunks_for_return_address']	
	defines=[]
	offset_in_chunks=0
	lines_to_append=[]
	
	start_of_stack_canary='base_pointer_for_stack-('+str(int(chunks_for_stack_canary))+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)'

		
	#create the proper defines. Practically the addresses relevant to the base pointer
	start_of_parameters='base_pointer_for_stack-('+str(int(chunks_for_return_address)+int(chunks_for_return_value)+int(chunks_for_params))+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)'
	if stack_dec_num==1:
		start_of_parameters='base_pointer_for_stack+('+str(int(chunks_for_return_address)+int(chunks_for_return_value)+int(chunks_for_base_pointer))+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)'
	#params
	for type_of_var in ['char','int','long','float','double','ptr']: #in that order!
		num_of_var=int(function_dict['params'][type_of_var]['number'])
		for i in range(num_of_var):
			name_of_var=function_dict['params'][type_of_var]['names'][i]
			lines_to_append.append('#define '+name_of_var+' '+start_of_parameters+'+'+str(offset_in_chunks)+'*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data),'+str(i)+' \n')
			defines.append(name_of_var)
		if (num_of_var>0):
			lines_to_append.append(';'+find_type_of_var_in_C(type_of_var)+' array_for_'+type_of_var+'_fun_'+fun_name+'_params['+str(num_of_var)+'];\n')
		offset_in_chunks+=int(function_dict['chunks_for_'+type_of_var+'_params'])
	#arb_ptrs
	num_of_var=int(function_dict['params']['arb_ptr']['number'])
	for i in range(num_of_var):
		size_of_arb_ptr_data=function_dict['params']['arb_ptr']['sizes'][i] #has to be an int, python doesn't know "sizeof()"
		name_of_var=function_dict['params']['arb_ptr']['names'][i]
		lines_to_append.append('#define '+name_of_var+' ('+start_of_parameters+'+'+str(offset_in_chunks)+'*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)) \n')
		defines.append(name_of_var)
		offset_in_chunks+=calculate_chunks_needed_for_a_size(int(size_of_arb_ptr_data))

	start_of_local_vars='base_pointer_for_stack+('+str(int(chunks_for_base_pointer))+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)'
	if stack_dec_num==1:
		start_of_local_vars='base_pointer_for_stack-('+str(int(chunks_for_stack_canary)+int(chunks_for_local_vars))+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)'
	offset_in_chunks=0
	#local vars
	for type_of_var in ['char','int','long','float','double','ptr']: #in that order!
		num_of_var=int(function_dict['locals'][type_of_var]['number'])
		for i in range(num_of_var):
			name_of_var=function_dict['locals'][type_of_var]['names'][i]
			lines_to_append.append('#define '+name_of_var+' '+start_of_local_vars+'+'+str(offset_in_chunks)+'*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data),'+str(i)+' \n')
			defines.append(name_of_var)
		offset_in_chunks+=int(function_dict['chunks_for_'+type_of_var+'_locals'])
	#arb_ptrs
	num_of_var=int(function_dict['locals']['arb_ptr']['number'])
	for i in range(num_of_var):
		size_of_arb_ptr_data=function_dict['locals']['arb_ptr']['sizes'][i] #has to be an int, python doesn't know "sizeof()"
		name_of_var=function_dict['locals']['arb_ptr']['names'][i]
		lines_to_append.append('#define '+name_of_var+' ('+start_of_local_vars+'+'+str(offset_in_chunks)+'*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)) \n')
		defines.append(name_of_var)
		offset_in_chunks+=calculate_chunks_needed_for_a_size(int(size_of_arb_ptr_data))
			
	function_dict['defines']=copy.deepcopy(defines)
	
	#set the stack canary
	if (use_stack_canaries>0):
		lines_to_append.append('//set stack canary \n');
		lines_to_append.append('set_stack_canary_in_stack('+start_of_stack_canary+');\n')
	
	for line in lines_to_append:
		dst_lines.append(line)
	
	
	
	
#the code at the end of each function
def add_the_function_footer(bool_for_undef):
	global function_dict
	
	chunks_for_return_address=function_dict['chunks_for_return_address']	
	chunks_for_base_pointer=function_dict['chunks_for_base_pointer']
	chunks_for_local_vars=function_dict['chunks_for_local_vars']

	start_of_stack_canary='base_pointer_for_stack-('+str(int(chunks_for_stack_canary))+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)'


	lines_to_append=[]
	#check the stack canary
	if (use_stack_canaries>0):
		lines_to_append.append('//check stack canary\n')
		lines_to_append.append('check_stack_canary_in_stack('+start_of_stack_canary+',__LINE__);\n')
	
	#set the former base pointer
	lines_to_append.append('temp_base_pointer=base_pointer_for_stack;\n')
	lines_to_append.append('base_pointer_for_stack=get_stack_pointer(base_pointer_for_stack);\n')
	#pop the stack frame
	if (function_dict['use_of_explicit_stack_allocation']=='0'):
		lines_to_append.append('free_mem_from_secure_stack_in_chunks('+function_dict['chunks_in_stack']+');\n')
	else:
		#place the stack pointer into its position right after the local vars
		if (stack_grows_by_decreasing_numbers==0):
			lines_to_append.append('last_unused_stack_memory=temp_base_pointer+('+str(int(chunks_for_base_pointer)+int(chunks_for_local_vars))+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data);\n')
		else:
			lines_to_append.append('last_unused_stack_memory=temp_base_pointer-('+str(int(chunks_for_local_vars)+int(chunks_for_stack_canary))+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data);\n')
		lines_to_append.append('free_mem_from_secure_stack_in_chunks('+function_dict['chunks_in_stack']+');\n')
	if(bool_for_undef):
		#undef
		for i in function_dict['defines']:
			lines_to_append.append('#undef '+i+'\n')
	#lines_to_append.append('printf("address_of_ret_lab2=%ld\\n",(long)(*(long*)(get_stack_pointer(temp_base_pointer-('+str(int(chunks_for_return_address))+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)))));')
	#add goto return address
	if stack_dec_num==0:
		lines_to_append.append('goto *(get_stack_pointer(temp_base_pointer-('+str(int(chunks_for_return_address))+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)));\n')
	else:
		lines_to_append.append('goto *(get_stack_pointer(temp_base_pointer+('+str(int(chunks_for_base_pointer))+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)));\n')
	#writing of the return value is done where the function is being called
	for line in lines_to_append:
		dst_lines.append(line)
		

str_for_new_ret_exp="PYTHON PLEASE USE THIS RETURN EXPRESSION:"	
		
#set the return value
def copy_result_to_return_space(line_of_return):
	global function_dict
	
	chunks_for_params=function_dict['chunks_for_params']
	chunks_for_local_vars=function_dict['chunks_for_local_vars']
	chunks_for_return_value=function_dict['chunks_for_return_value']
	chunks_for_base_pointer=function_dict['chunks_for_base_pointer']
	chunks_for_return_address=function_dict['chunks_for_return_address']
	
	lines_to_append=[]
	if stack_dec_num==0:
		start_of_return_place='base_pointer_for_stack-('+str(int(chunks_for_return_address)+int(chunks_for_return_value))+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)'
	else:
		start_of_return_place='base_pointer_for_stack+('+str(int(chunks_for_return_address)+int(chunks_for_base_pointer))+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)'
	if (function_dict['return_value_type']!='' and function_dict['return_value_type'].lower()!='none' and function_dict['return_value_type'].lower!='null'):
		setter_name=find_name_of_setter(function_dict['return_value_type'],0)
		if (str_for_new_ret_exp in line_of_return):
			new_return_expression=line_of_return.split('|')[1].strip().split(str_for_new_ret_exp)[1].strip()
			lines_to_append.append(setter_name+'(('+start_of_return_place+'),'+new_return_expression+');\n')
		else:	
			lines_to_append.append(setter_name+'(('+start_of_return_place+'),'+function_dict['return_expression']+');\n')
	for line in lines_to_append:
		dst_lines.append(line)


def custom_split_of_str(string,char_to_split):
	#makes sure that we split when we are NOT between a ({ and a }) (blocked expression in C)
	#and NOT between a " and a " (string) <- this might be an argument, that's why
	#and NOT between a { and } (possible array definition)
	ret_list=[]
	current_part=""
	num_of_paren_block1=0
	num_of_paren_block2=0
	num_of_double_quotes=0
	num_of_braces=0
	for i,char in enumerate(string):
		if ( string[i]=='(' and len(string)>i-1 and string[i+1]=='{' and num_of_double_quotes%2==0):
			num_of_paren_block1+=1
		if ( string[i]=='}' and len(string)>i-1 and string[i+1]==')' and num_of_double_quotes%2==0):
			num_of_paren_block2+=1
		if (string[i]=="\""):
			num_of_double_quotes+=1
		if (string[i]=="{" and num_of_double_quotes%2==0):
			num_of_braces+=1
		if (string[i]=="}" and num_of_double_quotes%2==0):
			num_of_braces-=1
		if (string[i]==char_to_split and num_of_paren_block1==num_of_paren_block2 and num_of_double_quotes%2==0 and num_of_braces==0):
			ret_list.append(current_part)
			current_part=""
		else:
			current_part+=string[i]
	ret_list.append(current_part)
	return ret_list


def get_random_string(size):
	return ''.join(random.choice(string.ascii_uppercase + string.digits) for _ in range(size))

new_function_str='PLEASE PYTHON INIT A FUNCTION HERE'
call_of_function_str='HEY PYTHON CALLING FUNCTION'
call_of_function_new_str='HEY PYTHON CALL FUNCTION WITH NEW TEMPLATE'
start_of_function_str='START_OF_FUNCTION'
end_of_function_str='END_OF_FUNCTION'
return_point_of_function_str='RETURN_POINT_OF_FUNCTION'
name_of_function_str='NAME_OF_FUNCTION'
return_value_size_str='RETURN_VALUE_SIZE'
num_of_parameters_str='NUM_OF_PARAMETERS'
num_of_local_variables_str='NUM_OF_LOCAL_VARIABLES'
end_of_parameters_str='END_OF_PARAMETERS'
end_of_local_variables_str='END_OF_LOCAL_VARIABLES'
return_expression_str='RETURN_EXPRESSION'
write_result_to_str='WRITE RESULT TO'
parameters_for_calling_str='PARAMETERS TO CALL WITH'
helping_args_for_fun_call_str='HELPING ARGS FOR FUN CALL'
allocate_in_secure_stack_a_block_str='ALLOCATE STACK DATA OF SIZE'

all_functions_dict={}
function_dict={}
fun_name=""
in_function_declaration=0
in_parameters=0
in_local_variables=0
ret_val_size=0
needed_part_of_str=''
params_locals_lines=[]
cnt_params_locals_lines=0
in_function_code=0
list_of_params_currently_called=[]
write_result_to_currently_called=''
#variables to distinguish between different calls to a function. 
#We use a different one every time, since we might have nested calls (fun1(fun2(a)))
#and if we use the same ones, they get clobbered
return_addr_for_allocation_ctr=0
sz_of_array_fun_params_ctr=0
array_of_params_ctr=0;


for line in src_lines:
	
	#parse the lines and populate the dictionary
	if ((in_parameters) or (in_local_variables)) and (cnt_params_locals_lines<7): #7, each for every type of parameter or local variable
		cnt_params_locals_lines+=1
		params_locals_lines.append(line)
		continue
		
	if (in_parameters):
		process_params_locals('params')
	if (in_local_variables):
		process_params_locals('locals')
	
	if new_function_str in line:
		function_dict={}
		in_function_declaration=1
	if start_of_function_str in line and in_function_declaration==1:
		in_function_code=1
		calc_size_of_fun_in_stack()
		function_dict['num_of_times_called_in_code']='0'
		fun_name=function_dict['name']
		function_dict['use_of_explicit_stack_allocation']='0'
		all_functions_dict[fun_name]=copy.deepcopy(function_dict) #we might need it inside the function, so save it
		dst_lines.append(function_dict['name']+"_start_label:\n")
		add_the_function_header()
		continue
	if end_of_function_str in line and in_function_code==1:
		in_function_declaration=0
		in_function_code=0
		add_the_function_footer(1)
		dst_lines.append(function_dict['name']+"_end_label:\n")
		all_functions_dict[fun_name]=copy.deepcopy(function_dict) #do it a second time to have it as a whole
		gc.collect()
		continue
	if (allocate_in_secure_stack_a_block_str in line) and (in_function_code):
		#ALLOCATE STACK DATA OF SIZE: 500 | SETTER FOR THEM AND VAR : SET_STACK_PTR(X,
		expression_of_size_in_bytes=line.split('|')[0].split(':')[1].strip()
		setter_for_data=line.split('|')[1].split(':')[1].strip()
		function_dict['use_of_explicit_stack_allocation']='1'
		if stack_dec_num==0:
			dst_lines.append(setter_for_data+'allocate_mem_into_secure_stack_return_ptr_only('+ expression_of_size_in_bytes+'));\n')
		else:
			dst_lines.append(setter_for_data+'allocate_mem_into_secure_stack_return_ptr_only_after_alloc('+ expression_of_size_in_bytes+'));\n')
		continue
	if (name_of_function_str in line) and (in_function_declaration):
		fun_name=line.strip().split(':')[1].strip()
		function_dict['name']=fun_name
	if (return_value_size_str in line) and (in_function_declaration):
		needed_part_of_str=line.strip().split(':')[1].strip()
		ret_val_size=process_var_size(needed_part_of_str)
		function_dict['return_value_size']=str(ret_val_size)
		function_dict['return_value_type']=needed_part_of_str
	if (num_of_parameters_str in line) and (in_function_declaration):
		needed_part_of_str=line.strip().split(':')[1].strip()
		function_dict['num_of_parameters']=needed_part_of_str
		in_parameters=1
		params_locals_lines=[]
		cnt_params_locals_lines=0
	if (end_of_parameters_str in line) and (in_function_declaration) and (in_parameters):
		in_parameters=0
	if (num_of_local_variables_str in line) and (in_function_declaration):
		needed_part_of_str=line.strip().split(':')[1].strip()
		function_dict['num_of_local_variables']=needed_part_of_str
		in_local_variables=1
		params_locals_lines=[]
		cnt_params_locals_lines=0
	if (end_of_local_variables_str in line) and (in_function_declaration) and (in_local_variables):
		in_local_variables=0
	if (return_expression_str in line) and (in_function_declaration):
		needed_part_of_str=line.strip().split(':')[1].strip()
		function_dict['return_expression']=needed_part_of_str
	
	#for calling a function
	if (call_of_function_str) in line:
		function_name=line.split('|')[0].strip().split(':')[1].strip()
		num_of_params=int(all_functions_dict[function_name]['num_of_parameters'])
		put_result_var_in_secure_stack=0
		given_setter_to_use_to_write_retval=''
		if (write_result_to_str in line):
			write_result_to_currently_called=line.split('|')[1].strip().split(':')[1].strip()
			if ('__securevar_' in write_result_to_currently_called):
				put_result_var_in_secure_stack=1
				given_setter_to_use_to_write_retval=write_result_to_currently_called.split('__securevar_')[1].strip()
				write_result_to_currently_called=write_result_to_currently_called.split('__securevar_')[0].strip()
			if (parameters_for_calling_str in line):
				list_of_params_currently_called=line.split('|')[2].strip().split(':')[1].strip().split(',')
		else:
			if (parameters_for_calling_str in line):
				list_of_params_currently_called=line.split('|')[1].strip().split(':')[1].strip().split(',')
		dst_lines.append(line)
		#@'s are used in place of commas
		list_of_params_currently_called=[x.replace('@',',') for x in list_of_params_currently_called]
		add_code_for_function_calling(function_name,write_result_to_currently_called,list_of_params_currently_called,put_result_var_in_secure_stack,given_setter_to_use_to_write_retval)
		if (function_name==function_dict['name']):
			function_dict['num_of_times_called_in_code']=str(int(function_dict['num_of_times_called_in_code'])+1)
		else:
			all_functions_dict[function_name]['num_of_times_called_in_code']=str(int(all_functions_dict[function_name]['num_of_times_called_in_code'])+1)
		continue
		
	#for calling a function using the new template
	#{{{HEY PYTHON CALL FUNCTION WITH NEW TEMPLATE: <name_of_fun> | HELPING ARGS FOR FUN CALL: arg1="value1",arg2="value2",.. |PARAMETERS TO CALL WITH : param1,param2 ... }}}
	line_temp=line
	got_into_while=0
	while (call_of_function_new_str) in line_temp:
		got_into_while=1
		#matches a string that starts with {{{ , ends with }}}, and does not contain a {{{
		substring_for_fun_call= re.search(r"\{\{\{((?!\{\{\{).)*?\}\}\}", line_temp,re.S).group()
		code_for_fun=substring_for_fun_call
		substring_for_fun_call=substring_for_fun_call[3:-3] #remove {{{ and }}}
		function_name=custom_split_of_str(custom_split_of_str(substring_for_fun_call,'|')[0].strip(),':')[1].strip()
		num_of_params=int(all_functions_dict[function_name]['num_of_parameters'])
		helping_args_for_fun_call=custom_split_of_str(custom_split_of_str(substring_for_fun_call,'|')[1].strip(),':')[1].strip() #split by '|', split by ':' and strip
		helping_args_for_fun_call_dict={}
		#create the dict of the arguments
		for item in custom_split_of_str(helping_args_for_fun_call,','):
			if len(custom_split_of_str(item,'='))>1:
				helping_args_for_fun_call_dict[custom_split_of_str(item,'=')[0].strip()]=custom_split_of_str(item,'=')[1].strip()
		if (parameters_for_calling_str in substring_for_fun_call):
			list_of_params_currently_called=custom_split_of_str(custom_split_of_str(custom_split_of_str(substring_for_fun_call,'|')[2].strip(),':')[1].strip(),',') #split by '|', split by ':', split by ','
		list_of_params_currently_called=[x.replace('@',',') for x in list_of_params_currently_called] #if the param has "@"'s in it, it means that it wanted to put ","'s in these places. It used "@" because of splitting.
		code_for_replacing_fun=add_code_for_function_calling_new_template(function_name,helping_args_for_fun_call_dict,list_of_params_currently_called)
		if (function_name==function_dict['name']):
			function_dict['num_of_times_called_in_code']=str(int(function_dict['num_of_times_called_in_code'])+1)
		else:
			all_functions_dict[function_name]['num_of_times_called_in_code']=str(int(all_functions_dict[function_name]['num_of_times_called_in_code'])+1)
		line_temp= line_temp.replace(code_for_fun, code_for_replacing_fun, 1)
		#let's make line_temp to be one line, because multiple invocations of a function may have turned it into multiple lines
		line_temp=line_temp.replace('\n', ' ').replace('\r', '')
	if(got_into_while):
		dst_lines.append(line_temp+'\n')
		continue
	
	if (return_point_of_function_str in line) and (in_function_code==1):
		copy_result_to_return_space(line)
		add_the_function_footer(0) #don't undef!
		continue

	if (in_function_declaration==0) or (in_function_code==1):
		dst_lines.append(line)


#print(all_functions_dict)
for line in dst_lines:
	tests_dst.write(line)
tests_dst.close()
