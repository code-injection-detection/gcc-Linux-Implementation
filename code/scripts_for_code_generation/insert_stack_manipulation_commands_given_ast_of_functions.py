#!/usr/bin/env python3

import sys
import copy
import platform
import gc
import re
import random
import string
import pickle

'''
This script inserts the commands that implement the secure stack.
It parses the function annotations in tests_for_stack_commands_supporting_ast_parsing.c
It also reads the ast created by our extensions to pycparser, that target the same file.
The parameters and local variables are grouped into arrays per variable type (chars in an array, ints in an array, etc)
'''

#for the stack:
'''
 <former stack frame>
 args
 return value
 return address
 base pointer
 (stack canary)
 local vars  <---stack pointer
''' 

tests_src=open('1st_pass_of_C_reconstruction_of_tests.c','r')

src_lines= tests_src.readlines()
src_lines = [x for x in src_lines if not "PYTHON IGNORE" in x]
dst_lines=[]

print_output=False

tests_src.close()
if print_output==False:
	tests_dst=open('2nd_pass_of_C_reconstruction_of_tests.c','w')

number_of_stack_key_bytes=int(sys.argv[1])
number_of_stack_useful_data_bytes=int(sys.argv[2])
number_of_mac_bytes=int(sys.argv[3])
use_stack_canaries=int(sys.argv[4])

stack_dec_num=1
op_to_move_in_stack='-'

functions_dict_with_our_info={}

with open('semantic_data', 'rb') as f:
	semantic_dict=pickle.load(f)
	all_functions_dict=semantic_dict['functions']
	typedefs=semantic_dict['typedefs']
	global_decls=semantic_dict['global_decls']
	all_structs=semantic_dict['all_structs']
	global_decl_names=semantic_dict['global_decl_names']

