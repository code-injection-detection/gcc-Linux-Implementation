#!/usr/bin/env python3

import sys
import copy
import platform
import gc


#stach frame: args (arg(1), arg(2)...) , return value, return address, base pointer, local vars

tests_src=open('./template_files/tests_with_new_stack_template.c','r')
tests_dst=open('tests_with_new_stack.c','w')

src_lines= tests_src.readlines()
dst_lines=[]

number_of_stack_key_bytes=int(sys.argv[1])
number_of_stack_useful_data_bytes=int(sys.argv[2])
number_of_mac_bytes=int(sys.argv[3])


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
	if var_size=='none' or var_size=='None':
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
				sizes=parts_of_line[2].split(':')[1].strip().split(',')
				function_dict[type_of_vars][name_of_type]['sizes']=[]
				for x in sizes:
					function_dict[type_of_vars][name_of_type]['sizes'].append(x.strip())

		
		
def calculate_chunks_needed_for_a_size(size_in_bytes):
	chunks_num=(size_in_bytes//number_of_stack_useful_data_bytes)
	if (chunks_num*number_of_stack_useful_data_bytes<size_in_bytes):
		chunks_num+=1	
	return chunks_num
	
	
	
def calculate_chunks_for_params_locals(type_of_vars):
	global function_dict
	
	chunks_needed=0
	for type_of_var in function_dict[type_of_vars]:
		num_of_var=int(function_dict[type_of_vars][type_of_var]['number'])
		if type_of_var!='arb_ptr':
			for i in range(num_of_var):
				size_of_var=process_var_size(type_of_var)
				new_chunks_num=calculate_chunks_needed_for_a_size(size_of_var)
				chunks_needed+=new_chunks_num
		else:
			if (num_of_var>0):
				for sz in function_dict[type_of_vars][type_of_var]['sizes']:
					size_of_var=int(sz)
					new_chunks_num=calculate_chunks_needed_for_a_size(size_of_var)
					chunks_needed+=new_chunks_num
	
	return chunks_needed
		
		
		
def find_name_of_getter(type_of_var):
	name_of_getter='get_stack_'
	if( type_of_var=='long' or type_of_var=='long int'):
		name_of_getter+='long_int'
	if ( type_of_var=='pointer' or type_of_var=='ptr'):
		name_of_getter+='pointer'
	if (name_of_getter=='get_stack_'): #not changed
		name_of_getter+=type_of_var
	return name_of_getter
	
	
	
def find_name_of_setter(type_of_var):
	name_of_setter='set_stack_'
	if( type_of_var=='long' or type_of_var=='long int'):
		name_of_setter+='long_int'
	if ( type_of_var=='pointer' or type_of_var=='ptr'):
		name_of_setter+='pointer'
	if (name_of_setter=='set_stack_'): #not changed
		name_of_setter+=type_of_var
	return name_of_setter
	


def calc_size_of_fun_in_stack():
	global function_dict
	
	#calculate the chunks needed in secure stack
	chunks_for_params=calculate_chunks_for_params_locals('params')
	chunks_for_local_vars=calculate_chunks_for_params_locals('locals')
	chunks_for_return_value=calculate_chunks_needed_for_a_size(int(function_dict['return_value_size']))
	chunks_for_base_pointer=calculate_chunks_needed_for_a_size(process_var_size('ptr'))
	chunks_for_return_address=calculate_chunks_needed_for_a_size(process_var_size('ptr'))
	total_chunks_needed=chunks_for_params+chunks_for_local_vars+chunks_for_return_value+chunks_for_base_pointer+chunks_for_return_address
	function_dict['chunks_in_stack']=str(total_chunks_needed)
	function_dict['chunks_for_params']=str(chunks_for_params)
	function_dict['chunks_for_local_vars']=str(chunks_for_local_vars)
	function_dict['chunks_for_return_value']=str(chunks_for_return_value)
	function_dict['chunks_for_base_pointer']=str(chunks_for_base_pointer)
	function_dict['chunks_for_return_address']=str(chunks_for_return_address)
	
	
	
def add_code_for_function_calling(fun_name,write_to,params):
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
	
	lines_to_append=[]
	#allocate mem in secure stack
	lines_to_append.append('returned_addr_after_allocating=allocate_mem_into_secure_stack_in_chunks('+fun_dict['chunks_in_stack']+');\n')
	lines_to_append.append('if (returned_addr_after_allocating==NULL) {printf("ERROR,no stack mem left, line %d\\n",__LINE__);exit(8);}\n')
	
	#initialize parameters
	lines_to_append.append(' \n')
	#base pointer
	lines_to_append.append('set_stack_pointer(returned_addr_after_allocating+('+chunks_for_params+'+'+chunks_for_return_value+'+'+chunks_for_return_address+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data),base_pointer_for_stack);\n')
	lines_to_append.append('base_pointer_for_stack=returned_addr_after_allocating+('+chunks_for_params+'+'+chunks_for_return_value+'+'+chunks_for_return_address+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data);\n')
	#return address
	lines_to_append.append('set_stack_pointer(returned_addr_after_allocating+('+chunks_for_params+'+'+chunks_for_return_value+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data), &&return_label_'+fun_name+'_no_'+num_of_times_called_in_code+');\n')
	#set value to the parameters
	for type_of_var in ['char','int','long','float','double','ptr']: #in that order!
		num_of_var=int(fun_dict['params'][type_of_var]['number'])
		for i in range(num_of_var):
			#consume parameters from the start
			value_of_var=params[params_cnt]
			params_cnt+=1
			if(value_of_var=='NULL'):
				value_of_var='0'
			name_of_setter=find_name_of_setter(type_of_var)
			lines_to_append.append(name_of_setter+'(returned_addr_after_allocating+('+str(offset_for_params_in_chunks)+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data),'+value_of_var+');\n')
			offset_for_params_in_chunks+=calculate_chunks_needed_for_a_size(process_var_size(type_of_var)) #add value to the offset
	#same for the arbitrary pointers
	num_of_var=int(fun_dict['params']['arb_ptr']['number'])
	for i in range(num_of_var):
		size_of_arb_ptr_data=fun_dict['params']['arb_ptr']['sizes'][i] #has to be an int, python doesn't know "sizeof()"
		if (params[params_cnt]!='NULL' and params[params_cnt]!='0'):
			lines_to_append.append('insert_data_into_stack_mem('+size_of_arb_ptr_data+','+params[params_cnt]+',returned_addr_after_allocating+('+str(offset_for_params_in_chunks)+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data));\n')
		params_cnt+=1
		offset_for_params_in_chunks+=calculate_chunks_needed_for_a_size(int(size_of_arb_ptr_data))
	
	#add goto to the function code
	lines_to_append.append('goto '+fun_name+'_start_label;\n')
	#add return label
	lines_to_append.append('return_label_'+fun_name+'_no_'+num_of_times_called_in_code+':\n')
	#write result to
	name_of_getter=find_name_of_getter(fun_dict['return_value_type'])
	lines_to_append.append(write_to+'='+name_of_getter+'(returned_addr_after_allocating+('+chunks_for_params+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data));\n')
	for line in lines_to_append:
		dst_lines.append(line)
	
	
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
	
	#create the proper defines. Practically the addresses relevant to the base pointer
	start_of_parameters='base_pointer_for_stack-('+str(int(chunks_for_return_address)+int(chunks_for_return_value)+int(chunks_for_params))+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)'
	#params
	for type_of_var in ['char','int','long','float','double','ptr']: #in that order!
		num_of_var=int(function_dict['params'][type_of_var]['number'])
		for i in range(num_of_var):
			name_of_var=function_dict['params'][type_of_var]['names'][i]
			lines_to_append.append('#define '+name_of_var+' ('+start_of_parameters+'+'+str(offset_in_chunks)+'*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)) \n')
			defines.append(name_of_var)
			offset_in_chunks+=calculate_chunks_needed_for_a_size(process_var_size(type_of_var))
	#arb_ptrs
	num_of_var=int(function_dict['params']['arb_ptr']['number'])
	for i in range(num_of_var):
		size_of_arb_ptr_data=function_dict['params']['arb_ptr']['sizes'][i] #has to be an int, python doesn't know "sizeof()"
		name_of_var=function_dict['params']['arb_ptr']['names'][i]
		lines_to_append.append('#define '+name_of_var+' ('+start_of_parameters+'+'+str(offset_in_chunks)+'*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)) \n')
		defines.append(name_of_var)
		offset_in_chunks+=calculate_chunks_needed_for_a_size(int(size_of_arb_ptr_data))

	start_of_local_vars='base_pointer_for_stack+('+str(int(chunks_for_base_pointer))+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)'
	offset_in_chunks=0
	#local vars
	for type_of_var in ['char','int','long','float','double','ptr']: #in that order!
		num_of_var=int(function_dict['locals'][type_of_var]['number'])
		for i in range(num_of_var):
			name_of_var=function_dict['locals'][type_of_var]['names'][i]
			lines_to_append.append('#define '+name_of_var+' ('+start_of_local_vars+'+'+str(offset_in_chunks)+'*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)) \n')
			defines.append(name_of_var)
			offset_in_chunks+=calculate_chunks_needed_for_a_size(process_var_size(type_of_var))
	#arb_ptrs
	num_of_var=int(function_dict['locals']['arb_ptr']['number'])
	for i in range(num_of_var):
		size_of_arb_ptr_data=function_dict['locals']['arb_ptr']['sizes'][i] #has to be an int, python doesn't know "sizeof()"
		name_of_var=function_dict['locals']['arb_ptr']['names'][i]
		lines_to_append.append('#define '+name_of_var+' ('+start_of_local_vars+'+'+str(offset_in_chunks)+'*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)) \n')
		defines.append(name_of_var)
		offset_in_chunks+=calculate_chunks_needed_for_a_size(int(size_of_arb_ptr_data))
			
	function_dict['defines']=copy.deepcopy(defines)
	for line in lines_to_append:
		dst_lines.append(line)
	
	
	
	
