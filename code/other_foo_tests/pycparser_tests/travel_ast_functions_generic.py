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
		
		
def identify_element(subast,**kwargs):
	item=subast
	globals_dict=kwargs["globals_dict"]
	typedefs_dict=kwargs["typedefs_dict"]
	current_function_dict=kwargs["current_function_dict"]
	all_functions_dict=kwargs["all_functions_dict"]
	current_state=kwargs["current_state"]
	
	if item["_nodetype"]=="TypeDecl":
		return identify_typedecl(item,**kwargs)
	elif item["_nodetype"]=="PtrDecl":
		return "pointer"
	#add more cases
	else:
		return "unidentified element"


def parse_normal_variable_typedecl(subast,**kwargs):
	item=subast
	globals_dict=kwargs["globals_dict"]
	typedefs_dict=kwargs["typedefs_dict"]
	current_function_dict=kwargs["current_function_dict"]
	all_functions_dict=kwargs["all_functions_dict"]
	current_state=kwargs["current_state"]
	
	name_of_typedecl=item['declname']
	if current_state["layer"]=="global": #global variable
		add_normal_global_variable(item,**kwargs)
		

def parse_normal_variable_ptrdecl(subast,**kwargs):
	item=subast
	globals_dict=kwargs["globals_dict"]
	typedefs_dict=kwargs["typedefs_dict"]
	current_function_dict=kwargs["current_function_dict"]
	all_functions_dict=kwargs["all_functions_dict"]
	current_state=kwargs["current_state"]
	
	name_of_ptrdecl=kwargs['name_of_decl']
	#identify the pointed element
	pointed_element=identify_element(item["type"],**kwargs)
	kwargs["pointed_element"]=pointed_element
	if current_state["layer"]=="global": #global variable
		add_normal_global_ptrvariable(item,**kwargs)


def parse_Decl(subast,**kwargs):
	item=subast
	globals_dict=kwargs["globals_dict"]
	typedefs_dict=kwargs["typedefs_dict"]
	current_function_dict=kwargs["current_function_dict"]
	all_functions_dict=kwargs["all_functions_dict"]
	current_state=kwargs["current_state"]
	
	name_of_decl=item["name"]
	kwargs["name_of_decl"]=name_of_decl
	#does this get initialized?
	init_ast=None
	if item['init']!=None: #this variable is initialized
		#save the initialization (delete the ast too in case of globals (later) )
		init_ast=from_dict(copy.deepcopy(item['init']))
	
	#since there is a problem with _nodetype access, we copy the item many times
	item1=copy.deepcopy(item)
	item2=copy.deepcopy(item)
	
	#start the checks
	if item1["type"]["_nodetype"]=="TypeDecl":
		#what is it? a struct? a normal variable?
		typedecl_of_decl=identify_typedecl(item["type"],**kwargs)
		if typedecl_of_decl=="unidentified element":
			print("ERROR: unidentified element")
			print_dicts("all",**kwargs)
			sys.exit(-1)
		if typedecl_of_decl=="normal_var":
			kwargs["init_of_var_copied"]=init_ast
			kwargs["decl_ast"]=item
			parse_normal_variable_typedecl(item["type"],**kwargs)

	if identify_element(item2["type"],**kwargs)=="pointer":
		#A pointer. Let's parse it as a normal pointer
		kwargs["init_of_var_copied"]=init_ast
		kwargs["decl_ast"]=item
		parse_normal_variable_ptrdecl(item["type"],**kwargs)
		
		

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
	
