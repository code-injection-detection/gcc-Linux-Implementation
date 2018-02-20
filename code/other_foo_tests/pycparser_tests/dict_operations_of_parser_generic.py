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


def init_dict_of_decl_to_ret(**kwargs):
	globals_dict=kwargs["globals_dict"]
	typedefs_dict=kwargs["typedefs_dict"]
	current_function_dict=kwargs["current_function_dict"]
	all_functions_dict=kwargs["all_functions_dict"]
	current_state=kwargs["current_state"]
	
	dict_to_ret={}
	init_ast=kwargs["init_of_var_copied"]
	name_of_typedecl=name_of_decl=kwargs["name_of_decl"] #!!! not true in case of structs, but that's probably fine
	dict_to_ret["name"]=name_of_decl
	dict_to_ret["init_ast"]=init_ast
	return dict_to_ret


def create_dict_for_normal_variable(subast,**kwargs):
	item=subast
	globals_dict=kwargs["globals_dict"]
	typedefs_dict=kwargs["typedefs_dict"]
	current_function_dict=kwargs["current_function_dict"]
	all_functions_dict=kwargs["all_functions_dict"]
	current_state=kwargs["current_state"]
	
	dict_to_return=current_state["return_dict_of_decl--"+current_state["layer"]]
	init_ast=kwargs["init_of_var_copied"]
	decl_ast=kwargs["decl_ast"]
	name_of_typedecl=name_of_decl=kwargs["name_of_decl"]
	type_of_var=item["type"]["names"][0]
	type_of_var=identify_type(type_of_var)
	
	#delete the init because we want to recreate the global lines without it
	decl_ast["init"]=None
	original_c_lines=get_original_C_lines_of_a_dict(decl_ast)
	#create the dict (some parts of it have been initialized)
	dict_to_return["name"]=name_of_typedecl
	dict_to_return["type"]=type_of_var
	dict_to_return["original_c_decl"]=original_c_lines
	dict_to_return["init_ast"]=init_ast
	dict_to_return["size_of_variable"]=str(process_var_size_extended(type_of_var))
	
	return dict_to_return
	
	
def create_dict_for_ptr_variable(subast,**kwargs):
	item=subast
	globals_dict=kwargs["globals_dict"]
	typedefs_dict=kwargs["typedefs_dict"]
	current_function_dict=kwargs["current_function_dict"]
	all_functions_dict=kwargs["all_functions_dict"]
	current_state=kwargs["current_state"]
	
	dict_to_return=current_state["return_dict_of_decl--"+current_state["layer"]]
	init_ast=kwargs["init_of_var_copied"]
	decl_ast=kwargs["decl_ast"]
	name_of_decl=kwargs["name_of_decl"]
	type_of_var='ptr'
	
	#pointed element check
	type_of_pointed_element=kwargs["type_of_pointed_element"] #in a "nice" format
	#!!!!! other types
	
	#delete the init because we want to recreate the global lines without it
	decl_ast["init"]=None
	original_c_lines=get_original_C_lines_of_a_dict(decl_ast)
	#create the dict (some parts of it have been initialized)
	dict_to_return["name"]=name_of_decl
	dict_to_return["type"]=type_of_var
	dict_to_return["type_of_pointed_elem"]=type_of_pointed_element
	dict_to_return["size_of_pointed_elem"]=process_var_size_extended(type_of_pointed_element)
	dict_to_return["original_c_decl"]=original_c_lines
	dict_to_return["init_ast"]=init_ast
	dict_to_return["size_of_variable"]=str(process_var_size_extended(type_of_var))
	
	return dict_to_return
	

def create_dict_for_array_variable(subast,**kwargs):
	item=subast
	globals_dict=kwargs["globals_dict"]
	typedefs_dict=kwargs["typedefs_dict"]
	current_function_dict=kwargs["current_function_dict"]
	all_functions_dict=kwargs["all_functions_dict"]
	current_state=kwargs["current_state"]
	
	dict_to_return=current_state["return_dict_of_decl--"+current_state["layer"]]
	init_ast=kwargs["init_of_var_copied"]
	decl_ast=kwargs["decl_ast"]
	name_of_decl=kwargs["name_of_decl"]
	type_of_var='array'
	array_element=kwargs["array_element"]
		
	#init of arrays is not supported
	#save the dimension of the array
	dim_ast=copy.deepcopy(kwargs["array_dimension"])
	#check if dimension is an integer
	sz_of_array=get_original_C_lines_of_a_dict(dim_ast)
	if (RepresentsInt(sz_of_array)):
		size_of_array=str(process_var_size(array_element)*int(sz_of_array))
	else:
		size_of_array="variable_size"
	#create the dict (some parts of it have been initialized)
	dict_to_return["name"]=name_of_decl
	dict_to_return["type"]=type_of_var
	dict_to_return["type_of_array_elem"]=array_element
	dict_to_return["size_of_array_elem"]=process_var_size_extended(array_element)
	dict_to_return["size_of_array"]=size_of_array
	dict_to_return["dimension_ast"]=copy.deepcopy(dim_ast)
	dict_to_return["init_ast"]=init_ast
	dict_to_return["size_of_variable"]=size_of_array
	
	return dict_to_return	
	
	