def calculate_chunks_needed_for_a_size(size_in_bytes):
	chunks_num=(size_in_bytes//number_of_stack_useful_data_bytes)
	if (chunks_num*number_of_stack_useful_data_bytes<size_in_bytes):
		chunks_num+=1	
	return chunks_num

size_of_stack_canary=0
if (use_stack_canaries>0):
	size_of_stack_canary=8
chunks_for_stack_canary=str(calculate_chunks_needed_for_a_size(size_of_stack_canary))


def get_size_of_type(type_of_var):
	if type_of_var=="pointer" or type_of_var=="ptr": return 8;
	list_of_supported_types=['void','float','double','long','long int','int','char','long double']
	type_of_var_without_unsigned=''.join(type_of_var.split("unsigned ",1))
	if type_of_var in typedefs:
		(tpdf,sz)=typedefs[type_of_var]
		return sz
	elif type_of_var_without_unsigned in list_of_supported_types:
		sz= {
			'void': 0,
			'float': 4,
			'double': 8,
			'long':8, 
			'long int':8,
			'int': 4,
			'char': 1,
			'long double':16 #careful: not supported yet
			}[type_of_var_without_unsigned]
		return sz
	else:
		print("ERROR IN SIZE CALC")
		print(type_of_var)
		sys.exit(-1)


def return_simple_type_of_var(type_of_var_full):
	type_of_var=''.join(type_of_var_full.split("unsigned ",1)) #remove unsigned
	if type_of_var in ['void','float','double','long','long int','int','char','long double','pointer']:
		return type_of_var
	else:
		return 'not_simple_type'


#for a function, creates a list of the parameters and local variables, in the order that they will be put into the stack
'''
doubles
floats
pointers
longs
ints
chars
<arrays here>

''' 
def split_params_locals_of_a_fun_per_type(function_name):
	global functions_dict_with_our_info
	
	function_dict=all_functions_dict[function_name]
	
	if function_name not in functions_dict_with_our_info:
		functions_dict_with_our_info[function_name]={}
	
	fun_params=function_dict["fun_decl"][0][1]['list_of_arguments']
	fun_locals=function_dict["fun_locals"]
	
	params_in_stack={}
	locals_in_stack={}
	
	#find the variables with unknown size
	params_with_unknown_size=[]
	locals_with_unknown_size=[]
	for i,param in enumerate(fun_params):
		if param[1]<0:
			params_with_unknown_size.append(param)
			fun_params.pop(i) #remove that element
			sys.stderr.write('ERROR!!!!!!. Variable size parameters not supported!\n')
			print(param)
			sys.exit(-1)
			
	for i,local_var in enumerate(fun_locals):
		if local_var[1]<0:
			locals_with_unknown_size.append(local_var)
			fun_locals.pop(i)
	
	
	#simple params
	total_chunks_needed_for_simple_params=0
	total_chunks_needed_for_simple_locals=0
	for type_of_var in ['char','int','long','pointer','float','double']:
		params_in_stack[type_of_var]={} ;locals_in_stack[type_of_var]={}
		params_in_stack[type_of_var]['dicts']=[] ;locals_in_stack[type_of_var]['dicts']=[]
		params_in_stack[type_of_var]['sizes']=[] ;locals_in_stack[type_of_var]['sizes']=[]
		params_in_stack[type_of_var]['total_size']=0 ; locals_in_stack[type_of_var]['total_size']=0
		
		for i,param in enumerate(fun_params):
			if return_simple_type_of_var(param[0][0])==type_of_var:
				params_in_stack[type_of_var]['dicts'].append(copy.deepcopy(param))
				params_in_stack[type_of_var]['sizes'].append(param[1])
				params_in_stack[type_of_var]['total_size']+=param[1]
		
		for i,local_var in enumerate(fun_locals):
			if return_simple_type_of_var(local_var[0][0])==type_of_var:
				locals_in_stack[type_of_var]['dicts'].append(copy.deepcopy(local_var))
				locals_in_stack[type_of_var]['sizes'].append(local_var[1])
				locals_in_stack[type_of_var]['total_size']+=local_var[1]
	
		params_in_stack[type_of_var]['chunks_needed']=calculate_chunks_needed_for_a_size(params_in_stack[type_of_var]['total_size'])
		locals_in_stack[type_of_var]['chunks_needed']=calculate_chunks_needed_for_a_size(locals_in_stack[type_of_var]['total_size'])
		
		total_chunks_needed_for_simple_params+=params_in_stack[type_of_var]['chunks_needed']
		total_chunks_needed_for_simple_locals+=locals_in_stack[type_of_var]['chunks_needed']
		
	params_in_stack['total_chunks_needed_for_simple_params']=total_chunks_needed_for_simple_params
	locals_in_stack['total_chunks_needed_for_simple_locals']=total_chunks_needed_for_simple_locals
	
	#other params
	params_in_stack['other_params']={}; locals_in_stack['other_params']={}
	params_in_stack['other_params']['dicts']=[] ;locals_in_stack['other_params']['dicts']=[]
	params_in_stack['other_params']['sizes']=[] ;locals_in_stack['other_params']['sizes']=[]
	
	total_chunks_needed_for_other_params=0
	total_chunks_needed_for_other_locals=0
	for i,param in enumerate(fun_params):
		if return_simple_type_of_var(param[0][0]) not in ['char','int','long','pointer','float','double']:
			params_in_stack['other_params']['dicts'].append(copy.deepcopy(param))
			params_in_stack['other_params']['sizes'].append(param[1])
			total_chunks_needed_for_other_params+=calculate_chunks_needed_for_a_size(param[1])
	
	for i,local_var in enumerate(fun_locals):
		if return_simple_type_of_var(local_var[0][0]) not in ['char','int','long','pointer','float','double']:
			locals_in_stack['other_params']['dicts'].append(copy.deepcopy(local_var))
			locals_in_stack['other_params']['sizes'].append(local_var[1])
			total_chunks_needed_for_other_locals+=calculate_chunks_needed_for_a_size(local_var[1])
			
	params_in_stack['total_chunks_needed_for_other_params']=total_chunks_needed_for_other_params
	locals_in_stack['total_chunks_needed_for_other_locals']=total_chunks_needed_for_other_locals
	
	params_in_stack['total_chunks_needed']=params_in_stack['total_chunks_needed_for_other_params'] + params_in_stack['total_chunks_needed_for_simple_params']
	locals_in_stack['total_chunks_needed']=locals_in_stack['total_chunks_needed_for_other_locals'] + locals_in_stack['total_chunks_needed_for_simple_locals']
	
	#return value
	return_value_dict=copy.deepcopy(function_dict["fun_decl"][0][1]['return_value'])
	retval={}
	retval['dict']=return_value_dict
	retval['size']=return_value_dict[1]
	retval['total_chunks_needed']=calculate_chunks_needed_for_a_size(retval['size'])
	
	functions_dict_with_our_info[function_name]['params_in_stack']=params_in_stack
	functions_dict_with_our_info[function_name]['locals_in_stack']=locals_in_stack
	functions_dict_with_our_info[function_name]['params_with_unknown_size']=params_with_unknown_size
	functions_dict_with_our_info[function_name]['locals_with_unknown_size']=locals_with_unknown_size
	functions_dict_with_our_info[function_name]['return_value']=retval
	
	return (params_in_stack,locals_in_stack,params_with_unknown_size,locals_with_unknown_size,retval)

			

		
		
def find_name_of_getter(type_of_var_full,use_array=1):
	type_of_var=''.join(type_of_var_full.split("unsigned ",1)) #remove unsigned
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
	
	
	
def find_name_of_setter(type_of_var_full,use_array=1):
	type_of_var=''.join(type_of_var_full.split("unsigned ",1)) #remove unsigned
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
	
def find_name_of_stack_setter_in_caps(type_of_var_full):
	type_of_var=''.join(type_of_var_full.split("unsigned ",1)) #remove unsigned
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
def calc_size_of_fun_in_stack(function_name):
	global functions_dict_with_our_info
	
	function_dict=all_functions_dict[function_name]
	our_function_dict=functions_dict_with_our_info[function_name]
		
	#calculate the chunks needed in secure stack
	chunks_for_params=our_function_dict['params_in_stack']['total_chunks_needed']
	chunks_for_local_vars=our_function_dict['locals_in_stack']['total_chunks_needed']
	chunks_for_return_value=our_function_dict['return_value']['total_chunks_needed']
	chunks_for_base_pointer_and_retaddr=calculate_chunks_needed_for_a_size(get_size_of_type('ptr')*2)
	total_chunks_needed=chunks_for_params+chunks_for_local_vars+chunks_for_return_value+chunks_for_base_pointer_and_retaddr+int(chunks_for_stack_canary)

	our_function_dict['chunks_in_stack']=total_chunks_needed

	return total_chunks_needed
	
	

def add_code_for_function_calling_new_template(function_name,helping_args_for_fun_call_dict,params):
	#puts everything in a block of ({ .... }), which is treated as one command
	global all_functions_dict
	global return_addr_for_allocation_ctr
	global sz_of_array_fun_params_ctr
	global array_of_params_ctr
	
	global functions_dict_with_our_info
	
	fun_name=function_name
	function_dict=all_functions_dict[fun_name]
	our_function_dict=functions_dict_with_our_info[fun_name]
		
	chunks_for_params=str(our_function_dict['params_in_stack']['total_chunks_needed'])
	chunks_for_local_vars=str(our_function_dict['locals_in_stack']['total_chunks_needed'])
	chunks_for_return_value=str(our_function_dict['return_value']['total_chunks_needed'])
	chunks_for_base_pointer_and_retaddr=str(calculate_chunks_needed_for_a_size(get_size_of_type('ptr')*2))

	our_function_dict['num_of_times_called_in_code']=str(int(our_function_dict['num_of_times_called_in_code'])+1)
	num_of_times_called_in_code=our_function_dict['num_of_times_called_in_code']
	params_cnt=0
	offset_for_params_in_chunks=our_function_dict['params_in_stack']['total_chunks_needed_for_other_params']
	all_chunks_of_fun=str(int(chunks_for_params)+int(chunks_for_local_vars)+int(chunks_for_return_value)+int(chunks_for_base_pointer_and_retaddr)+int(chunks_for_stack_canary))
	
	#every variable must be different, since we might nest function calls
	return_addr_for_allocation_ctr+=1
	ret_addr_alloc='returned_addr_after_allocating_'+str(return_addr_for_allocation_ctr)

	lines_to_append=[]
	#allocate mem in secure stack
	lines_to_append.append('({ void *'+ret_addr_alloc+'=allocate_mem_into_secure_stack_in_chunks('+all_chunks_of_fun+');\n')
	lines_to_append.append('if ('+ret_addr_alloc+'==NULL) {printf("ERROR! no stack mem left -> line %d\\n",__LINE__);exit(8);}\n')
	
	lines_to_append.append(' \n')
	#return address
	lines_to_append.append('set_stack_pointer_array_element('+ret_addr_alloc+'-('+chunks_for_params+'+'+chunks_for_return_value+'+'+chunks_for_base_pointer_and_retaddr+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data),1, &&return_label_'+fun_name+'_no_'+num_of_times_called_in_code+');\n')
	#set value to the parameters
	for type_of_var in ['char','int','long','float','double','pointer']:
		dict_to_look=our_function_dict['params_in_stack'][type_of_var]
		num_of_var=len(dict_to_look['sizes'])
		
		if (num_of_var>0):
			#create the array with the initial variables
			sz_of_array_fun_params_ctr+=1
			size_of_array_for_array_fun_params='size_of_array_for_array_fun_parameters_'+str(sz_of_array_fun_params_ctr)
			array_of_params_ctr+=1
			array_of_params_for_type_and_fun_name='array_for_'+type_of_var+'_fun_'+fun_name+'_params_'+str(array_of_params_ctr)
			lines_to_append.append('long '+size_of_array_for_array_fun_params+'='+str(num_of_var)+'*'+str(get_size_of_type(type_of_var))+';\n')
			if (type_of_var=='pointer'):
				type_of_var_in_c='void *'
			else:
				type_of_var_in_c=type_of_var
			lines_to_append.append(type_of_var_in_c+' '+array_of_params_for_type_and_fun_name+'['+str(num_of_var)+'];\n')
			
			#iterate over the params, and set the value
			cnt_for_type_of_var=0
			for j,param in enumerate(function_dict["fun_decl"][0][1]['list_of_arguments']):
				if type_of_var==return_simple_type_of_var(param[0][0]):
					value_of_var=params[j]
					if(value_of_var.lower()=='null'):
						value_of_var='0'
					lines_to_append.append(''+array_of_params_for_type_and_fun_name+'['+str(cnt_for_type_of_var)+']='+value_of_var+';\n')
					cnt_for_type_of_var+=1

			lines_to_append.append('insert_data_into_stack_mem('+size_of_array_for_array_fun_params+',(unsigned char*)'+array_of_params_for_type_and_fun_name+',(unsigned char*)'+ret_addr_alloc+'-('+chunks_for_params+'-'+str(offset_for_params_in_chunks)+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data));\n')
		offset_for_params_in_chunks+=int(dict_to_look['chunks_needed'])

	offset_for_params_in_chunks=0 #the simple vars were put first (above) into the stack
	#same for the other parameters (structs etc)
	dict_to_look=our_function_dict['params_in_stack']['other_params']
	num_of_var=len(dict_to_look['sizes'])
	cnt_for_other_param=0
	for j,param in enumerate(function_dict["fun_decl"][0][1]['list_of_arguments']):
		if return_simple_type_of_var(param[0][0])=='not_simple_type':
			#we have the next param that classifies as "other params"
			size_of_arb_ptr_data=dict_to_look['sizes'][cnt_for_other_param]
			value_of_var=params[j]
			lines_to_append.append('insert_data_into_stack_mem('+size_of_arb_ptr_data+','+value_of_var+','+ret_addr_alloc+'-('+chunks_for_params+'-'+str(offset_for_params_in_chunks)+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data));\n')
			cnt_for_other_param+=1
			offset_for_params_in_chunks+=calculate_chunks_needed_for_a_size(int(size_of_arb_ptr_data))
	#base pointer
	lines_to_append.append('set_stack_pointer_array_element('+ret_addr_alloc+'-('+chunks_for_params+'+'+chunks_for_return_value+'+'+chunks_for_base_pointer_and_retaddr+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data),0,base_pointer_for_stack);\n')
	lines_to_append.append('base_pointer_for_stack='+ret_addr_alloc+'-('+chunks_for_params+'+'+chunks_for_return_value+'+'+chunks_for_base_pointer_and_retaddr+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data);\n')	
	#add goto to the function code
	lines_to_append.append('goto '+fun_name+'_start_label;\n')
	#add return label
	lines_to_append.append('return_label_'+fun_name+'_no_'+num_of_times_called_in_code+':\n ;')
	#return value
	start_of_return_place='last_unused_stack_memory-('+chunks_for_params+'+'+chunks_for_return_value+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)'
	retval_dict=functions_dict_with_our_info[function_name]['return_value']['dict']
	if retval_dict[0][0]!='void':
		getter_name=find_name_of_getter(retval_dict[0][0],0)
		lines_to_append.append(getter_name+'(('+start_of_return_place+'));\n')
	lines_to_append.append('})')
	ret_str=''
	for line in lines_to_append:
		ret_str+=line
	return ret_str
	
	
