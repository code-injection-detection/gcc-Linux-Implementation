#!/usr/bin/env python3

import pickle
import json
import sys
import re
import platform

from pycparser import parse_file, c_ast, c_parser
from pycparser.plyparser import Coord


RE_CHILD_ARRAY = re.compile(r'(.*)\[(.*)\]')
RE_INTERNAL_ATTR = re.compile('__.*__')



#help functions for parsing start



class CJsonError(Exception):
	pass


def memodict(fn):
	""" Fast memoization decorator for a function taking a single argument """
	class memodict(dict):
		def __missing__(self, key):
			ret = self[key] = fn(key)
			return ret
	return memodict().__getitem__


@memodict
def child_attrs_of(klass):
	"""
	Given a Node class, get a set of child attrs.
	Memoized to avoid highly repetitive string manipulation

	"""
	non_child_attrs = set(klass.attr_names)
	all_attrs = set([i for i in klass.__slots__ if not RE_INTERNAL_ATTR.match(i)])
	return all_attrs - non_child_attrs



def to_dict(node):
	""" Recursively convert an ast into dict representation. """
	klass = node.__class__

	result = {}

	# Metadata
	result['_nodetype'] = klass.__name__

	# Local node attributes
	for attr in klass.attr_names:
		result[attr] = getattr(node, attr)

	# Coord object
	if node.coord:
		result['coord'] = str(node.coord)
	else:
		result['coord'] = None

	# Child attributes
	for child_name, child in node.children():
		# Child strings are either simple (e.g. 'value') or arrays (e.g. 'block_items[1]')
		match = RE_CHILD_ARRAY.match(child_name)
		if match:
			array_name, array_index = match.groups()
			array_index = int(array_index)
			# arrays come in order, so we verify and append.
			result[array_name] = result.get(array_name, [])
			if array_index != len(result[array_name]):
				raise CJsonError('Internal ast error. Array {} out of order. '
					'Expected index {}, got {}'.format(
					array_name, len(result[array_name]), array_index))
			result[array_name].append(to_dict(child))
		else:
			result[child_name] = to_dict(child)

	# Any child attributes that were missing need "None" values in the json.
	for child_attr in child_attrs_of(klass):
		if child_attr not in result:
			result[child_attr] = None

	return result



#help functions for parsing end





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
	if var_size.lower()=='none' or var_size.lower()=='null':
		return 0
	else:
		print("UNKNOWN VARIABLE SIZE:",var_size)







all_functions_dict={}
current_function_dict={}



# Deserialize.
with open('ast', 'rb') as f:
	ast = pickle.load(f)
	ast_dict=to_dict(ast)
	#print(ast_dict)
	
where_functions_start=ast_dict["ext"]

for item in where_functions_start:
	if item["_nodetype"]=="FuncDef":
		#we have a function definition!
		current_function_dict={}
		fun_metadata=item["decl"]
		
		#name + return type
		current_function_dict["name"]=fun_metadata["name"]
		return_type=fun_metadata["type"]["type"]["type"]["names"][0]
		current_function_dict["return_type"]=identify_type(return_type)
		
		#names, numbers of params
		fun_params=[]
		current_function_dict["params"]={}
		for type_of_var in ['char','int','long','float','double','ptr','arb_ptr']:
			current_function_dict["params"][type_of_var]={}
			current_function_dict["params"][type_of_var]["names"]=[]
			current_function_dict["params"][type_of_var]["number"]=0
			if type_of_var=='ptr':
				current_function_dict["params"][type_of_var]["size_of_pointed_elements"]=[]
		if fun_metadata["type"]["args"]!="null":
			fun_params=fun_metadata["type"]["args"]["params"]
			for param in fun_params:
				name_of_param=param["name"]
				if "names" in  param["type"]["type"]: #see if it's a simple variable
					type_of_param=param["type"]["type"]["names"]
					our_type_of_param=identify_type(type_of_param)
				elif param["type"]["_nodetype"]=="PtrDecl": #it's probably a pointer to something
					our_type_of_param ='ptr'
				current_function_dict["params"][our_type_of_param]["number"]+=1
				current_function_dict["params"][our_type_of_param]["names"].append(name_of_param)
				if our_type_of_param=='ptr':
					#DEFINITELY make a case for arb_ptr in the future
					#see the size of the pointed element
					if (param["type"]["type"]["_nodetype"]=="PtrDecl"):
						size_of_pointed_elem=8
					elif (param["type"]["type"]["_nodetype"]=="TypeDecl"):
						size_of_pointed_elem=process_var_size(param["type"]["type"]["type"]["names"][0])
					else:
						sys.stderr.write("ERROR in finding the parameter size.\n")
						exit(-1)
					current_function_dict["params"][our_type_of_param]["size_of_pointed_elements"].append(size_of_pointed_elem)
					
			
print(current_function_dict)
		
