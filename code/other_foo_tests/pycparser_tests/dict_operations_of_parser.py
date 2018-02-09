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
import custom_c_generator


#initialization of dicts
def init_globals_dict(globals_dict):
	globals_dict["global_init_order"]=1
	globals_dict["struct"]={}
	for type_of_var in ['char','int','long','float','double','ptr','arb_ptr']:
		globals_dict[type_of_var]={}
		globals_dict[type_of_var]["names"]=[]
		globals_dict[type_of_var]["original_c_decl"]=[]
		globals_dict[type_of_var]["number"]=0
		globals_dict[type_of_var]["init"]=[]
		globals_dict[type_of_var]["order_of_init"]=[]
		globals_dict['1_dim_array_of_'+type_of_var]={} #for the global arrays
		globals_dict['1_dim_array_of_'+type_of_var]["names"]=[]
		globals_dict['1_dim_array_of_'+type_of_var]["original_c_decl"]=[]
		globals_dict['1_dim_array_of_'+type_of_var]["number"]=0
		globals_dict['1_dim_array_of_'+type_of_var]['dimension_asts']=[]
		globals_dict['1_dim_array_of_'+type_of_var]["size_of_pointed_elements"]=[]
		globals_dict['1_dim_array_of_'+type_of_var]['order_of_init']=[]
		globals_dict['1_dim_array_of_'+type_of_var]['type_of_pointed_var']=type_of_var
		if type_of_var=='ptr':
			globals_dict[type_of_var]["size_of_pointed_elements"]=[]
			globals_dict[type_of_var]["is_created_because_of_global_array"]=[]
			globals_dict[type_of_var]['type_of_pointed_var']=[]
			
			
			
def init_function_dict(current_function_dict):
	#params
	fun_params=[]
	current_function_dict["params"]={}
	current_function_dict["params"]['order_of_param_call']=1
	for type_of_var in ['char','int','long','float','double','ptr','arb_ptr']:
		current_function_dict["params"][type_of_var]={}
		current_function_dict["params"][type_of_var]["names"]=[]
		current_function_dict["params"][type_of_var]["number"]=0
		current_function_dict["params"][type_of_var]["order_in_calling"]=[]
		if type_of_var=='ptr':
			current_function_dict["params"][type_of_var]["size_of_pointed_elements"]=[]
			current_function_dict["params"][type_of_var]['type_of_pointed_var']=[]
			
	#local vars
	fun_locals=[]
	current_function_dict["locals"]={}
	current_function_dict["locals"]["struct"]={}
	current_function_dict["locals"]["locals_init_order"]=1
	current_function_dict["local_init_maxorder"]=0
	for type_of_var in ['char','int','long','float','double','ptr','arb_ptr']:
		current_function_dict["locals"][type_of_var]={}
		current_function_dict["locals"][type_of_var]["names"]=[]
		current_function_dict["locals"][type_of_var]["number"]=0
		current_function_dict["locals"][type_of_var]["init"]=[]
		current_function_dict["locals"][type_of_var]["order_of_init"]=[]
		if type_of_var=='ptr':
			current_function_dict["locals"][type_of_var]["size_of_pointed_elements"]=[]
			current_function_dict["locals"][type_of_var]["is_created_because_of_local_array"]=[] #for locally declared arrays of non-constant size
			current_function_dict["locals"][type_of_var]["dimension_asts"]=[]
			current_function_dict["locals"][type_of_var]['type_of_pointed_var']=[]
		if type_of_var=='arb_ptr':
			current_function_dict["locals"][type_of_var]["size_of_objects"]=[]
			current_function_dict["locals"][type_of_var]["dimension_asts"]=[]
			current_function_dict["locals"][type_of_var]['type_of_pointed_var']=[]		
			
	
	

def init_typedefs_dict(typedefs_dict):
	typedefs_dict["structs"]={}
	#add more stuff later
				
				
				
