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


def find_name_of_stack_getter_in_caps(type_of_var):
	name_of_setter='GET_STACK_'
	if( type_of_var=='long' or type_of_var=='long int'):
		name_of_setter+='LONG'
	if ( type_of_var=='pointer' or type_of_var=='ptr'):
		name_of_setter+='PTR'
	if ( type_of_var=='int'):
		name_of_setter+='INT'
	if ( type_of_var=='float'):
		name_of_setter+='FLOAT'
	if ( type_of_var=='double'):
		name_of_setter+='DOUBLE'
	if ( type_of_var=='char'):
		name_of_setter+='CHAR'
	return name_of_setter


def find_name_of_global_getter(type_of_var):
	name_of_getter='GET_GLOBAL_'
	if( type_of_var=='long' or type_of_var=='long int'):
		name_of_getter+='LONG'
	if ( type_of_var=='pointer' or type_of_var=='ptr'):
		name_of_getter+='PTR'
	if ( type_of_var=='int'):
		name_of_getter+='INT'
	if ( type_of_var=='float'):
		name_of_getter+='FLOAT'
	if ( type_of_var=='double'):
		name_of_getter+='DOUBLE'
	if ( type_of_var=='char'):
		name_of_getter+='CHAR'
	return name_of_getter

def find_name_of_stack_setter_in_caps(type_of_var):
	name_of_setter='SET_STACK_'
	if( type_of_var=='long' or type_of_var=='long int'):
		name_of_setter+='LONG'
	if ( type_of_var=='pointer' or type_of_var=='ptr'):
		name_of_setter+='PTR'
	if ( type_of_var=='int'):
		name_of_setter+='INT'
	if ( type_of_var=='float'):
		name_of_setter+='FLOAT'
	if ( type_of_var=='double'):
		name_of_setter+='DOUBLE'
	if ( type_of_var=='char'):
		name_of_setter+='CHAR'
	return name_of_setter

def find_name_of_stack_array_setter(type_of_var):
	name_of_setter='set_stack_'
	if( type_of_var=='long' or type_of_var=='long int'):
		name_of_setter+='long_int'
	if ( type_of_var=='pointer' or type_of_var=='ptr'):
		name_of_setter+='pointer'
	if ( type_of_var=='int'):
		name_of_setter+='int'
	if ( type_of_var=='float'):
		name_of_setter+='float'
	if ( type_of_var=='double'):
		name_of_setter+='double'
	if ( type_of_var=='char'):
		name_of_setter+='char'
	name_of_setter+='_array_element'
	return name_of_setter
	
def find_name_of_stack_array_getter(type_of_var):
	name_of_getter='get_stack_'
	if( type_of_var=='long' or type_of_var=='long int'):
		name_of_getter+='long_int'
	if ( type_of_var=='pointer' or type_of_var=='ptr'):
		name_of_getter+='pointer'
	if ( type_of_var=='int'):
		name_of_getter+='int'
	if ( type_of_var=='float'):
		name_of_getter+='float'
	if ( type_of_var=='double'):
		name_of_getter+='double'
	if ( type_of_var=='char'):
		name_of_getter+='char'
	name_of_getter+='_array_element'
	return name_of_getter
	
	
def find_name_of_sheap_array_setter(type_of_var):
	name_of_setter='set_'
	if( type_of_var=='long' or type_of_var=='long int'):
		name_of_setter+='long_int'
	if ( type_of_var=='pointer' or type_of_var=='ptr'):
		name_of_setter+='pointer'
	if ( type_of_var=='int'):
		name_of_setter+='int'
	if ( type_of_var=='float'):
		name_of_setter+='float'
	if ( type_of_var=='double'):
		name_of_setter+='double'
	if ( type_of_var=='char'):
		name_of_setter+='char'
	name_of_setter+='_array_element'
	return name_of_setter
	
def find_name_of_sheap_array_getter(type_of_var):
	name_of_getter='get_'
	if( type_of_var=='long' or type_of_var=='long int'):
		name_of_getter+='long_int'
	if ( type_of_var=='pointer' or type_of_var=='ptr'):
		name_of_getter+='pointer'
	if ( type_of_var=='int'):
		name_of_getter+='int'
	if ( type_of_var=='float'):
		name_of_getter+='float'
	if ( type_of_var=='double'):
		name_of_getter+='double'
	if ( type_of_var=='char'):
		name_of_getter+='char'
	name_of_getter+='_array_element'
	return name_of_getter
	
