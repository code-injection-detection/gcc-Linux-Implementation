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
from extra_functions_for_parser_generic import *
from dict_operations_of_parser_generic import *
from travel_ast_functions_generic import *

RE_CHILD_ARRAY = re.compile(r'(.*)\[(.*)\]')
RE_INTERNAL_ATTR = re.compile('__.*__')


#functions taken from pycparser code, in https://github.com/eliben/pycparser.
# Eli Bendersky [http://eli.thegreenplace.net]
# License: BSD


all_functions_dict={} #dictionary that holds all the metadata of the functions
current_function_dict={} #dictionary that holds all the metadata for the current function
globals_dict={} #dictionary that holds all the metadata for the globals
typedefs_dict={} #dictionary that holds all the metadata for the types
current_state={} #describes the state that we are in (e.g inside which function)

# Deserialize.
with open('ast', 'rb') as f:
	ast = pickle.load(f)
	ast_dict=to_dict(ast)
	#print(ast_dict)
	
#init dicts
init_globals_dict(globals_dict)
init_typedefs_dict(typedefs_dict)


kwargs = {"typedefs_dict": typedefs_dict, "globals_dict": globals_dict,
		  "current_function_dict":current_function_dict,"all_functions_dict":all_functions_dict,
		  "current_state":current_state
		  }
parse_whole_ast(ast_dict,**kwargs)

print(all_functions_dict)
print(globals_dict)
print(typedefs_dict)

	
