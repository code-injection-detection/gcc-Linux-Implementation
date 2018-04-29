from __future__ import print_function
import re
import pycparser
import sys
import copy

from helper_functions_by_pycparser import *





def find_name_of_stack_getter_in_caps(type_of_var_full):
	type_of_var=''.join(type_of_var_full.split("unsigned ",1)) #remove unsigned
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


def find_name_of_global_getter(type_of_var_full):
	type_of_var=''.join(type_of_var_full.split("unsigned ",1)) #remove unsigned
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

def find_name_of_stack_setter_in_caps(type_of_var_full):
	type_of_var=''.join(type_of_var_full.split("unsigned ",1)) #remove unsigned
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

def find_name_of_stack_array_setter(type_of_var_full):
	type_of_var=''.join(type_of_var_full.split("unsigned ",1)) #remove unsigned
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
	
def find_name_of_stack_array_getter(type_of_var_full):
	type_of_var=''.join(type_of_var_full.split("unsigned ",1)) #remove unsigned
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
	
	
def find_name_of_sheap_array_setter(type_of_var_full):
	type_of_var=''.join(type_of_var_full.split("unsigned ",1)) #remove unsigned
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
	
def find_name_of_sheap_array_getter(type_of_var_full):
	type_of_var=''.join(type_of_var_full.split("unsigned ",1)) #remove unsigned
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


def find_name_of_simple_getter(type_of_var_full):
	type_of_var=''.join(type_of_var_full.split("unsigned ",1)) #remove unsigned
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
	return name_of_getter
	
	
def find_name_of_simple_setter(type_of_var_full):
	type_of_var=''.join(type_of_var_full.split("unsigned ",1)) #remove unsigned
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
	return name_of_setter


def find_name_of_getter_from_arb_memory_position(type_of_var_full):
	type_of_var=''.join(type_of_var_full.split("unsigned ",1)) #remove unsigned
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
	name_of_getter+='_from_arb_memory_position'
	return name_of_getter


def find_name_of_setter_from_arb_memory_position(type_of_var_full):
	type_of_var=''.join(type_of_var_full.split("unsigned ",1)) #remove unsigned
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
	name_of_setter+='_from_arb_memory_position'
	return name_of_setter


def find_name_of_getter_from_arb_address_no_offset(type_of_var_full):
	type_of_var=''.join(type_of_var_full.split("unsigned ",1)) #remove unsigned
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
	name_of_getter+='_from_arb_address_no_offset'
	return name_of_getter


def find_name_of_setter_from_arb_address_no_offset(type_of_var_full):
	type_of_var=''.join(type_of_var_full.split("unsigned ",1)) #remove unsigned
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
	name_of_setter+='_from_arb_address_no_offset'
	return name_of_setter


#function to print well a dictionary. Thanks https://stackoverflow.com/a/21049038
def wellprint_dict(obj, nested_level=0, output=sys.stdout):
	spacing = '   '
	if type(obj) == dict:
		print( '%s{' % ((nested_level) * spacing),file=output)
		for k, v in obj.items():
			if hasattr(v, '__iter__'):
				print( '%s%s:' % ((nested_level + 1) * spacing, k),file=output)
				wellprint_dict(v, nested_level + 1, output)
			else:
				print('%s%s: %s' % ((nested_level + 1) * spacing, k, v),file=output)
		print('%s}' % (nested_level * spacing),file=output)
	elif type(obj) == list:
		print( '%s[' % ((nested_level) * spacing),file=output)
		for v in obj:
			if hasattr(v, '__iter__'):
				wellprint_dict(v, nested_level + 1, output)
			else:
				print( '%s%s' % ((nested_level + 1) * spacing, v),file=output)
		print( '%s]' % ((nested_level) * spacing),file=output)
	else:
		print( '%s%s' % (nested_level * spacing, obj),file=output)