def add_the_function_footer():
	global function_dict
	
	chunks_for_return_address=function_dict['chunks_for_return_address']	

	lines_to_append=[]
	#set the former base pointer
	lines_to_append.append('temp_base_pointer=base_pointer_for_stack;\n')
	lines_to_append.append('base_pointer_for_stack=get_stack_pointer(base_pointer_for_stack);\n')
	#pop the stack frame
	lines_to_append.append('free_mem_from_secure_stack_in_chunks('+function_dict['chunks_in_stack']+');\n')
	#undef
	for i in function_dict['defines']:
		lines_to_append.append('#undef '+i+'\n')
	#add goto return address
	lines_to_append.append('goto *(get_stack_pointer(temp_base_pointer-('+str(int(chunks_for_return_address))+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)));\n')
	#writing of the return value is done where the function is being called
	for line in lines_to_append:
		dst_lines.append(line)
		
		
		
def copy_result_to_return_space():
	global function_dict
	
	chunks_for_params=function_dict['chunks_for_params']
	chunks_for_local_vars=function_dict['chunks_for_local_vars']
	chunks_for_return_value=function_dict['chunks_for_return_value']
	chunks_for_base_pointer=function_dict['chunks_for_base_pointer']
	chunks_for_return_address=function_dict['chunks_for_return_address']
	
	lines_to_append=[]
	start_of_return_place='base_pointer_for_stack-('+str(int(chunks_for_return_address)+int(chunks_for_return_value))+')*(stack_bytes_used_for_keyshares+number_of_mac_bytes+stack_bytes_for_useful_data)'
	setter_name=find_name_of_setter(function_dict['return_value_type'])
	lines_to_append.append(setter_name+'(('+start_of_return_place+'),'+function_dict['return_expression']+');\n')
	for line in lines_to_append:
		dst_lines.append(line)