def process_param_decl(param,dict_for_var,extra_info):
	#fills the dictionary with info for that function parameter
	name_of_param=param["name"]
	if "names" in  param["type"]["type"]: #see if it's a simple variable
		type_of_param=param["type"]["type"]["names"]
		our_type_of_param=identify_type(type_of_param)
	elif param["type"]["_nodetype"]=="PtrDecl": #it's probably a pointer to something
		our_type_of_param ='ptr'
	dict_for_var[our_type_of_param]["number"]+=1
	dict_for_var[our_type_of_param]["names"].append(name_of_param)
	dict_for_var[our_type_of_param]["order_in_calling"].append(dict_for_var['order_of_param_call'])
	dict_for_var['order_of_param_call']+=1
	
	if our_type_of_param=='ptr':
		#see the size of the pointed element
		if (param["type"]["type"]["_nodetype"]=="PtrDecl"): #pointer to pointer
			size_of_pointed_elem=8
			type_of_pointed_var='ptr'
			dict_for_var[our_type_of_param]['type_of_pointed_var'].append(type_of_pointed_var)
		elif (param["type"]["type"]["_nodetype"]=="TypeDecl"): #pointer to sth else
			type_of_pointed_var=identify_type(param["type"]["type"]["type"]["names"][0])
			size_of_pointed_elem=process_var_size(type_of_pointed_var)
			dict_for_var[our_type_of_param]['type_of_pointed_var'].append(type_of_pointed_var)
		else:
			sys.stderr.write("ERROR in finding the parameter size for parameters.\n")
			exit(-1)
		dict_for_var[our_type_of_param]["size_of_pointed_elements"].append(size_of_pointed_elem)
	if (extra_info["from"]=="fun_params"):
		#DEFINITELY make a case for arb_ptr in the future !!!!!!!!!!!!!!!!!!!!!!!!!!!!
		#arb_ptr??
		pass
			
			
def process_local_decl(local,dict_for_var,extra_info):
	#fills the dictionary with info for that local variable of the function
	#change names because of old code
	possible_decl=local
	name_of_local_var=possible_decl["name"]
	init_of_local=possible_decl["init"]
	is_array=0
	size_of_constant_array=0
	expression_of_non_constant_array=None
	if "names" in  possible_decl["type"]["type"]: #see if it's a simple variable
		type_of_local_var=possible_decl["type"]["type"]["names"]
		our_type_of_possible_decl=identify_type(type_of_local_var)
	elif possible_decl["type"]["_nodetype"]=="PtrDecl": #it's probably a pointer to something
		our_type_of_possible_decl ='ptr'
		dict_for_var['ptr']["is_created_because_of_local_array"].append(0) #the pointer is there by the programmer, we did not create it in place of an array
		dict_for_var['ptr']["dimension_asts"].append(None)
	elif possible_decl["type"]["_nodetype"]=="ArrayDecl": #it's an array!
		is_array=1
		if possible_decl["type"]["dim"]["_nodetype"]=="Constant": #with a number as a size
			our_type_of_possible_decl='arb_ptr' 
			size_of_constant_array=int(possible_decl["type"]["dim"]["value"])
			dict_for_var['arb_ptr']["dimension_asts"].append(from_dict(copy.deepcopy(possible_decl["type"]["dim"])))
		else:
			our_type_of_possible_decl='ptr' #create a local pointer instead of the array
			expression_of_non_constant_array=(from_dict(copy.deepcopy(possible_decl["type"]["dim"]))) #store its expression because that's the size
			dict_for_var['ptr']["is_created_because_of_local_array"].append(1)
			dict_for_var['ptr']["dimension_asts"].append(expression_of_non_constant_array)
			
	dict_for_var[our_type_of_possible_decl]["number"]+=1
	dict_for_var[our_type_of_possible_decl]["names"].append(name_of_local_var)
	if  (init_of_local!=None):
		dict_for_var[our_type_of_possible_decl]["init"].append(copy.deepcopy(from_dict(init_of_local)))
		dict_for_var[our_type_of_possible_decl]["order_of_init"].append(dict_for_var["locals_init_order"])
		dict_for_var["locals_init_order"]+=1
		if (is_array):
			sys.stderr.write("Array initialization not supported.\n")
			exit(-1)
	else:
		dict_for_var[our_type_of_possible_decl]["init"].append(None)
		dict_for_var[our_type_of_possible_decl]["order_of_init"].append(-1)
		
	if our_type_of_possible_decl=='ptr' or our_type_of_possible_decl=='arb_ptr':
		#!!!!!!!!!!!!!! SOS: is arb_ptr correct here? arb_ptr is for constant size arrays only !!!!!!!!!!!!!!!!!
		#our variable is a pointer (or an array)
		#see the size of the pointed element
		if (possible_decl["type"]["type"]["_nodetype"]=="PtrDecl"): #pointer to pointer
			size_of_pointed_elem=8
			dict_for_var[our_type_of_possible_decl]['type_of_pointed_var'].append('ptr')
		elif (possible_decl["type"]["type"]["_nodetype"]=="TypeDecl"): #pointer to non-pointer
			type_of_pointed_var=identify_type(possible_decl["type"]["type"]["type"]["names"][0])
			size_of_pointed_elem=process_var_size(type_of_pointed_var)
			dict_for_var[our_type_of_possible_decl]['type_of_pointed_var'].append(type_of_pointed_var)
		else:
			sys.stderr.write("ERROR in finding the parameter size for locals.\n")
			exit(-1)
		if (our_type_of_possible_decl=='ptr'):	
			dict_for_var[our_type_of_possible_decl]["size_of_pointed_elements"].append(size_of_pointed_elem)
		else:
			dict_for_var[our_type_of_possible_decl]["size_of_objects"].append(int(size_of_constant_array*size_of_pointed_elem))
			
			
