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
from extra_functions_for_parser import *
from dict_operations_of_parser import *

RE_CHILD_ARRAY = re.compile(r'(.*)\[(.*)\]')
RE_INTERNAL_ATTR = re.compile('__.*__')


#functions taken from pycparser code, in https://github.com/eliben/pycparser.
# Eli Bendersky [http://eli.thegreenplace.net]
# License: BSD


all_functions_dict={} #dictionary that holds all the metadata of the functions
current_function_dict={} #dictionary that holds all the metadata for the current function
globals_dict={} #dictionary that holds all the metadata for the globals
typedefs_dict={} #dictionary that holds all the metadata for the types


# Deserialize.
with open('ast', 'rb') as f:
	ast = pickle.load(f)
	ast_dict=to_dict(ast)
	#print(ast_dict)
	
#init globals dict
init_globals_dict(globals_dict)
init_typedefs_dict(typedefs_dict)

where_functions_start=ast_dict["ext"]

#start examining the ast
for item in where_functions_start:
	
	if item["_nodetype"]=="FuncDef":
		#we have a function definition!
		if current_function_dict!={}:
			current_function_dict["local_init_maxorder"]=current_function_dict["locals"]["locals_init_order"]
			all_functions_dict[current_function_dict["name"]]=copy.deepcopy(current_function_dict) #add it to the all functions dict
		current_function_dict={}
		fill_function_dict(item,current_function_dict,typedefs_dict) #fill the dict
		
	
	if encountered_global_decl(item): 
		#we have a global declaration!
		fill_global_dict(item,globals_dict,typedefs_dict,ast_dict)
		
	if encountered_struct_def(item):
		#we have a struct definition!
		add_struct_to_types(item,typedefs_dict)
		
#erase the declarations/initializations of the global variables, sice we will do them manually
num_of_nodes_not_deleted=0
while (len(where_functions_start)>num_of_nodes_not_deleted):
	if encountered_global_decl(where_functions_start[num_of_nodes_not_deleted]):
		del(where_functions_start[num_of_nodes_not_deleted])
	else:
		num_of_nodes_not_deleted+=1
		
		
if current_function_dict!={}:
	current_function_dict["local_init_maxorder"]=current_function_dict["locals"]["locals_init_order"]
	all_functions_dict[current_function_dict["name"]]=copy.deepcopy(current_function_dict)
	current_function_dict={}		
		
print(all_functions_dict)
print(globals_dict)
print(typedefs_dict)
	
	

