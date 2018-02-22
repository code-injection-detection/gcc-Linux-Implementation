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
	if item["type"]["_nodetype"]=="Struct":
		return "typedecl_struct"
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
	elif item["_nodetype"]=="ArrayDecl":
		return "array"
	elif item["_nodetype"]=="Struct":
		return "struct"
	elif item["_nodetype"]=="FuncDecl":
		return "function_decl"
	#add more cases
	else:
		return "unidentified element"


def identify_element_nice(subast,**kwargs):
	item=subast
	globals_dict=kwargs["globals_dict"]
	typedefs_dict=kwargs["typedefs_dict"]
	current_function_dict=kwargs["current_function_dict"]
	all_functions_dict=kwargs["all_functions_dict"]
	current_state=kwargs["current_state"]
	
	if item["_nodetype"]=="Decl":
		return "just_a_decl"
	if item["_nodetype"]=="TypeDecl":
		if (identify_typedecl(item,**kwargs))=="normal_var":
			return identify_type(item["type"]["names"][0],**kwargs)
		elif (identify_typedecl(item,**kwargs))=="typedecl_struct":
			return "struct++++++++++name:"+item["type"]["name"] #give the fact that it is a struct in that form
		else:
			return "unidentified element"
	elif item["_nodetype"]=="PtrDecl":
		return "ptr"
	elif item["_nodetype"]=="ArrayDecl":
		return "array"
	elif item["_nodetype"]=="FuncDecl":
		return "function_decl"
	#add more cases
	else:
		return "unidentified element"
		


def extract_full_type_of_var(item,**kwargs):
	str_to_ret=""
	if "type" not in item:
		return str_to_ret
	else:
		str_to_ret+=identify_element_nice(item,**kwargs)
		next_step_str=extract_full_type_of_var(item["type"],**kwargs)
		if (next_step_str==""):
			return str_to_ret
		else:
			return str_to_ret+"->"+ next_step_str


def parse_normal_variable_typedecl(subast,**kwargs):
	item=subast
	globals_dict=kwargs["globals_dict"]
	typedefs_dict=kwargs["typedefs_dict"]
	current_function_dict=kwargs["current_function_dict"]
	all_functions_dict=kwargs["all_functions_dict"]
	current_state=kwargs["current_state"]
	
	name_of_typedecl=item['declname']
	dict_to_return=current_state["return_dict_of_decl--"+current_state["layer"]]
	kwargs["full_type"]=extract_full_type_of_var(item,**kwargs)
	
	if current_state["layer"]=="global": #global variable
		add_normal_global_variable(item,**kwargs)
	else:
		dict_to_return=create_dict_for_normal_variable(item,**kwargs)
	
	current_state["return_dict_of_decl--"+current_state["layer"]]=dict_to_return
	
	
	
	
def parse_struct_variable_typedecl(subast,**kwargs):
	item=subast
	globals_dict=kwargs["globals_dict"]
	typedefs_dict=kwargs["typedefs_dict"]
	current_function_dict=kwargs["current_function_dict"]
	all_functions_dict=kwargs["all_functions_dict"]
	current_state=kwargs["current_state"]
	
	name_of_typedecl=item['declname']
	dict_to_return=current_state["return_dict_of_decl--"+current_state["layer"]]
	name_of_struct=add_struct_to_types(item["type"],**kwargs) #add the struct to the types if it is not already there
	kwargs["name_of_struct"]=name_of_struct
	kwargs["full_type"]=extract_full_type_of_var(item,**kwargs)
	
	if current_state["layer"]=="global": #global variable
		add_struct_global_variable(item,**kwargs)
	else:
		dict_to_return=create_dict_for_struct_variable(item,**kwargs)
	
	current_state["return_dict_of_decl--"+current_state["layer"]]=dict_to_return
		

def parse_normal_variable_ptrdecl(subast,**kwargs):
	item=subast
	globals_dict=kwargs["globals_dict"]
	typedefs_dict=kwargs["typedefs_dict"]
	current_function_dict=kwargs["current_function_dict"]
	all_functions_dict=kwargs["all_functions_dict"]
	current_state=kwargs["current_state"]
	
	name_of_ptrdecl=kwargs['name_of_decl']
	dict_to_return=current_state["return_dict_of_decl--"+current_state["layer"]]
	#identify the pointed element
	pointed_element=identify_element(item["type"],**kwargs)
	kwargs["pointed_element"]=pointed_element
	kwargs["type_of_pointed_element"]=identify_element_nice(item["type"],**kwargs)
	kwargs["full_type"]=extract_full_type_of_var(item,**kwargs)
	
	if current_state["layer"]=="global": #global variable
		add_normal_global_ptrvariable(item,**kwargs)
	else:
		dict_to_return=create_dict_for_ptr_variable(item,**kwargs)
	
	current_state["return_dict_of_decl--"+current_state["layer"]]=dict_to_return
		
		