#these are the lines that are put at the start of each function (eg definitions of local var and param macros, setting of base pointer etc)
def add_the_function_header(function_name):

	global all_functions_dict
	global functions_dict_with_our_info
	
	fun_name=function_name
	function_dict=all_functions_dict[fun_name]
	our_function_dict=functions_dict_with_our_info[fun_name]
	
	chunks_for_params=str(our_function_dict['params_in_stack']['total_chunks_needed'])
	chunks_for_local_vars=str(our_function_dict['locals_in_stack']['total_chunks_needed'])
	chunks_for_return_value=str(our_function_dict['return_value']['total_chunks_needed'])
	chunks_for_base_pointer_and_retaddr=str(calculate_chunks_needed_for_a_size(get_size_of_type('ptr')*2))
	
	defines=[]
	offset_in_chunks=our_function_dict['params_in_stack']['total_chunks_needed_for_other_params']
	lines_to_append=[]
	
	start_of_stack_canary='base_pointer_for_stack-('+str(int(chunks_for_stack_canary))+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)'

		
	#create the proper defines. Practically the addresses relevant to the base pointer
	start_of_parameters='base_pointer_for_stack+('+str(int(chunks_for_return_value)+int(chunks_for_base_pointer_and_retaddr))+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)'
	#params
	for type_of_var in ['char','int','long','float','double','pointer']: #in that order!
		dict_to_look=our_function_dict['params_in_stack'][type_of_var]
		num_of_var=len(dict_to_look['sizes'])
		for i in range(num_of_var):
			name_of_var=dict_to_look['dicts'][i][0][1]['name']
			lines_to_append.append('#define '+name_of_var+' '+start_of_parameters+'+'+str(offset_in_chunks)+'*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data),'+str(i)+' \n')
			lines_to_append.append('#define '+name_of_var+'_as_address ('+start_of_parameters+'+'+str(offset_in_chunks)+'*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)+secure_bytes_to_move_forward_for_unsecure_byte_offset(0,'+str(i)+'*sizeof('+find_type_of_var_in_C(type_of_var)+'))) \n')
			defines.append(name_of_var)
			defines.append(name_of_var+'_as_address')
		if (num_of_var>0):
			lines_to_append.append(';'+find_type_of_var_in_C(type_of_var)+' array_for_'+type_of_var+'_fun_'+fun_name+'_params['+str(num_of_var)+'];\n')
		offset_in_chunks+=int(dict_to_look['chunks_needed'])
	offset_in_chunks=0
	#param non simple vars
	dict_to_look=our_function_dict['params_in_stack']['other_params']
	num_of_var=len(dict_to_look['sizes'])
	for i in range(num_of_var):
		size_of_arb_ptr_data=dict_to_look['sizes'][i] #has to be an int, python doesn't know "sizeof()"
		name_of_var=dict_to_look['dicts'][i][0][1]['name']
		if dict_to_look['dicts'][i][0][0]=='struct':
			name_of_var=dict_to_look['dicts'][i][0][1]["name_of_struct_variable"]
		lines_to_append.append('#define '+name_of_var+' ('+start_of_parameters+'+'+str(offset_in_chunks)+'*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)) \n')
		defines.append(name_of_var)
		offset_in_chunks+=calculate_chunks_needed_for_a_size(int(size_of_arb_ptr_data))

	start_of_local_vars='base_pointer_for_stack-('+str(int(chunks_for_stack_canary)+int(chunks_for_local_vars))+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)'
	offset_in_chunks=our_function_dict['locals_in_stack']['total_chunks_needed_for_other_locals']
	#local vars
	for type_of_var in ['char','int','long','float','double','pointer']: #in that order!
		dict_to_look=our_function_dict['locals_in_stack'][type_of_var]
		num_of_var=len(dict_to_look['sizes'])
		for i in range(num_of_var):
			name_of_var=dict_to_look['dicts'][i][0][1]['name']
			lines_to_append.append('#define '+name_of_var+' '+start_of_local_vars+'+'+str(offset_in_chunks)+'*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data),'+str(i)+' \n')
			lines_to_append.append('#define '+name_of_var+'_as_address ('+start_of_local_vars+'+'+str(offset_in_chunks)+'*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)+secure_bytes_to_move_forward_for_unsecure_byte_offset(0,'+str(i)+'*sizeof('+find_type_of_var_in_C(type_of_var)+'))) \n')
			defines.append(name_of_var)
			defines.append(name_of_var+'_as_address')
		offset_in_chunks+=int(dict_to_look['chunks_needed'])
	#local non simple vars
	offset_in_chunks=0
	dict_to_look=our_function_dict['locals_in_stack']['other_params']
	num_of_var=len(dict_to_look['sizes'])
	for i in range(num_of_var):
		size_of_arb_ptr_data=dict_to_look['sizes'][i] #has to be an int, python doesn't know "sizeof()"
		name_of_var=dict_to_look['dicts'][i][0][1]['name']
		if dict_to_look['dicts'][i][0][0]=='struct':
			name_of_var=dict_to_look['dicts'][i][0][1]["name_of_struct_variable"]
		lines_to_append.append('#define '+name_of_var+' ('+start_of_local_vars+'+'+str(offset_in_chunks)+'*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)) \n')
		defines.append(name_of_var)
		offset_in_chunks+=calculate_chunks_needed_for_a_size(int(size_of_arb_ptr_data))
			
	our_function_dict['defines']=copy.deepcopy(defines)
	
	#set the stack canary
	if (use_stack_canaries>0):
		lines_to_append.append('/*set stack canary*/ \n');
		lines_to_append.append('set_stack_canary_in_stack('+start_of_stack_canary+');\n')
	
	for line in lines_to_append:
		dst_lines.append(line)
	
	
	
	