#filling of dicts

def fill_function_dict(subast,current_function_dict):
	#parses a function definition and fills the function dict
	item=subast
	fun_metadata=item["decl"]
		
	#init locals and params
	init_function_dict(current_function_dict)
	
	#name + return type
	current_function_dict["name"]=fun_metadata["name"]
	if fun_metadata["type"]["type"]["_nodetype"]=="PtrDecl":
		return_type='ptr'
	else:	
		return_type=fun_metadata["type"]["type"]["type"]["names"][0]
	current_function_dict["return_type"]=identify_type(return_type)
	
	
	#fill the dicts
	extra_info={}
	#params
	if fun_metadata["type"]["args"]!=None:
		fun_params=fun_metadata["type"]["args"]["params"]
		for param in fun_params:
			if (param["_nodetype"]=="Decl"):
				extra_info["from"]="fun_params"
				process_param_decl(param,current_function_dict["params"],extra_info)
			
			
	#local vars
	fun_body=item["body"]["block_items"]
	#the locals dict has been initialized
			
	if (fun_body==None):
		return
	for possible_decl in fun_body:
		if (possible_decl["_nodetype"]=="Decl"):
			extra_info["from"]="fun_locals"
			process_local_decl(possible_decl,current_function_dict["locals"],extra_info)
			
	#erase the declarations/initializations of the local variables, since we will do them manually
	num_of_nodes_not_deleted=0
	while (len(fun_body)>num_of_nodes_not_deleted):
		if (fun_body[num_of_nodes_not_deleted]["_nodetype"]=="Decl"):
			del(fun_body[num_of_nodes_not_deleted])
		else:
			num_of_nodes_not_deleted+=1
			