def create_dict_for_struct_variable(subast,**kwargs):	
	item=subast
	globals_dict=kwargs["globals_dict"]
	typedefs_dict=kwargs["typedefs_dict"]
	current_function_dict=kwargs["current_function_dict"]
	all_functions_dict=kwargs["all_functions_dict"]
	current_state=kwargs["current_state"]
	
	init_ast=kwargs["init_of_var_copied"]
	decl_ast=kwargs["decl_ast"]
	name_of_struct=kwargs["name_of_struct"]
	#!!!!! other types
	name_of_decl=kwargs["name_of_decl"]
	type_of_var='struct'
	#init of structs is not supported

	dict_to_return={}
	dict_to_return["name"]=name_of_decl
	dict_to_return["type"]=type_of_var
	dict_to_return["name_of_type_of_struct"]=name_of_struct
	return dict_to_return
	
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
	pointed_element=kwargs["pointed_element"] #not in a "nice" format
	name_of_decl=kwargs["name_of_decl"]
	type_of_var='ptr'
	#delete the init because we want to recreate the global lines without it
	decl_ast["init"]=None
	original_c_lines_for_global=get_original_C_lines_of_a_dict(decl_ast)
	#pointed element check
	type_of_pointed_element=kwargs["type_of_pointed_element"] #in a "nice" format
	#!!!!! other types
	#create the dict
	globals_dict["simple_vars"][name_of_decl]={}
	globals_dict["simple_vars"][name_of_decl]["name"]=name_of_decl
	globals_dict["simple_vars"][name_of_decl]["type"]=type_of_var
	globals_dict["simple_vars"][name_of_decl]["type_of_pointed_elem"]=type_of_pointed_element
	globals_dict["simple_vars"][name_of_decl]["size_of_pointed_elem"]=process_var_size_extended(type_of_pointed_element)
	globals_dict["simple_vars"][name_of_decl]["order_of_decl"]=globals_dict["global_decl_order"]
	globals_dict["global_decl_order"]=globals_dict["global_decl_order"]+1
	globals_dict["simple_vars"][name_of_decl]["original_c_decl"]=original_c_lines_for_global
	if init_ast!=None:
		globals_dict["simple_vars"][name_of_decl]["order_of_init"]=globals_dict["global_init_order"]
		globals_dict["global_init_order"]=globals_dict["global_init_order"]+1
	globals_dict["simple_vars"][name_of_decl]["init_ast"]=init_ast
	


def add_global_array_variable(subast,**kwargs):
	item=subast
	globals_dict=kwargs["globals_dict"]
	typedefs_dict=kwargs["typedefs_dict"]
	current_function_dict=kwargs["current_function_dict"]
	all_functions_dict=kwargs["all_functions_dict"]
	current_state=kwargs["current_state"]
	
	init_ast=kwargs["init_of_var_copied"]
	decl_ast=kwargs["decl_ast"]
	array_element=kwargs["array_element"]
	#!!!!! other types
	name_of_decl=kwargs["name_of_decl"]
	type_of_var='array'
	#init of arrays is not supported
	#save the dimension of the array
	dim_ast=copy.deepcopy(item["dim"])
	#check if dimension is an integer
	sz_of_array=get_original_C_lines_of_a_dict(dim_ast)
	if (RepresentsInt(sz_of_array)):
		size_of_array=str(process_var_size(array_element)*int(sz_of_array))
	else:
		size_of_array="variable_size"
	#array element check

	#create the dict
	globals_dict["1_dim_arrays"][name_of_decl]={}
	globals_dict["1_dim_arrays"][name_of_decl]["name"]=name_of_decl
	globals_dict["1_dim_arrays"][name_of_decl]["type"]=type_of_var
	globals_dict["1_dim_arrays"][name_of_decl]["type_of_array_elem"]=array_element
	globals_dict["1_dim_arrays"][name_of_decl]["size_of_array_elem"]=process_var_size_extended(array_element)
	globals_dict["1_dim_arrays"][name_of_decl]["size_of_array"]=size_of_array
	globals_dict["1_dim_arrays"][name_of_decl]["order_of_decl"]=globals_dict["global_decl_order"]
	globals_dict["global_decl_order"]=globals_dict["global_decl_order"]+1
	globals_dict["1_dim_arrays"][name_of_decl]["dimension_ast"]=copy.deepcopy(dim_ast)
	if init_ast!=None:
		globals_dict["1_dim_arrays"][name_of_decl]["order_of_init"]=globals_dict["global_init_order"]
		globals_dict["global_init_order"]=globals_dict["global_init_order"]+1
	globals_dict["1_dim_arrays"][name_of_decl]["init_ast"]=init_ast
	
	
	
def add_struct_global_variable(subast,**kwargs):
	item=subast
	globals_dict=kwargs["globals_dict"]
	typedefs_dict=kwargs["typedefs_dict"]
	current_function_dict=kwargs["current_function_dict"]
	all_functions_dict=kwargs["all_functions_dict"]
	current_state=kwargs["current_state"]
	
	init_ast=kwargs["init_of_var_copied"]
	decl_ast=kwargs["decl_ast"]
	name_of_struct=kwargs["name_of_struct"]
	#!!!!! other types
	name_of_decl=kwargs["name_of_decl"]
	type_of_var='struct'
	#init of structs is not supported

	globals_dict["structs"][name_of_decl]={}
	globals_dict["structs"][name_of_decl]["name"]=name_of_decl
	globals_dict["structs"][name_of_decl]["type"]=type_of_var
	globals_dict["structs"][name_of_decl]["name_of_type_of_struct"]=name_of_struct