#the code at the end of each function
def add_the_function_footer(bool_for_undef,function_name):

	global all_functions_dict
	global functions_dict_with_our_info
	
	fun_name=function_name
	function_dict=all_functions_dict[fun_name]
	our_function_dict=functions_dict_with_our_info[fun_name]
	
	chunks_for_params=str(our_function_dict['params_in_stack']['total_chunks_needed'])
	chunks_for_local_vars=str(our_function_dict['locals_in_stack']['total_chunks_needed'])
	chunks_for_return_value=str(our_function_dict['return_value']['total_chunks_needed'])
	chunks_for_base_pointer_and_retaddr=str(calculate_chunks_needed_for_a_size(get_size_of_type('ptr')*2))
	

	start_of_stack_canary='base_pointer_for_stack-('+str(int(chunks_for_stack_canary))+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)'


	lines_to_append=[]
	#check the stack canary
	if (use_stack_canaries>0):
		lines_to_append.append('/*check stack canary*/\n')
		lines_to_append.append('check_stack_canary_in_stack('+start_of_stack_canary+',__LINE__);\n')
	
	#set the former base pointer
	lines_to_append.append('temp_base_pointer=base_pointer_for_stack;\n')
	lines_to_append.append('base_pointer_for_stack=get_stack_pointer_array_element(base_pointer_for_stack,0);\n')
	#pop the stack frame
	if (our_function_dict['use_of_explicit_stack_allocation']=='0'):
		lines_to_append.append('free_mem_from_secure_stack_in_chunks('+str(calc_size_of_fun_in_stack(fun_name))+');\n')
	else:
		#place the stack pointer into its position right after the local vars
		lines_to_append.append('last_unused_stack_memory=temp_base_pointer-('+str(int(chunks_for_local_vars)+int(chunks_for_stack_canary))+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data);\n')
		lines_to_append.append('free_mem_from_secure_stack_in_chunks('+str(calc_size_of_fun_in_stack(fun_name))+');\n')
	if(bool_for_undef):
		#undef
		for i in our_function_dict['defines']:
			lines_to_append.append('#undef '+i+'\n')
	#lines_to_append.append('printf("address_of_ret_lab2=%ld\\n",(long)(*(long*)(get_stack_pointer(temp_base_pointer-('+str(int(chunks_for_return_address))+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)))));')
	#add goto return address
	lines_to_append.append('goto *(get_stack_pointer_array_element(temp_base_pointer,1));\n')
	#writing of the return value is done where the function is being called
	for line in lines_to_append:
		dst_lines.append(line)
		