def fill_global_dict(subast,globals_dict,typedefs_dict,ast_dict):
	item=subast
	name_of_global=item["name"]
	init_ast=None
	if item['init']!=None: #this global is initialized
		#save and then delete the initialization
		init_ast=from_dict(copy.deepcopy(item['init']))
		item['init']=None
	original_c_lines_for_global=get_original_lines_in_C_of_ext_object(name_of_global,1,ast_dict)
	gc.collect()
	type_of_global=''
	if item["type"]["_nodetype"]=='TypeDecl': #typical, non array global (int,long etc), or struct
		if (item["type"]["type"]["_nodetype"]=="Struct"): #it's a struct
			add_struct_to_types(item["type"],typedefs_dict)
			type_of_global="struct"
			name=item["type"]["declname"]
			globals_dict[type_of_global][name]={}
			globals_dict[type_of_global][name]["name"]=name
			globals_dict[type_of_global][name]["type_of_struct"]=item["type"]["type"]["name"]
		else:
			#if not a struct (simple variable)
			type_of_global=item["type"]["type"]["names"][0]
			globals_dict[identify_type(type_of_global)]["names"].append(name_of_global)
			globals_dict[identify_type(type_of_global)]["original_c_decl"].append(original_c_lines_for_global)
			globals_dict[identify_type(type_of_global)]["number"]+=1
			if init_ast!=None:
				globals_dict[identify_type(type_of_global)]["init"].append(init_ast)
				globals_dict[identify_type(type_of_global)]["order_of_init"].append(globals_dict["global_init_order"])
				globals_dict["global_init_order"]+=1
			else:
				globals_dict[identify_type(type_of_global)]["init"].append(None)
				globals_dict[identify_type(type_of_global)]["order_of_init"].append(-1)
	elif item["type"]["_nodetype"]=='PtrDecl': #pointer
		type_of_global='ptr'
		globals_dict[identify_type(type_of_global)]["names"].append(name_of_global)
		globals_dict[identify_type(type_of_global)]["original_c_decl"].append(original_c_lines_for_global)
		globals_dict[identify_type(type_of_global)]["number"]+=1
		if init_ast!=None:
			globals_dict[identify_type(type_of_global)]["init"].append(init_ast)
			globals_dict[identify_type(type_of_global)]["order_of_init"].append(global_init_order)
			global_init_order+=1
		else:
			globals_dict[identify_type(type_of_global)]["init"].append(None)
			globals_dict[identify_type(type_of_global)]["order_of_init"].append(-1)
		globals_dict[identify_type(type_of_global)]["is_created_because_of_global_array"].append(0)
		if (item["type"]["type"]["_nodetype"]=="PtrDecl"): #pointer to pointer
			size_of_pointed_elem=8
			globals_dict[identify_type(type_of_global)]['type_of_pointed_var'].append('ptr')
		elif (item["type"]["type"]["_nodetype"]=="TypeDecl"): #pointer to non pointer
			size_of_pointed_elem=process_var_size(identify_type(item["type"]["type"]["type"]["names"][0]))
			globals_dict[identify_type(type_of_global)]['type_of_pointed_var'].append(identify_type(item["type"]["type"]["type"]["names"][0]))
		else:
			sys.stderr.write("ERROR in finding the size of pointer elements for globals.\n")
			exit(-1)
		globals_dict[identify_type(type_of_global)]["size_of_pointed_elements"].append(size_of_pointed_elem)
	elif item["type"]["_nodetype"]=="ArrayDecl": #global array
		global_of_type=''
		if (item["type"]["type"]["_nodetype"]=="PtrDecl"): #array of pointers
			global_of_type=identify_type('ptr')
			type_of_global='1_dim_array_of_'+identify_type('ptr')
		elif (item["type"]["type"]["_nodetype"]=="TypeDecl"): #array of non pointers
			global_of_type=identify_type(item["type"]["type"]["type"]["names"][0])
			type_of_global='1_dim_array_of_'+identify_type(global_of_type)
		else:
			sys.stderr.write("ERROR in finding the size of pointer elements for global array.\n")
			exit(-1)
		globals_dict[type_of_global]["names"].append(name_of_global)
		globals_dict[type_of_global]["original_c_decl"].append(original_c_lines_for_global) #probably won't need that though
		globals_dict[type_of_global]["number"]+=1
		#dimension of array (it's an expression)
		dim_ast = from_dict(copy.deepcopy(item['type']['dim']))
		globals_dict[type_of_global]['dimension_asts'].append(dim_ast)
		globals_dict[type_of_global]["size_of_pointed_elements"].append(process_var_size(identify_type(global_of_type)))
		
		#let's create the corresponding ptr in the global vars
		globals_dict['ptr']["names"].append(name_of_global)
		original_type_of_array=original_c_lines_for_global.split(name_of_global)[0].strip()
		globals_dict['ptr']["original_c_decl"].append(original_type_of_array+'* '+name_of_global+';\n')
		globals_dict['ptr']["number"]+=1
		globals_dict['ptr']["is_created_because_of_global_array"].append(1)
		globals_dict['ptr']["init"].append(None) #if we need to init (i.e malloc) the global, we search in the dicts 1_dim_array_of_<thing>
												 #array initialization not yet supported!!!!!!!
		globals_dict['ptr']["size_of_pointed_elements"].append(process_var_size(identify_type(global_of_type)))
		globals_dict['ptr']['type_of_pointed_var'].append(global_of_type)
	else:
		print("unknown variable type parsing for globals")	



