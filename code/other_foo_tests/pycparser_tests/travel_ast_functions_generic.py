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


def identify_typedecl(subast,**kwargs):
	item=subast
	globals_dict=kwargs["globals_dict"]
	typedefs_dict=kwargs["typedefs_dict"]
	current_function_dict=kwargs["current_function_dict"]
	all_functions_dict=kwargs["all_functions_dict"]
	current_state=kwargs["current_state"]
	
	if item["type"]["_nodetype"]=="IdentifierType":
		return "normal_var"	
	#add more cases
	else:
		return "unidentified element"


def parse_normal_variable_typedecl(subast,**kwargs)
	item=subast
	globals_dict=kwargs["globals_dict"]
	typedefs_dict=kwargs["typedefs_dict"]
	current_function_dict=kwargs["current_function_dict"]
	all_functions_dict=kwargs["all_functions_dict"]
	current_state=kwargs["current_state"]
	
	name_of_typedecl=item["declname"]
	if current_state["layer"]=="global": #global variable
		init_ast=kwargs["init_of_var"]
		type_of_var=item["type"]["names"][0]
		type_of_var=identify_type(type_of_var)
		#create the dict
		globals_dict["simple_vars"][name_of_typedecl]={}
		globals_dict["simple_vars"][name_of_typedecl]["name"]=name_of_typedecl
		globals_dict["simple_vars"][name_of_typedecl]["order_of_decl"]=globals_dict["global_decl_order"]
		globals_dict["global_decl_order"]=globals_dict["global_decl_order"]+1
		#do the rest
		
		
		

def parse_Decl(subast,**kwargs)
	item=subast
	globals_dict=kwargs["globals_dict"]
	typedefs_dict=kwargs["typedefs_dict"]
	current_function_dict=kwargs["current_function_dict"]
	all_functions_dict=kwargs["all_functions_dict"]
	current_state=kwargs["current_state"]
	
	name_of_decl=item["name"]
	#does this get initialized?
	init_ast=None
	if item['init']!=None: #this variable is initialized
		#save the initialization (!!!! delete it too in case of globals..??)
		init_ast=from_dict(copy.deepcopy(item['init']))
	
	if item["type"]["_nodetype"]=="TypeDecl":
		#what is it? a struct? a normal variable?
		typedecl_of_decl=identify_typedecl(item["type"],**kwargs)
		if typedecl_of_decl=="unidentified element":
			print("ERROR: unidentified element")
			print_dicts("all",**kwargs)
			sys.exit(-1)
		if typedecl_of_decl=="normal_var":
			kwargs["init_of_var"]=init_ast
			parse_normal_variable_typedecl(item["type"],**kwargs)
	

def parse_subast(subast,**kwargs):
	item=subast
	globals_dict=kwargs["globals_dict"]
	typedefs_dict=kwargs["typedefs_dict"]
	current_function_dict=kwargs["current_function_dict"]
	all_functions_dict=kwargs["all_functions_dict"]
	current_state=kwargs["current_state"]
	type_of_ast=item["_nodetype"]
	if (type_of_ast=="Decl"):
		parse_Decl(item,**kwargs)
	


def parse_whole_ast(ast_dict,**kwargs):
	item=ast_dict
	globals_dict=kwargs["globals_dict"]
	typedefs_dict=kwargs["typedefs_dict"]
	current_function_dict=kwargs["current_function_dict"]
	all_functions_dict=kwargs["all_functions_dict"]
	current_state=kwargs["current_state"]
	if item["_nodetype"]!="FileAST":
		print("ERROR! we need nodetype to be FileAST")
		sys.exit(-1)
	
	#we are at the outermost layer
	current_state["layer"]="global"
	for subast in item["ext"]:
		parse_subast(subast,**kwargs)
	