str_for_new_ret_exp="PYTHON PLEASE USE THIS RETURN EXPRESSION:"	
		
#set the return value
def copy_result_to_return_space(line_of_return,function_name):
	global all_functions_dict
	global functions_dict_with_our_info
	
	fun_name=function_name
	function_dict=all_functions_dict[fun_name]
	our_function_dict=functions_dict_with_our_info[fun_name]
	
	chunks_for_params=str(our_function_dict['params_in_stack']['total_chunks_needed'])
	chunks_for_local_vars=str(our_function_dict['locals_in_stack']['total_chunks_needed'])
	chunks_for_return_value=str(our_function_dict['return_value']['total_chunks_needed'])
	chunks_for_base_pointer_and_retaddr=str(calculate_chunks_needed_for_a_size(get_size_of_type('ptr')*2))
	
	lines_to_append=[]
	start_of_return_place='base_pointer_for_stack+('+str(int(chunks_for_base_pointer_and_retaddr))+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)'
	retval_dict=our_function_dict['return_value']['dict']
	if retval_dict[0][0]!='void':
		setter_name=find_name_of_setter(retval_dict[0][0],0)
		if (str_for_new_ret_exp in line_of_return):
			new_return_expression=line_of_return.split('|')[1].strip().split(str_for_new_ret_exp)[1].strip()
			lines_to_append.append(setter_name+'(('+start_of_return_place+'),'+new_return_expression+');\n')
		else:	
			sys.stderr.write("ERROR! Return expression not found!\n")
			sys.stderr.write(line_of_return)
			sys.exit(-1)
	for line in lines_to_append:
		dst_lines.append(line)


