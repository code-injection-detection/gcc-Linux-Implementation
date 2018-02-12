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





def add_normal_global_variable(subast,**kwargs):
	item=subast
	globals_dict=kwargs["globals_dict"]
	typedefs_dict=kwargs["typedefs_dict"]
	current_function_dict=kwargs["current_function_dict"]
	all_functions_dict=kwargs["all_functions_dict"]
	current_state=kwargs["current_state"]
	
	init_ast=kwargs["init_of_var_copied"]
	decl_ast=kwargs["decl_ast"]
	name_of_typedecl=name_of_decl=kwargs["name_of_decl"]
	type_of_var=item["type"]["names"][0]
	type_of_var=identify_type(type_of_var)
	#delete the init because we want to recreate the global lines without it
	decl_ast["init"]=None
	original_c_lines_for_global=get_original_C_lines_of_a_dict(decl_ast)
	#create the dict
	globals_dict["simple_vars"][name_of_typedecl]={}
	globals_dict["simple_vars"][name_of_typedecl]["name"]=name_of_typedecl
	globals_dict["simple_vars"][name_of_typedecl]["type"]=type_of_var
	globals_dict["simple_vars"][name_of_typedecl]["order_of_decl"]=globals_dict["global_decl_order"]
	globals_dict["global_decl_order"]=globals_dict["global_decl_order"]+1
	globals_dict["simple_vars"][name_of_typedecl]["original_c_decl"]=original_c_lines_for_global
	if init_ast!=None:
		globals_dict["simple_vars"][name_of_typedecl]["order_of_init"]=globals_dict["global_init_order"]
		globals_dict["global_init_order"]=globals_dict["global_init_order"]+1
	globals_dict["simple_vars"][name_of_typedecl]["init_ast"]=init_ast


def add_normal_global_ptrvariable(subast,**kwargs):
	item=subast
	globals_dict=kwargs["globals_dict"]
	typedefs_dict=kwargs["typedefs_dict"]
	current_function_dict=kwargs["current_function_dict"]
	all_functions_dict=kwargs["all_functions_dict"]
	current_state=kwargs["current_state"]
	
	init_ast=kwargs["init_of_var_copied"]
	decl_ast=kwargs["decl_ast"]
	pointed_element=kwargs["pointed_element"]
	name_of_decl=kwargs["name_of_decl"]
	type_of_var='ptr'
	#delete the init because we want to recreate the global lines without it
	decl_ast["init"]=None
	original_c_lines_for_global=get_original_C_lines_of_a_dict(decl_ast)
	#pointed element check
	type_of_pointed_element=""
	if (pointed_element=="pointer"):
		type_of_pointed_element="ptr"
	if (pointed_element=="normal_var"):
		#find the proper type
		type_of_pointed_element=identify_type(item["type"]["type"]["names"][0])
	#!!!!! other types
	#create the dict
	globals_dict["simple_vars"][name_of_decl]={}
	globals_dict["simple_vars"][name_of_decl]["name"]=name_of_decl
	globals_dict["simple_vars"][name_of_decl]["type"]=type_of_var
	globals_dict["simple_vars"][name_of_decl]["type_of_pointed_elem"]=type_of_pointed_element
	globals_dict["simple_vars"][name_of_decl]["size_of_pointed_elem"]=process_var_size(type_of_pointed_element)
	globals_dict["simple_vars"][name_of_decl]["order_of_decl"]=globals_dict["global_decl_order"]
	globals_dict["global_decl_order"]=globals_dict["global_decl_order"]+1
	globals_dict["simple_vars"][name_of_decl]["original_c_decl"]=original_c_lines_for_global
	if init_ast!=None:
		globals_dict["simple_vars"][name_of_decl]["order_of_init"]=globals_dict["global_init_order"]
		globals_dict["global_init_order"]=globals_dict["global_init_order"]+1
	globals_dict["simple_vars"][name_of_decl]["init_ast"]=init_ast
	