def parse_normal_variable_arraydecl(subast,**kwargs):
	item=subast
	globals_dict=kwargs["globals_dict"]
	typedefs_dict=kwargs["typedefs_dict"]
	current_function_dict=kwargs["current_function_dict"]
	all_functions_dict=kwargs["all_functions_dict"]
	current_state=kwargs["current_state"]
	
	name_of_arraydecl=kwargs['name_of_decl']
	dict_to_return=current_state["return_dict_of_decl--"+current_state["layer"]]
	#identify the type of the element of the array
	array_element=identify_element_nice(item["type"],**kwargs)
	kwargs["array_element"]=array_element
	kwargs["array_dimension"]=copy.deepcopy(item["dim"])
	kwargs["full_type"]=extract_full_type_of_var(item,**kwargs)
	
	if current_state["layer"]=="global": #global array
		add_global_array_variable(item,**kwargs)
	else:
		dict_to_return=create_dict_for_array_variable(item,**kwargs)
		
	current_state["return_dict_of_decl--"+current_state["layer"]]=dict_to_return


def add_function_decl(subast,**kwargs):
	item=subast
	globals_dict=kwargs["globals_dict"]
	typedefs_dict=kwargs["typedefs_dict"]
	current_function_dict=kwargs["current_function_dict"]
	all_functions_dict=kwargs["all_functions_dict"]
	current_state=kwargs["current_state"]

	name_of_function=kwargs["name_of_decl"]
		
	params_list=item["args"]["params"]
	for param in params_list:
		if identify_element_nice(param,**kwargs)=="just_a_decl":
			parse_Decl(param,**kwargs)
			#now there is a dict of that decl in the current_state waiting for us to grab
			dict_returned=current_state["return_dict_of_decl--"+current_state["layer"]]
			all_functions_dict[name_of_function]["params"].append(copy.deepcopy(dict_returned))	
	
	

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
		init_ast=from_dict(copy.deepcopy(item)['init'])
	
	kwargs["init_of_var_copied"]=init_ast
	kwargs["decl_ast"]=item
	
	#if not a global variable, we need to return a dictionary to be added
	dict_to_return=init_dict_of_decl_to_ret(**kwargs)
	current_state["return_dict_of_decl--"+current_state["layer"]]=dict_to_return
	
	#since there is a problem with _nodetype access (gets deleted..?), we copy the item many times
	item1=copy.deepcopy(item)
	item2=copy.deepcopy(item)
	item3=copy.deepcopy(item)
	item4=copy.deepcopy(item)
	item5=copy.deepcopy(item)
	item_parse_for_types=copy.deepcopy(item)
	
	#does that decl contain any typedefs deep inside (perhaps after a ton of pointers?)
	parse_for_type_declarations(item_parse_for_types,**kwargs)
	
	#start the checks
	if item1["type"]["_nodetype"]=="TypeDecl":
		#what is it? a struct? a normal variable?
		typedecl_of_decl=identify_typedecl(item["type"],**kwargs)
		if typedecl_of_decl=="unidentified element":
			print("ERROR: unidentified element")
			print_dicts("all",**kwargs)
			sys.exit(-1)
		if typedecl_of_decl=="normal_var":
			parse_normal_variable_typedecl(item["type"],**kwargs)
		if typedecl_of_decl=="typedecl_struct": #variable as a struct
			parse_struct_variable_typedecl(item["type"],**kwargs)
		if typedecl_of_decl=="typedecl_identifier": #perhaps a typedef?
			parse_typedecl_identifier(item["type"],**kwargs)
			pass

	if identify_element(item2["type"],**kwargs)=="pointer":
		#A pointer. Let's parse it as a normal pointer
		parse_normal_variable_ptrdecl(item["type"],**kwargs)
		
	if identify_element(item3["type"],**kwargs)=="array":
		parse_normal_variable_arraydecl(item["type"],**kwargs)
	
	if identify_element(item4["type"],**kwargs)=="struct": 
		#we have a struct definition (just a definition, no variable)
		#add struct to the types
		add_struct_to_types(item["type"],**kwargs)
		
	if identify_element(item5["type"],**kwargs)=="function_decl":
		add_function_decl(item["type"],**kwargs)
		
	
		
		
def parse_Typedef(subast,**kwargs):
	item=subast
	globals_dict=kwargs["globals_dict"]
	typedefs_dict=kwargs["typedefs_dict"]
	current_function_dict=kwargs["current_function_dict"]
	all_functions_dict=kwargs["all_functions_dict"]
	current_state=kwargs["current_state"]
	
	name_of_typedef=item["name"]
	kwargs["name_of_typedef"]=name_of_typedef
	
	#init typedef
	typedefs_dict["typedefs"][name_of_typedef]={}
	
	#check type of typedef
	if (item["type"]["_nodetype"]=="TypeDecl") and (item["type"]["type"]["_nodetype"]=="Struct"): 
		#struct typedef
		#add struct to types
		name_of_struct=add_struct_to_types(item["type"]["type"],**kwargs)
		typedefs_dict["typedefs"][name_of_typedef]["type_of_typedef"]="struct"
		typedefs_dict["typedefs"][name_of_typedef]["struct_that_is_typedefed"]=name_of_struct
	#!!! add support for more types
	else:
		print("ERROR:Unsupported typedef!")
	
	
	