def custom_split_of_str(string,char_to_split):
	#makes sure that we split when we are NOT between a ({ and a }) (blocked expression in C)
	#and NOT between a " and a " (string) <- this might be an argument, that's why
	#and NOT between a { and } (possible array definition)
	#and NOT between a ( and ) (possible function arguments)
	ret_list=[]
	current_part=""
	num_of_paren_block1=0
	num_of_paren_block2=0
	num_of_double_quotes=0
	num_of_braces=0
	num_of_parentheses=0
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
		if (string[i]=="(" and num_of_double_quotes%2==0):
			num_of_parentheses+=1
		if (string[i]==")" and num_of_double_quotes%2==0):
			num_of_parentheses-=1
		if (string[i]==char_to_split and num_of_paren_block1==num_of_paren_block2 and num_of_double_quotes%2==0 and num_of_braces==0 and num_of_parentheses==0):
			ret_list.append(current_part)
			current_part=""
		else:
			current_part+=string[i]
	ret_list.append(current_part)
	return ret_list


def get_random_string(size):
	return ''.join(random.choice(string.ascii_uppercase + string.digits) for _ in range(size))



call_of_function_new_str='HEY PYTHON CALL FUNCTION WITH NEWER TEMPLATE'
start_of_function_str='START_OF_FUNCTION'
end_of_function_str='END_OF_FUNCTION'
return_point_of_function_str='RETURN_POINT_OF_FUNCTION'
return_expression_str='RETURN_EXPRESSION'
write_result_to_str='WRITE RESULT TO'
parameters_for_calling_str='PARAMETERS TO CALL WITH'
helping_args_for_fun_call_str='HELPING ARGS FOR FUN CALL'
allocate_in_secure_stack_a_block_str='ALLOCATE STACK DATA OF SIZE'



