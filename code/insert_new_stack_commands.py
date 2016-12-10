#!/usr/bin/env python3

import sys
import copy
import platform


tests_src=open('./template_files/tests_with_new_stack_template.c','r')
tests_dst=open('tests_with_new_stack.c','w')

src_lines= tests_src.readlines()
dst_lines=[]

number_of_stack_keys=int(sys.argv[1])
number_of_stack_useful_data=int(sys.argv[2])
number_of_mac_bytes=int(sys.argv[3])


def process_ret_val_size(var_size): #This has to be improved in the future
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
		dst_lines.append(function_dict['name']+"_start_label:")
		continue
	if end_of_function_str in line:
		fun_name=function_dict['name']
		all_functions_dict[fun_name]=copy.deepcopy(function_dict)
		in_function_declaration=0
		in_function_code=0
		dst_lines.append(function_dict['name']+"_end_label:")
		continue
	if (name_of_function_str in line) and (in_function_declaration):
		fun_name=line.strip().split(':')[1].strip()
		function_dict['name']=fun_name
	if (return_value_size_str in line) and (in_function_declaration):
		needed_part_of_str=line.strip().split(':')[1].strip()
		ret_val_size=process_ret_val_size(needed_part_of_str)
		function_dict['return_value_size']=str(ret_val_size)
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
	
		
		
	if (in_function_declaration==0) or (in_function_code==1):
		dst_lines.append(line)


#print(all_functions_dict)

for line in dst_lines:
	tests_dst.write(line)

tests_src.close()
tests_dst.close()