def parse_fun_body(subast,**kwargs):
	item=subast
	globals_dict=kwargs["globals_dict"]
	typedefs_dict=kwargs["typedefs_dict"]
	current_function_dict=kwargs["current_function_dict"]
	all_functions_dict=kwargs["all_functions_dict"]
	current_state=kwargs["current_state"]
	
	name_of_function=kwargs["name_of_function"]
	
	locals_list=item["block_items"]
	for local_var in locals_list:
		if identify_element_nice(local_var,**kwargs)=="just_a_decl":
			parse_Decl(local_var,**kwargs)
			#now there is a dict of that decl in the current_state waiting for us to grab
			dict_returned=current_state["return_dict_of_decl--"+current_state["layer"]]
			all_functions_dict[name_of_function]["locals"].append(copy.deepcopy(dict_returned))
	
	
	
def parse_Funcdef(subast,**kwargs):
	item=subast
	globals_dict=kwargs["globals_dict"]
	typedefs_dict=kwargs["typedefs_dict"]
	current_function_dict=kwargs["current_function_dict"]
	all_functions_dict=kwargs["all_functions_dict"]
	current_state=kwargs["current_state"]
	
	
	name_of_function=item["decl"]["name"]
	kwargs["name_of_function"]=name_of_function
	#create function dict
	init_function_dict(name_of_function,all_functions_dict)
	
	#change scope
	tempstate=copy.deepcopy(current_state) #hold this in this temp variable
	#update the state to show where we are
	current_state["layer"]="in_function"+"++++++++++"+name_of_function
	current_state["in_function"]=name_of_function
	
	#parse the decl part (the arguments etc)
	#this part will also init the function dict, give us the name of the function etc.
	if "decl" in item:
		parse_Decl(item["decl"],**kwargs)	
	
	#parse function body (for local vars etc)
	parse_fun_body(item["body"],**kwargs)
	
	
	#restore the scope
	#well we need the inner stuff as well, for functions that have already acquired their current state through the kwargs
	for key,value in tempstate.items():
		# do something with value
		current_state[key] = copy.deepcopy(tempstate[key])
	current_state=copy.deepcopy(tempstate)
	kwargs["current_state"]=current_state
	
	

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
	if (type_of_ast=="Typedef"):
		parse_Typedef(item,**kwargs)
	if (type_of_ast=="FuncDef"):
		parse_Funcdef(item,**kwargs)
	


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
	


	
	
def add_struct_to_types(subast,**kwargs):
	item=subast
	globals_dict=kwargs["globals_dict"]
	typedefs_dict=kwargs["typedefs_dict"]
	current_function_dict=kwargs["current_function_dict"]
	all_functions_dict=kwargs["all_functions_dict"]
	current_state=kwargs["current_state"]
	
	#important! the name of the struct is not in the "Decl" block!
	name_of_struct=item["name"]
	if (name_of_struct not in typedefs_dict["structs"]): #if it has been added before don't add it again
		init_typedef_struct_dict(name_of_struct,**kwargs)
		kwargs["name_of_struct"]=name_of_struct
		
		tempstate=copy.deepcopy(current_state) #hold this in this temp variable
		#update the state to show where we are
		current_state["layer"]=current_state["layer"]+"_struct_"+name_of_struct
		current_state["in_struct"]=name_of_struct
		
		for decl in item["decls"]:
			parse_Decl(decl,**kwargs)
			#now there is a dict of that decl in the current_state waiting for us to grab
			dict_returned=current_state["return_dict_of_decl--"+current_state["layer"]]
			typedefs_dict["structs"][name_of_struct]["decls"].append(copy.deepcopy(dict_returned))
			
		#restore the state
		#well we need the inner stuff as well, for functions that have already acquired their current state through the kwargs
		for key, value in tempstate.items():
			# do something with value
			current_state[key] = copy.deepcopy(tempstate[key])
		current_state=copy.deepcopy(tempstate)
		kwargs["current_state"]=current_state
		
		#now calculate the size of the struct
		struct_sz="0"
		for decl in typedefs_dict["structs"][name_of_struct]["decls"]:
			sz_of_new_var=decl["size_of_variable"]
			if (sz_of_new_var=="variable_size"):
				typedefs_dict["structs"][name_of_struct]['size_of_struct']="variable_size"
				struct_sz="variable_size"
				break
			else:
				struct_sz=str(int(struct_sz)+int(sz_of_new_var))
		typedefs_dict["structs"][name_of_struct]['size_of_struct']=str(struct_sz)
	
	#return name of struct
	return name_of_struct
		
		
def parse_for_type_declarations(subast,**kwargs):
	item=subast
	globals_dict=kwargs["globals_dict"]
	typedefs_dict=kwargs["typedefs_dict"]
	current_function_dict=kwargs["current_function_dict"]
	all_functions_dict=kwargs["all_functions_dict"]
	current_state=kwargs["current_state"]
	
	#check if there are any declarations
	while (True):
		#go down the syntax tree and search for structs 
		if ("_nodetype" in item) and (item["_nodetype"]== "Struct"):
			add_struct_to_types(item,**kwargs)
		#!!! add other types
		if ("type" in item):
			item=item["type"]
		else:
			break

