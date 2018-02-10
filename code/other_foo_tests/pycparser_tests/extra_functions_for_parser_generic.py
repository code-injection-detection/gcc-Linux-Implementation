#!/usr/bin/env python3

import pickle
import json
import sys
import re
import platform
import copy
import gc

from pycparser import parse_file, c_ast, c_parser,c_generator
from pycparser.plyparser import Coord
import custom_c_generator


def print_dicts(info,**kwargs):
	globals_dict=kwargs["globals_dict"]
	typedefs_dict=kwargs["typedefs_dict"]
	current_function_dict=kwargs["current_function_dict"]
	all_functions_dict=kwargs["all_functions_dict"]
	current_state=kwargs["current_state"]
	
	if ("all" in info):
		print(globals_dict)
		print(typedefs_dict)
		print(current_function_dict)
		print(all_functions_dict)
		print(current_state)
	elif "globals" in info:
		print(globals_dict)
	elif "typedefs" in info:
		print(typedefs_dict)
	elif "all_funs" in info:
		print(all_functions_dict)
	elif "curr_fun" in info:
		print(current_function_dict)
	elif "curr_state" in info:
		print(current_state)




def RepresentsInt(s):
    try: 
        int(s)
        return True
    except ValueError:
        return False


def find_name_of_stack_getter_in_caps(type_of_var):
	name_of_setter='GET_STACK_'
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


def find_name_of_global_getter(type_of_var):
	name_of_getter='GET_GLOBAL_'
	if( type_of_var=='long' or type_of_var=='long int'):
		name_of_getter+='LONG'
	if ( type_of_var=='pointer' or type_of_var=='ptr'):
		name_of_getter+='PTR'
	if ( type_of_var=='int'):
		name_of_getter+='INT'
	if ( type_of_var=='float'):
		name_of_getter+='FLOAT'
	if ( type_of_var=='double'):
		name_of_getter+='DOUBLE'
	if ( type_of_var=='char'):
		name_of_getter+='CHAR'
	return name_of_getter

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

def find_name_of_stack_array_setter(type_of_var):
	name_of_setter='set_stack_'
	if( type_of_var=='long' or type_of_var=='long int'):
		name_of_setter+='long_int'
	if ( type_of_var=='pointer' or type_of_var=='ptr'):
		name_of_setter+='pointer'
	if ( type_of_var=='int'):
		name_of_setter+='int'
	if ( type_of_var=='float'):
		name_of_setter+='float'
	if ( type_of_var=='double'):
		name_of_setter+='double'
	if ( type_of_var=='char'):
		name_of_setter+='char'
	name_of_setter+='_array_element'
	return name_of_setter
	
def find_name_of_stack_array_getter(type_of_var):
	name_of_getter='get_stack_'
	if( type_of_var=='long' or type_of_var=='long int'):
		name_of_getter+='long_int'
	if ( type_of_var=='pointer' or type_of_var=='ptr'):
		name_of_getter+='pointer'
	if ( type_of_var=='int'):
		name_of_getter+='int'
	if ( type_of_var=='float'):
		name_of_getter+='float'
	if ( type_of_var=='double'):
		name_of_getter+='double'
	if ( type_of_var=='char'):
		name_of_getter+='char'
	name_of_getter+='_array_element'
	return name_of_getter
	
	
def find_name_of_sheap_array_setter(type_of_var):
	name_of_setter='set_'
	if( type_of_var=='long' or type_of_var=='long int'):
		name_of_setter+='long_int'
	if ( type_of_var=='pointer' or type_of_var=='ptr'):
		name_of_setter+='pointer'
	if ( type_of_var=='int'):
		name_of_setter+='int'
	if ( type_of_var=='float'):
		name_of_setter+='float'
	if ( type_of_var=='double'):
		name_of_setter+='double'
	if ( type_of_var=='char'):
		name_of_setter+='char'
	name_of_setter+='_array_element'
	return name_of_setter
	
def find_name_of_sheap_array_getter(type_of_var):
	name_of_getter='get_'
	if( type_of_var=='long' or type_of_var=='long int'):
		name_of_getter+='long_int'
	if ( type_of_var=='pointer' or type_of_var=='ptr'):
		name_of_getter+='pointer'
	if ( type_of_var=='int'):
		name_of_getter+='int'
	if ( type_of_var=='float'):
		name_of_getter+='float'
	if ( type_of_var=='double'):
		name_of_getter+='double'
	if ( type_of_var=='char'):
		name_of_getter+='char'
	name_of_getter+='_array_element'
	return name_of_getter
	
def replace_comma_with_at_outside_funcall(str_in):
	#replaces the commas separating a function's arguments with "@" (so that a next python script will not be confused when splitting by comma)
	#Does not do that when inside a function call (i.e inside a {{{ ... }}} block)
	three_paren_num=0
	str_out=[]
	for i in range(len(str_in)):
		if (i<len(str_in)-2 and str_in[i]=='{' and str_in[i+1]=='{' and str_in[i+2]=='{'):
			three_paren_num+=1
		if (i<len(str_in)-2 and str_in[i]=='}' and str_in[i+1]=='}' and str_in[i+2]=='}'):
			three_paren_num-=1
		if (three_paren_num==0 and str_in[i]==','):
			str_out.append('@')
		else:
			str_out.append(str_in[i])
	return ''.join(str_out)
	
	
def identify_type(type_of_param):
	if '*' in type_of_param:
		return 'ptr'
	if '[' in type_of_param and ']' in type_of_param:
		return 'arb_ptr' #hmmm... I do not like it
	if 'long double' in type_of_param: #pay attention in the order. long double is forbidden
		sys.stderr.write('ERROR. long double param given.\n')
		exit(-1)
	if ('double' in type_of_param): 
		return 'double'
	if ('float' in type_of_param): 
		return 'float'
	if ('long' in type_of_param):
		return 'long'
	if ('int' in type_of_param):
		return 'int'
	if 'char' in type_of_param:
		return 'char'
	if 'void' in type_of_param:
		return 'none'
	if 'ptr' in type_of_param:
		return 'ptr'
	if type_of_param=="struct":
		return "struct"
		
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
	if var_size.lower()=='none' or var_size.lower()=='null':  #be careful here
		return 0
	else:
		print("UNKNOWN VARIABLE SIZE:",var_size)