def replace_comma_with_at_outside_funcall(str_in):
	#replaces the commas separating a function's arguments with "@" (so that a next python script will not be confused when splitting by comma)
	#Does not do that when inside a function call (i.e inside a {{{ ... }}} block)
	three_paren_num=0
	str_out=[]
	for i in range(len(str_in)):
		if (i<len(str_in)-2 and str_in[i]=='{' and str_in[i+1]=='{' and str_in[i+2]=='{'):
			three_paren_num+=1
		if (i<len(str_in)-2 and str_in[i]=='}' and str_in[i+1]=='}' and str_in[i+2]=='}'):
			three_paren_num-=1
		if (three_paren_num==0 and str_in[i]==','):
			str_out.append('@')
		else:
			str_out.append(str_in[i])
	return ''.join(str_out)
	
	
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
	if 'ptr' in type_of_param:
		return 'ptr'
	if type_of_param=="struct":
		return "struct"
		
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
	if var_size.lower()=='none' or var_size.lower()=='null':  #be careful here
		return 0
	else:
		print("UNKNOWN VARIABLE SIZE:",var_size)





def condition_for_each_object_for_get_original_lines(type_of_obj,new_ast_dict,name_of_object,index):
	#returns if the object in new_ast_dict['ext'][index] is the same as the object with type->type_of_obj, and name->name_of_object
	#usually used to isolate in a dict that object alone, deleting all others
	#type_of_obj=
	#1->global
	#2->function definition
	if (type_of_obj==1):
		if ((new_ast_dict['ext'][index]["_nodetype"]!="Decl") or (new_ast_dict['ext'][index]['name']==None) or (name_of_object.strip() != new_ast_dict['ext'][index]['name'].strip())):
			return True
		else:
			return False
	if (type_of_obj==2):
		if ((new_ast_dict['ext'][index]["_nodetype"]!="FuncDef") or (new_ast_dict['ext'][index]['decl']['name']==None) or (name_of_object.strip() != new_ast_dict['ext'][index]['decl']['name'].strip())):
			return True
		else:
			return False



def get_original_lines_in_C_of_ext_object(name_of_object,type_of_obj,ast_dict):
	#isolates this 'ext' item in the json, recreates the ast and converts back to C
	new_ast_dict=copy.deepcopy(ast_dict) #copy the ast so as to delete nodes on the copied one
	#delete all stuff before object
	#search in the ast and when the object is not found,delete
	while(condition_for_each_object_for_get_original_lines(type_of_obj,new_ast_dict,name_of_object,0)):
		del new_ast_dict['ext'][0]
	#delete all stuff after object
	#search in the ast after position 1 (the object that has just been found) and when the object is not found,delete
	while(len(new_ast_dict['ext'])>1 and (condition_for_each_object_for_get_original_lines(type_of_obj,new_ast_dict,name_of_object,1))):
		del new_ast_dict['ext'][1]
	new_ast = from_dict(new_ast_dict)
	generator = c_generator.CGenerator() #that's the proper (pycparser) generator, not our custom
	original_c_lines=generator.visit(new_ast)
	return (original_c_lines)



def encountered_global_decl(item):
	if (item["_nodetype"]=="Decl" and item["type"]["_nodetype"]!="Struct"): #structs have a similar declaration :/
		return True
	else:
		return False

def encountered_struct_def(item):
	if (item["_nodetype"]=="Decl" and item["type"]["_nodetype"]=="Struct"):
		return True
	else:
		return False
		
		
	
RE_CHILD_ARRAY = re.compile(r'(.*)\[(.*)\]')
RE_INTERNAL_ATTR = re.compile('__.*__')



#help functions for parsing start

#functions taken from pycparser code, in https://github.com/eliben/pycparser . The class Generator has been changed significantly.
# Eli Bendersky [http://eli.thegreenplace.net]
# License: BSD

class CJsonError(Exception):
	pass

def to_json(node, **kwargs):
    """ Convert ast node to json string """
    return json.dumps(to_dict(node), **kwargs)


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

def _parse_coord(coord_str):
    """ Parse coord string (file:line[:column]) into Coord object. """
    if coord_str is None:
        return None

    vals = coord_str.split(':')
    vals.extend([None] * 3)
    filename, line, column = vals[:3]
    return Coord(filename, line, column)


def _convert_to_obj(value):
    """
    Convert an object in the dict representation into an object.
    Note: Mutually recursive with from_dict.

    """
    value_type = type(value)
    if value_type == dict:
        return from_dict(value)
    elif value_type == list:
        return [_convert_to_obj(item) for item in value]
    else:
        # String
        return value


def from_dict(node_dict):
    """ Recursively build an ast from dict representation """
    class_name = node_dict.pop('_nodetype')

    klass = getattr(c_ast, class_name)

    # Create a new dict containing the key-value pairs which we can pass
    # to node constructors.
    objs = {}
    for key, value in node_dict.items():
        if key == 'coord':
            objs[key] = _parse_coord(value)
        else:
            objs[key] = _convert_to_obj(value)

    # Use keyword parameters, which works thanks to beautifully consistent
    # ast Node initializers.
    return klass(**objs)

def from_json(ast_json):
    """ Build an ast from json string representation """
    return from_dict(json.loads(ast_json))