def add_variable_info_in_decl(subast,array_of_decls):
	item=subast
	dict_to_append={}
	dict_to_append["name"]=item["name"]
	
	if item["type"]["_nodetype"]=='TypeDecl': #typical, non array variable declaration (int,long etc)
		type_of_decl=item["type"]["type"]["names"][0]
		dict_to_append["type_of_decl"]=identify_type(type_of_decl)
	elif item["type"]["_nodetype"]=='PtrDecl': #pointer
		type_of_decl='ptr'
		dict_to_append["type_of_decl"]=identify_type(type_of_decl)
		#no support for arrays of variable size in struct decl
		if (item["type"]["type"]["_nodetype"]=="PtrDecl"): #pointer to pointer
			size_of_pointed_elem=8
			dict_to_append['type_of_pointed_var']='ptr'
		elif (item["type"]["type"]["_nodetype"]=="TypeDecl"): #pointer to non pointer
			size_of_pointed_elem=process_var_size(identify_type(item["type"]["type"]["type"]["names"][0]))
			dict_to_append['type_of_pointed_var']=identify_type(item["type"]["type"]["type"]["names"][0])
		else:
			sys.stderr.write("ERROR in finding the size of pointer elements in struct.\n")
			exit(-1)
		dict_to_append["size_of_pointed_element"]=size_of_pointed_elem
	elif item["type"]["_nodetype"]=="ArrayDecl": #global array
		type_of_decl=''
		if (item["type"]["type"]["_nodetype"]=="PtrDecl"): #array of pointers
			type_of_decl=identify_type('ptr')
			type_of_decl_arr='1_dim_array_of_'+identify_type('ptr')
		elif (item["type"]["type"]["_nodetype"]=="TypeDecl"): #array of non pointers
			type_of_decl=identify_type(item["type"]["type"]["type"]["names"][0])
			type_of_decl_arr='1_dim_array_of_'+identify_type(type_of_decl)
		else:
			sys.stderr.write("ERROR in finding the size of pointer elements for array in struct.\n")
			exit(-1)
		dict_to_append["type_of_decl"]=type_of_decl_arr
		#dimension of array (it's an expression)
		dim_ast = from_dict(copy.deepcopy(item['type']['dim']))
		dict_to_append['dimension_ast']=dim_ast
		
	array_of_decls.append(dict_to_append)
	
			
			
def add_struct_to_types(subast,typedefs_dict):
	item=subast
	name_of_struct=item["type"]["name"]
	if (name_of_struct not in typedefs_dict["structs"]): #if it has been added before don't add it again
		typedefs_dict["structs"][name_of_struct]={}
		typedefs_dict["structs"][name_of_struct]["name_of_struct"]=name_of_struct
		typedefs_dict["structs"][name_of_struct]["decls"]=[]
		for decl in item["type"]["decls"]:
			add_variable_info_in_decl(decl,typedefs_dict["structs"][name_of_struct]["decls"])	
			
			
