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
import custom_c_generator


#initialization of dicts
def init_globals_dict(globals_dict):
	globals_dict["global_init_order"]=1
	globals_dict["global_decl_order"]=1
	globals_dict["simple_vars"]={}
	globals_dict["1_dim_arrays"]={}
	globals_dict["structs"]={}
	
	
def init_typedefs_dict(typedefs_dict):
	typedefs_dict["structs"]={}
	typedefs_dict["typedefs"]={}