def get_name_of_a_node(node):
	if isinstance(node, (pycparser.c_ast.Decl,pycparser.c_ast.Typename,pycparser.c_ast.Struct,pycparser.c_ast.Typedef)):
		return node.name
	elif isinstance(node,pycparser.c_ast.TypeDecl):
		return node.declname
	elif isinstance(node,pycparser.c_ast.IdentifierType):
		return node.names[0]
	elif isinstance(node,pycparser.c_ast.FuncDecl):
		return get_name_of_a_node(node.type)
	elif isinstance(node, (pycparser.c_ast.ArrayDecl,pycparser.c_ast.PtrDecl)):
		return "" #sometimes the parent does not have a name . Eg pointer to pointer to pointer ...
	else:
		print("ERROR IN NAME")
		if node==None:
			print("node is None!")
		else:
			wellprint_dict(to_dict(node))
		sys.exit(-1)


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


def RepresentsInt(s):
	try: 
		int(s)
		return True
	except ValueError:
		return False


def is_typical_normal_var(type_of_var_full):
	type_of_var=''.join(type_of_var_full.split("unsigned ",1)) #remove unsigned
	if type_of_var in ['void','float','double','long','long int','int','char','long double','pointer']:
		return True
	else:
		return False


def get_size_of_type(name,typedefs):
	list_of_supported_types=['void','float','double','long','long int','int','char','long double']
	name_without_unsigned=''.join(name.split("unsigned ",1))
	if name in typedefs:
		(tpdf,sz)=typedefs[name]
		return sz
	elif name_without_unsigned in list_of_supported_types:
		sz= {
			'void': 0,
			'float': 4,
			'double': 8,
			'long':8, 
			'long int':8,
			'int': 4,
			'char': 1,
			'long double':16 #careful: not supported yet
			}[name_without_unsigned]
		return sz
	else:
		print("ERROR IN SIZE CALC")
		print(name)
		sys.exit(-1)



def get_original_C_code_of_ast(ast):
	new_ast = copy.deepcopy(ast)
	generator = pycparser.c_generator.CGenerator() #that's the proper (pycparser) generator, not our custom
	original_c_lines=generator.visit(new_ast)
	return (original_c_lines)


def get_type_of_ast_dict(ast_dict):
	type_list=[]
	element_in_question=ast_dict
	type_of_elem=element_in_question[0][0]
	if type_of_elem=="struct":
		print("Struct not supported yet for type of ast dict! 1")
		print(ast_dict)
		sys.exit(-1)
	end=0
	while end==0:
		if type_of_elem=="array":
			type_list.append("[]")
			element_in_question=element_in_question[0][1]["type_of_array_element"]
			type_of_elem=element_in_question[0][0]
		if (type_of_elem=="pointer"):
			type_list.append("*")
			element_in_question=element_in_question[0][1]["type_of_pointed_element"]
			type_of_elem=element_in_question[0][0]
		elif type_of_elem=="struct":
			print("Struct not supported yet for type of ast dict! 2")
			print(ast_dict)
			sys.exit(-1)
		else:
			#eg "int"
			type_list.append(type_of_elem)
			end=1
	return ''.join(reversed(type_list))
	

def get_size_and_type_of_multidim_array_in_reconstruction(dict_of_array):
	dict_in_question=dict_of_array
	if dict_in_question[0][0]=='pointer':
		array_elem=dict_in_question[0][1]['type_of_pointed_element']
	elif dict_in_question[0][0]=='array':
		array_elem=dict_in_question[0][1]['type_of_array_element']
	else:
		print("Strange variable type......")
		print(dict_in_question,dict_of_array)
		sys.exit(-1)
		
	while is_typical_normal_var(array_elem[0][0])==False:
		dict_in_question=array_elem
		if dict_in_question[0][0]=='array':
			array_elem=dict_in_question[0][1]['type_of_array_element']
		else: #we allow the pointer to be on the first level only
			print("Strange variable type......") 
			print(dict_in_question,dict_of_array)
			sys.exit(-1)
		
	return (dict_of_array[1],array_elem)
	
def get_name_of_multidim_array_in_variables(dict_of_array):
	#sometimes they don't have a name . Eg pointer to pointer to pointer  or array of array of....
	dict_in_question=dict_of_array
	while dict_in_question[0][1]['name']=='':
		dict_in_question[0][1]['type_of_array_element']
	return dict_in_question[0][1]['name']
	
def get_name_of_multidim_array_in_ast_variables(n_of_arrayref):
	n_in_question=n_of_arrayref
	while isinstance(n_in_question,pycparser.c_ast.ArrayRef):
		n_in_question=n_in_question.name
	return n_in_question.name