fun_name=""
needed_part_of_str=''
cnt_params_locals_lines=0
in_function_code=0
list_of_params_currently_called=[]
write_result_to_currently_called=''
#variables to distinguish between different calls to a function. 
#We use a different one every time, since we might have nested calls (fun1(fun2(a)))
#and if we use the same ones, they get clobbered
#since we would like to support the older code that uses same logic, we start the counters from 1000
return_addr_for_allocation_ctr=1000
sz_of_array_fun_params_ctr=1000
array_of_params_ctr=1000;


for line in src_lines:
	
	
	if start_of_function_str in line:
		in_function_code=1
		fun_name=line.split(":")[1].strip()
		functions_dict_with_our_info[fun_name]={}
		functions_dict_with_our_info[fun_name]['num_of_times_called_in_code']='0'
		functions_dict_with_our_info[fun_name]['use_of_explicit_stack_allocation']='0'
		functions_dict_with_our_info[fun_name]['defines']=[]
		split_params_locals_of_a_fun_per_type(fun_name)
		dst_lines.append('/* FUNCTION '+fun_name+ ' BEGINNING:*/\n') 
		dst_lines.append(fun_name+"_start_label:\n")
		add_the_function_header(fun_name)
		continue
		
	
	if end_of_function_str in line and in_function_code==1:
		in_function_code=0
		add_the_function_footer(1,fun_name)
		dst_lines.append(fun_name+"_end_label: ;\n")
		dst_lines.append('/* FUNCTION '+fun_name+ ' END.*/\n\n')
		continue

	if (allocate_in_secure_stack_a_block_str in line) and (in_function_code):
		#ALLOCATE STACK DATA OF SIZE: 500 | SETTER FOR THEM AND VAR : SET_STACK_PTR(X,
		expression_of_size_in_bytes=line.split('|')[0].split(':')[1].strip()
		setter_for_data=line.split('|')[1].split(':')[1].strip()
		functions_dict_with_our_info[fun_name]['use_of_explicit_stack_allocation']='1'
		dst_lines.append(setter_for_data+'allocate_mem_into_secure_stack_return_ptr_only_after_alloc('+ expression_of_size_in_bytes+'));\n')
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
		if function_name not in all_functions_dict:
			#function not found.... should be though
			if (parameters_for_calling_str in substring_for_fun_call):
				params_to_call=substring_for_fun_call.split(parameters_for_calling_str)[1].split(":")[1]
			else:
				params_to_call=""
			line_temp= line_temp.replace(code_for_fun, '/*IMPORTANT! FUNCTION NAME NOT FOUND!*/ '+function_name+'('+params_to_call+')', 1)
			line_temp=line_temp.replace('\n', ' ').replace('\r', '')
			continue
		num_of_params=len(all_functions_dict[function_name]["fun_decl"][0][1]['list_of_arguments'])
		helping_args_for_fun_call=custom_split_of_str(custom_split_of_str(substring_for_fun_call,'|')[1].strip(),':')[1].strip() #split by '|', split by ':' and strip
		helping_args_for_fun_call_dict={}
		#create the dict of the arguments
		for item in custom_split_of_str(helping_args_for_fun_call,','):
			if len(custom_split_of_str(item,'='))>1:
				helping_args_for_fun_call_dict[custom_split_of_str(item,'=')[0].strip()]=custom_split_of_str(item,'=')[1].strip()
		list_of_params_currently_called=[]
		if (parameters_for_calling_str in substring_for_fun_call):
			list_of_params_currently_called=custom_split_of_str(custom_split_of_str(custom_split_of_str(substring_for_fun_call,'|')[2].strip(),':')[1].strip(),',') #split by '|', split by ':', split by ','
		#list_of_params_currently_called=[x.replace('@',',') for x in list_of_params_currently_called] #if the param has "@"'s in it, it means that it wanted to put ","'s in these places. It used "@" because of splitting.
		code_for_replacing_fun=add_code_for_function_calling_new_template(function_name,helping_args_for_fun_call_dict,list_of_params_currently_called)
		functions_dict_with_our_info[function_name]['num_of_times_called_in_code']=str(int(functions_dict_with_our_info[function_name]['num_of_times_called_in_code'])+1)
		
		line_temp= line_temp.replace(code_for_fun, code_for_replacing_fun, 1)
		#let's make line_temp to be one line, because multiple invocations of a function may have turned it into multiple lines
		line_temp=line_temp.replace('\n', ' ').replace('\r', '')
	if(got_into_while):
		dst_lines.append(line_temp+'\n')
		continue
	
	if (return_point_of_function_str in line) and (in_function_code==1):
		#add a nice comment
		if (str_for_new_ret_exp in line):
			new_return_expression=line.split('|')[1].strip().split(str_for_new_ret_exp)[1].strip()
			dst_lines.append('/*Return point of function '+fun_name+' , with return expression: '+ new_return_expression +'*/\n')
		else:
			dst_lines.append('/*Return point of function '+fun_name+'*/\n')
		copy_result_to_return_space(line,fun_name)
		add_the_function_footer(0,fun_name) #don't undef!
		continue

	#if nothing is done
	dst_lines.append(line)

if print_output:
	for fun in functions_dict_with_our_info:
		print(fun," : ")
		print('\tlocals_with_unknown_size:',functions_dict_with_our_info[fun]['locals_with_unknown_size'])
		print('\tparams_with_unknown_size:',functions_dict_with_our_info[fun]['params_with_unknown_size'])
		print('\treturn_value:',functions_dict_with_our_info[fun]['return_value'])
		print('\tlocals_in_stack:')
		for loc in functions_dict_with_our_info[fun]['locals_in_stack']:
			print('\t\t'+loc+':',functions_dict_with_our_info[fun]['locals_in_stack'][loc])
		print('\tparams_in_stack:')
		for par in functions_dict_with_our_info[fun]['params_in_stack']:
			print('\t\t'+par+':',functions_dict_with_our_info[fun]['params_in_stack'][par])
	for line in dst_lines:
		sys.stdout.write(line)
else:
	for line in dst_lines:
		tests_dst.write(line)
	tests_dst.close()