new_function_str='PLEASE PYTHON INIT A FUNCTION HERE'
call_of_function_str='HEY PYTHON CALLING FUNCTION'
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

for line in src_lines:
	
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
	if start_of_function_str in line:
		in_function_code=1
		calc_size_of_fun_in_stack()
		function_dict['num_of_times_called_in_code']='0'
		fun_name=function_dict['name']
		all_functions_dict[fun_name]=copy.deepcopy(function_dict) #we might need it inside the function, so save it for the first time
		dst_lines.append(function_dict['name']+"_start_label:\n")
		add_the_function_header()
		continue
	if end_of_function_str in line:
		in_function_declaration=0
		in_function_code=0
		add_the_function_footer()
		dst_lines.append(function_dict['name']+"_end_label:\n")
		all_functions_dict[fun_name]=copy.deepcopy(function_dict) #do it a second time to have it as a whole
		gc.collect()
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
		if (write_result_to_str in line):
			write_result_to_currently_called=line.split('|')[1].strip().split(':')[1].strip()
			if (parameters_for_calling_str in line):
				list_of_params_currently_called=line.split('|')[2].strip().split(':')[1].strip().split(',')
		else:
			if (parameters_for_calling_str in line):
				list_of_params_currently_called=line.split('|')[1].strip().split(':')[1].strip().split(',')
		dst_lines.append(line)
		add_code_for_function_calling(function_name,write_result_to_currently_called,list_of_params_currently_called)
		continue
	
	if (return_point_of_function_str in line) and (in_function_code==1):
		copy_result_to_return_space()
		continue
		
	if (in_function_declaration==0) or (in_function_code==1):
		dst_lines.append(line)


#print(all_functions_dict)

for line in dst_lines:
	tests_dst.write(line)

tests_src.close()
tests_dst.close()
