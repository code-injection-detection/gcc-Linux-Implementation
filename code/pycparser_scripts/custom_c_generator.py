#!/usr/bin/env python3

#------------------------------------------------------------------------------
# custom_c_generator.py based on pycparser
#
# C code generator from pycparser AST nodes. (https://github.com/eliben/pycparser)
#
# Eli Bendersky [http://eli.thegreenplace.net]
# License: BSD
# Modified by mitros123
#------------------------------------------------------------------------------

import pickle
import json
import sys
import re
import platform
import copy
import gc
import os

from pycparser import parse_file, c_ast, c_parser,c_generator
from pycparser.plyparser import Coord
from our_helper_functions import *
from helper_functions_by_pycparser import *


class CustomCGenerator(object):
	""" Uses the same visitor pattern as c_ast.NodeVisitor, but modified to
		return a value from each visit method, using string accumulation in
		generic_visit.
	"""
	def __init__(self):
		# Statements start with indentation of self.indent_level spaces, using
		# the _make_indent method
		self.indent_level = 0
		self.name_of_fun_in_parsing=""
		
		#get the semantic data
		with open(working_dir+'/semantic_data', 'rb') as f:
			semantic_dict=pickle.load(f)
			self.functions=semantic_dict['functions']
			self.typedefs=semantic_dict['typedefs']
			self.global_decls=semantic_dict['global_decls']
			self.all_structs=semantic_dict['all_structs']
			self.global_decl_names=semantic_dict['global_decl_names']

	def _make_indent(self):
		return ' ' * self.indent_level

	def visit(self, node, **kwargs):
		method = 'visit_' + node.__class__.__name__
		return getattr(self, method, self.generic_visit)(node,**kwargs)

	def generic_visit(self, node,**kwargs):
		#~ print('generic:', type(node))
		if node is None:
			return ''
		else:
			return ''.join(self.visit(c,**kwargs) for c_name, c in node.children())

	def visit_Constant(self, n,**kwargs):
		return n.value

	def visit_ID(self, n,**kwargs):
		use_setter=kwargs.get("use_setter_param",False); kwargs["use_setter_param"]=False
		coming_from_for_loop=kwargs.get("coming_from_for_loop",False)
		get_address_of_expr=kwargs.get("get_address_of_expr",False) ; kwargs["get_address_of_expr"]=False
		get_dereference_of_expression=kwargs.get("get_dereference_of_expr",False);kwargs["get_dereference_of_expr"]=False
		
		is_global=0
		
		
		(where_found,type_of_var,dict_of_var)=self.find_variable_in_fun_and_global_variables(self.name_of_fun_in_parsing,n.name) #try to find it in the known variables
		if (where_found=="variable_was_not_found"):
			#"printf" is an ID too. So, it might not be one of the secured variables
			return n.name
			
		if where_found=="found_in_globals":
			is_global=1
			
		type_of_var_proper=type_of_var
		C_code_for_type_of_var=get_type_of_ast_dict(dict_of_var)

		if (get_address_of_expr): #an "&" is before us
			if (is_global==0):
				return "(%s*)get_address_of_stack_array_element(%s,%s)" % (C_code_for_type_of_var,str(dict_of_var[1]),n.name)
			else:
				return "((%s*)&globals.%s)" % (C_code_for_type_of_var,n.name)
 
		retstr=''
		used_setter_for_dereference=False
		if get_dereference_of_expression: #an "*" is before us
			if dict_of_var[0][0]!='pointer':
				print("Got dereference on a non-pointer!")
				print(dict_of_var)
				sys.exit(-1)
			#it is a pointer
			type_of_pointed_elem_dict=dict_of_var[0][1]["type_of_pointed_element"]
			C_code_for_type_of_pointed_var=get_type_of_ast_dict(type_of_pointed_elem_dict)
			if use_setter==False:
				used_setter_for_dereference=False
				if (is_global==0):
					getter=find_name_of_getter_from_arb_address_no_offset(type_of_pointed_elem_dict[0][0])
					retstr+="(%s)%s( " % (C_code_for_type_of_pointed_var,getter)
				else:
					getter=find_name_of_getter_from_arb_address_no_offset(type_of_pointed_elem_dict[0][0])
					retstr+="(%s)%s( " % (C_code_for_type_of_pointed_var,getter)
			else:
				if (is_global==0):
					setter=find_name_of_setter_from_arb_address_no_offset(type_of_pointed_elem_dict[0][0])
					#pay attention that we need an extra parenthesis
					retstr+="(%s)%s( " % (C_code_for_type_of_pointed_var,setter)
				else:
					setter=find_name_of_setter_from_arb_address_no_offset(type_of_pointed_elem_dict[0][0])
					#pay attention that we need an extra parenthesis
					retstr+="(%s)%s( " % (C_code_for_type_of_pointed_var,setter)
				used_setter_for_dereference=True
				use_setter=False #IMPORTANT! the next part will have to use a getter for the pointer!
				
		#normal operation on the ID
		if (use_setter):
			if (is_global==0):
				setter=find_name_of_stack_setter_in_caps(type_of_var_proper)
				#pay attention that we need an extra parenthesis
				retstr+= "(%s)%s( %s " % (C_code_for_type_of_var,setter,n.name)
			else:
				#pay attention that we need an extra parenthesis
				if (coming_from_for_loop==False):
					retstr+= "(%s)%s( globals.%s " % (C_code_for_type_of_var,"UPDATE_GLOBAL_VAR",n.name)
				else:
					retstr+= "(%s)%s( globals.%s " % (C_code_for_type_of_var,"UPDATE_GLOBAL_VAR_FOR_LOOPS",n.name)
		else:
			getter=find_name_of_stack_getter_in_caps(type_of_var_proper)
			if (is_global==1):
				getter=find_name_of_global_getter(type_of_var_proper)
				retstr+= "(%s)%s( globals.%s )" % (C_code_for_type_of_var,getter,n.name)
			else:
				retstr+= "(%s)%s( %s )" % (C_code_for_type_of_var,getter,n.name)
	
		if get_dereference_of_expression and used_setter_for_dereference==False: #an "*" is before us
			retstr+=')'
		return retstr
	
	def visit_Pragma(self, n):
		ret = '#pragma'
		if n.string:
			ret += ' ' + n.string
		return ret
	
	def visit_ArrayRef(self, n,**kwargs):
		use_setter=kwargs.get("use_setter_param",False); kwargs["use_setter_param"]=False
		get_address_of_expr=kwargs.get("get_address_of_expr",False); kwargs["get_address_of_expr"]=False
		get_dereference_of_expr=kwargs.get("get_dereference_of_expr",False);kwargs["get_dereference_of_expr"]=False
		
		is_array=1 # might be a malloc'ed pointer which is accessed as array
		
		if isinstance(n.name, pycparser.c_ast.StructRef):
			kwargs["we_need_array_addr"]=True
			(where_found,type_of_var,dict_of_array,name_of_array)=self.visit_StructRef(n.name,**kwargs)
			is_global=0
		else:
			name_of_array=get_name_of_multidim_array_in_ast_variables(n)
			is_global=0
			#search in variables
			(where_found,type_of_var,dict_of_array)=self.find_variable_in_fun_and_global_variables(self.name_of_fun_in_parsing,name_of_array)
		
		if (where_found=="variable_was_not_found"):
			#It might not be one of the secured variables, return what it would return normally
			arrref = self._parenthesize_unless_simple(n.name,**kwargs) #kwargs? probably yes
			return arrref + '[' + self.visit(n.subscript,**kwargs) + ']' #kwargs? probably yes
			
		if where_found=="found_in_globals":
			is_global=1
			
		type_of_var_proper=type_of_var
		
		if type_of_var_proper=="array":
			dict_of_array_var=dict_of_array[0][1]['type_of_array_element']
			is_array=1
		elif type_of_var_proper=="pointer":
			#it's a pointer that has been malloced and accessed as array?
			dict_of_array_var=dict_of_array[0][1]['type_of_pointed_element']
			is_array=0
		else:
			print("Strange variable type!")
			print(dict_of_array,n)
			sys.exit(-1)

		
		size_of_array_var=dict_of_array_var[1]
		type_of_array_var=dict_of_array_var[0][0]
		C_code_for_type_of_array_var=get_type_of_ast_dict(dict_of_array_var)
		
		if (is_typical_normal_var(type_of_array_var)==False):
			if type_of_array_var=='array' and is_typical_normal_var(dict_of_array_var[0][1]['type_of_array_element'][0][0]):
				#we have a 2 dimensional array
				(sz_of_all,innermost_type_dict)=get_size_and_type_of_multidim_array_in_reconstruction(dict_of_array)
				size_of_inner_array=dict_of_array_var[1]
				left_array_ind=self.visit(n.name.subscript)
				right_array_ind=self.visit(n.subscript)
				type_of_array_var=innermost_type_dict[0][0]
				size_of_array_var=get_size_of_type(type_of_array_var,self.typedefs) #only simple types supported
				C_code_for_type_of_array_var=get_type_of_ast_dict(innermost_type_dict)
				#add indent for clearer (sort of) code
				if True:
					if True:
						if True:
							if True:
								if True:
									#here we are only talking for 2 dim arrays!
									if (get_address_of_expr): #an "&" is before us
										if (is_global==0):
											#isarray==1
											getter="get_address_of_stack_array_element"
											return "(%s*)%s(%s,%s,%s*%s+%s)" % (C_code_for_type_of_array_var,getter,str(size_of_array_var),name_of_array,left_array_ind,int(size_of_inner_array/size_of_array_var),right_array_ind)
										else:
											#it is a global array, therefore it is replaced with a pointer with the same name
											getter="get_address_of_sheap_array_element"
											return "(%s*)%s(%s,GET_GLOBAL_PTR(globals.%s),%s*%s+%s)" % (C_code_for_type_of_array_var,getter,str(size_of_array_var),name_of_array,left_array_ind,int(size_of_inner_array/size_of_array_var),right_array_ind)



									if (use_setter):
										if (is_global==0):
											setter=find_name_of_stack_array_setter(type_of_array_var)
											#pay attention that we need an extra parenthesis
											return "(%s)%s( %s , %s*%s+%s " % (C_code_for_type_of_array_var,setter,name_of_array,left_array_ind,int(size_of_inner_array/size_of_array_var),right_array_ind)
										else:
											#it is a global array, therefore it is replaced with a pointer with the same name
											#pay attention that we need an extra parenthesis
											setter=find_name_of_sheap_array_setter(type_of_array_var)
											return "(%s)%s( GET_GLOBAL_PTR(globals.%s) , %s*%s+%s " % (C_code_for_type_of_array_var,setter,name_of_array,left_array_ind,int(size_of_inner_array/size_of_array_var),right_array_ind)
									else:
										#getter
										if (is_global==1):
											#it is a global array, therefore it is replaced with a pointer with the same name
											getter=find_name_of_sheap_array_getter(type_of_array_var)
											return "(%s)%s( GET_GLOBAL_PTR(globals.%s) , %s*%s+%s )" % (C_code_for_type_of_array_var,getter,name_of_array,left_array_ind,int(size_of_inner_array/size_of_array_var),right_array_ind)
										else:
											getter=find_name_of_stack_array_getter(type_of_array_var)
											return "(%s)%s( %s , %s*%s+%s )" % (C_code_for_type_of_array_var,getter,name_of_array,left_array_ind,int(size_of_inner_array/size_of_array_var),right_array_ind)



			else:
				print("ERROR: Not yet supported array subscript")
				print(name_of_array,type_of_var,dict_of_array_var,dict_of_array,n)
				sys.exit(-1)
		
		if (size_of_array_var<0): #variable size
			print("ERROR: Array element of variable size? Perhaps we have a cast?")
			print(name_of_array,type_of_var,dict_of_array_var,dict_of_array,n)
			sys.exit(-1)

		#for 1 dim arrays!
		if (get_address_of_expr): #an "&" is before us
			if (is_global==0):
				if (is_array==1):
					getter="get_address_of_stack_array_element"
					return "(%s*)%s(%s,%s,%s)" % (C_code_for_type_of_array_var,getter,str(size_of_array_var),name_of_array,self.visit(n.subscript))
				else:
					#it's a pointer and has been malloc'ed
					getter="get_address_of_sheap_array_element"
					return "(%s*)%s(%s,GET_STACK_PTR(%s),%s)" % (C_code_for_type_of_array_var,getter,str(size_of_array_var),name_of_array,self.visit(n.subscript))
			else:
				#it is a global array, therefore it is replaced with a pointer with the same name
				getter="get_address_of_sheap_array_element"
				return "(%s*)%s(%s,GET_GLOBAL_PTR(globals.%s),%s)" % (C_code_for_type_of_array_var,getter,str(size_of_array_var),name_of_array,self.visit(n.subscript))



		if (use_setter):
			if (is_global==0):
				if (is_array==1): #!!!!important: add support for structs as array elements etc.
					setter=find_name_of_stack_array_setter(type_of_array_var)
				else:
					#it's a pointer and has been malloc'ed
					setter=find_name_of_sheap_array_setter(type_of_array_var)
				#pay attention that we need an extra parenthesis
				if (type_of_var_proper=='pointer'):
					return "(%s)%s( GET_STACK_PTR(%s) , %s " % (C_code_for_type_of_array_var,setter,name_of_array,self.visit(n.subscript))
				else:
					return "(%s)%s( %s , %s " % (C_code_for_type_of_array_var,setter,name_of_array,self.visit(n.subscript))
			else:
				#it is a global array, therefore it is replaced with a pointer with the same name
				#pay attention that we need an extra parenthesis
				setter=find_name_of_sheap_array_setter(type_of_array_var)
				return "(%s)%s( GET_GLOBAL_PTR(globals.%s) , %s " % (C_code_for_type_of_array_var,setter,name_of_array,self.visit(n.subscript))
		else:
			#getter
			if (is_global==1):
				#it is a global array, therefore it is replaced with a pointer with the same name
				getter=find_name_of_sheap_array_getter(type_of_array_var)
				return "(%s)%s( GET_GLOBAL_PTR(globals.%s) , %s )" % (C_code_for_type_of_array_var,getter,name_of_array,self.visit(n.subscript))
			else:
				if (is_array==1):
					getter=find_name_of_stack_array_getter(type_of_array_var)
				else:
					#it's a pointer and has been malloc'ed
					getter=find_name_of_sheap_array_getter(type_of_array_var)
				if (type_of_var_proper=='pointer'):
					return "(%s)%s( GET_STACK_PTR(%s) , %s )" % (C_code_for_type_of_array_var,getter,name_of_array,self.visit(n.subscript))
				else:
					return "(%s)%s( %s , %s )" % (C_code_for_type_of_array_var,getter,name_of_array,self.visit(n.subscript))

	def visit_StructRef(self, n,**kwargs):
		'''
		"_nodetype": "Assignment",
		"coord": "simple_test_structs_and_typedefs.c:69",
		"lvalue": {
			"_nodetype": "StructRef",
			"coord": "simple_test_structs_and_typedefs.c:69",
			"field": {
				"_nodetype": "ID",
				"coord": "simple_test_structs_and_typedefs.c:69",
				"name": "b"
			},
			"name": {
				"_nodetype": "UnaryOp",
				"coord": "simple_test_structs_and_typedefs.c:69",
				"expr": {
					"_nodetype": "ID",
					"coord": "simple_test_structs_and_typedefs.c:69",
					"name": "hehe"
				},
				"op": "&"
			},
			"type": "->"
		},
		"op": "=",
		"rvalue": {
			"_nodetype": "Constant",
			"coord": "simple_test_structs_and_typedefs.c:69",
			"type": "int",
			"value": "3"
		}

		'''
		use_setter=kwargs.get("use_setter_param",False); kwargs["use_setter_param"]=False
		get_address_of_expr=kwargs.get("get_address_of_expr",False); kwargs["get_address_of_expr"]=False
		get_dereference_of_expr=kwargs.get("get_dereference_of_expr",False);kwargs["get_dereference_of_expr"]=False
		we_need_array_addr=kwargs.get("we_need_array_addr",False)
		
		is_global=0
		#sref is the name actually, and will be an ID. I think so at least!!! .
		#We should not call the ID after it because it will try to find getters/setters etc
		#old version: sref = self._parenthesize_unless_simple(n.name)
		sref=n.name
		if isinstance(n.name,pycparser.c_ast.ID)==False:
			print("Struct name field is not an ID...")
			print(to_dict(n))
			sys.exit(-1)
		name_of_struct=n.name.name
		name_of_struct_field=get_original_C_code_of_ast(n.field)
		type_of_struct_access=n.type # "->" or "." ?
		(where_found,type_in_vars,tuple_of_var,struct_description,size_of_whole_struct,size_of_elem_in_question,elem_in_question_dict,size_of_elements_so_far)=self.find_struct_dict_and_offset(name_of_struct,name_of_struct_field,self.name_of_fun_in_parsing)
		
		if (where_found=="variable_was_not_found"):
			#It might not be one of the secured variables?
			return n.name
			
		if where_found=="found_in_globals":
			is_global=1
			
		type_of_element_in_question=elem_in_question_dict[0][0]
		
		if we_need_array_addr:
			#we need to return to the ArrayRef that has called us
			where_found="found_in_struct_"+name_of_struct
			type_of_var=elem_in_question_dict[0][1]["type"]
			dict_of_array=elem_in_question_dict
			
			if type_of_var=="array":
				dict_of_array_var=elem_in_question_dict[0][1]['type_of_array_element']
			elif type_of_var_proper=="pointer":
				#it's a pointer that has been malloced and accessed as array?
				dict_of_array_var=elem_in_question_dict[0][1]['type_of_pointed_element']
			else:
				print("Strange variable type in struct subscript!")
				print(elem_in_question_dict,to_dict(n))
				sys.exit(-1)

			C_code_for_type_of_elem_in_question=get_type_of_ast_dict(dict_of_array_var)
			#the name is what will be printed, return an address
			name_of_array="(%s*)get_address_of_stack_array_element(1,%s,%s)"  % (C_code_for_type_of_elem_in_question,name_of_struct,size_of_elements_so_far)
			return (where_found,type_of_var,dict_of_array,name_of_array)
			
			
			
		C_code_for_type_of_elem_in_question=get_type_of_ast_dict(elem_in_question_dict)
		
		if type_of_struct_access==".":
			
			if (get_address_of_expr): #an "&" is before us
				if (is_global==0):
					#I don't think that a specific memory access is required to fetch the struct start itself, in a similar case gcc gave "mov	DWORD PTR [rbp-48+rax*4], 6" for a struct access
					return "(%s*)get_address_of_stack_array_element(1,%s,%s)" % (C_code_for_type_of_elem_in_question,name_of_struct,size_of_elements_so_far)
				else:
					#its a malloced pointer!
					return "(%s*)get_address_of_sheap_array_element(1,*(globals.%s),%s)" % (C_code_for_type_of_elem_in_question,name_of_struct,size_of_elements_so_far)
		

			#!!!make sure the memory accesses are paid properly
			if (use_setter):
				setter=find_name_of_setter_from_arb_memory_position(type_of_element_in_question)
				if (is_global==0):
					#pay attention that we need an extra parenthesis
					return "(%s)%s( %s , %s " % (C_code_for_type_of_elem_in_question,setter,name_of_struct,size_of_elements_so_far)
				else:
					#its a malloced pointer
					#pay attention that we need an extra parenthesis
					return "(%s)%s( globals.%s , %s " % (C_code_for_type_of_elem_in_question,setter,name_of_struct,size_of_elements_so_far)
			else:
				getter=find_name_of_getter_from_arb_memory_position(type_of_element_in_question)
				if (is_global==0):
					return "(%s)%s( %s , %s) " % (C_code_for_type_of_elem_in_question,getter,name_of_struct,size_of_elements_so_far)
				else:
					#its a malloced pointer
					return "(%s)%s( globals.%s , %s) " % (C_code_for_type_of_elem_in_question,getter,name_of_struct,size_of_elements_so_far)
		
		elif type_of_struct_access=="->":
			
			if (get_address_of_expr): #an "&" is before us
				if (is_global==0):
					#I don't think that a specific memory access is required to fetch the struct start itself, in a similar case gcc gave "mov	DWORD PTR [rbp-48+rax*4], 6" for a struct access
					return "(%s*)get_address_of_stack_array_element(1,GET_STACK_PTR(%s),%s)" % (C_code_for_type_of_elem_in_question,name_of_struct,size_of_elements_so_far)
				else:
					#its a malloced pointer!
					return "(%s*)get_address_of_sheap_array_element(1,GET_GLOBAL_PTR(globals.%s),%s)" % (C_code_for_type_of_elem_in_question,name_of_struct,size_of_elements_so_far)
		
			#!!!make sure the memory accesses are paid properly
			if (use_setter):
				setter=find_name_of_setter_from_arb_memory_position(type_of_element_in_question)
				if (is_global==0):
					#pay attention that we need an extra parenthesis
					return "(%s)%s( GET_STACK_PTR(%s) , %s " % (C_code_for_type_of_elem_in_question,setter,name_of_struct,size_of_elements_so_far)
				else:
					#pay attention that we need an extra parenthesis
					return "(%s)%s( GET_GLOBAL_PTR(globals.%s) , %s " % (C_code_for_type_of_elem_in_question,setter,name_of_struct,size_of_elements_so_far)
			else:
				getter=find_name_of_getter_from_arb_memory_position(type_of_element_in_question)
				if (is_global==0):
					return "(%s)%s( GET_STACK_PTR(%s) , %s) " % (C_code_for_type_of_elem_in_question,getter,name_of_struct,size_of_elements_so_far)
				else:
					#its a malloced pointer
					return "(%s)%s( GET_GLOBAL_PTR(globals.%s) , %s) " % (C_code_for_type_of_elem_in_question,getter,name_of_struct,size_of_elements_so_far)
		
		#old retval
		#return sref + n.type + self.visit(n.field)

	def visit_FuncCall(self, n,**kwargs):
		fref = self._parenthesize_unless_simple(n.name)
		if (fref not in self.functions):
			#our function is not one of the defined ones. It might be printf() or something else
			return fref + '(' + self.visit(n.args) + ')'
		else:
			s=''
			s+='{{{ HEY PYTHON CALL FUNCTION WITH NEWER TEMPLATE:' + str(fref)
			s+=' | HELPING ARGS FOR FUN CALL:' #+ nothing
			kwargs["these_are_function_args"]=True #so as to replace ","'s with "@"'s. That is necessary in order for the next python script to distinguish between params and commas in params (splits in commas)
			s+=' | PARAMETERS TO CALL WITH: ' + self.visit(n.args,**kwargs) +' }}}' # no newline
			#{{{HEY PYTHON CALL FUNCTION WITH NEWER TEMPLATE: <name_of_fun> | HELPING ARGS FOR FUN CALL: arg1="value1",arg2="value2",.. |PARAMETERS TO CALL WITH : param1,param2 ... }}}
			return s
			
			
			
	def visit_UnaryOp(self, n,**kwargs):
		operand = self._parenthesize_unless_simple(n.expr) #well, we probably don't want to pass use_setter with kwargs here..?
		if n.op == 'p++' or n.op=="++":
			#return '%s++' % operand
			kwargs["use_setter_param"]=True
			new_operand=self._parenthesize_unless_simple(n.expr,**kwargs)
			if isinstance(n.expr,c_ast.UnaryOp) and n.expr.op=="*" and isinstance(n.expr.expr,c_ast.ID):
				#we must not parenthesize, it will break the arguments of the getters/setters, the function args will end before they are set
				#(of course we have the assumption that what will follow will be an ID)
				kwargs["use_setter_param"]=False;operand=self.visit(n.expr,**kwargs)
				kwargs["use_setter_param"]=True;new_operand=self.visit(n.expr,**kwargs)
			return '%s,%s+1)' % (new_operand,operand)
		elif n.op == 'p--' or n.op=="--":
			#return '%s--' % operand
			kwargs["use_setter_param"]=True
			new_operand=self._parenthesize_unless_simple(n.expr,**kwargs)
			if isinstance(n.expr,c_ast.UnaryOp) and n.expr.op=="*" and isinstance(n.expr.expr,c_ast.ID):
				#we must not parenthesize, it will break the arguments of the getters/setters, the function args will end before they are set
				#(of course we have the assumption that what will follow will be an ID)
				kwargs["use_setter_param"]=False;operand=self.visit(n.expr,**kwargs)
				kwargs["use_setter_param"]=True;new_operand=self.visit(n.expr,**kwargs)
			return '%s,%s-1)' % (new_operand,operand)
		elif n.op == 'sizeof':
			# Always parenthesize the argument of sizeof since it can be
			# a name.
			return 'sizeof(%s)' % self.visit(n.expr,**kwargs)
		elif n.op == '&': #!!!! support is not 100% proper...
			kwargs["get_address_of_expr"]=True
			return '(%s)' % self.visit(n.expr,**kwargs)
		elif n.op == '*': #!!!!!!!!!!!!! sos fix this, does not work for pointer arithmetic. Will need to see what type the expr is
			kwargs["get_dereference_of_expr"]=True 
			return '%s' % self.visit(n.expr,**kwargs)
		else:
			return '%s%s' % (n.op, operand) #!!!!! cast?

	def visit_BinaryOp(self, n,**kwargs):
		lval_str = self._parenthesize_if(n.left,
							lambda d: not self._is_simple_node(d),**kwargs)
		rval_str = self._parenthesize_if(n.right,
							lambda d: not self._is_simple_node(d),**kwargs)
		return '%s %s %s' % (lval_str, n.op, rval_str)

	def visit_Assignment(self, n,**kwargs):
		dict_of_rvalue=to_dict(n.rvalue)
		rval_str = self._parenthesize_if(
							n.rvalue,
							lambda n: isinstance(n, c_ast.Assignment),**kwargs)
		#return '%s %s %s' % (self.visit(n.lvalue), n.op, rval_str)
		if n.op=="=":
			#if (to_dict(n.lvalue)["_nodetype"]=="UnaryOp"): #old
			#	return '%s=%s' % (self.visit(n.lvalue,**kwargs), rval_str)
			#else:
			kwargs["use_setter_param"]=True
			return '%s, %s)' % (self.visit(n.lvalue,**kwargs), rval_str)
		elif (len(n.op)==2 and n.op[1]=="="): #+= , -= etc
			kwargs_1=copy.deepcopy(kwargs)
			kwargs_2=copy.deepcopy(kwargs)
			kwargs_1["use_setter_param"]=True
			kwargs_2["use_setter_param"]=False
			gc.collect()
			return '%s, %s %s %s)' % (self.visit(n.lvalue,**kwargs_1), self.visit(n.lvalue,**kwargs_2),str(n.op[0]), rval_str)
		else:
			sys.stderr.write("what kind of an op is that?\n")
			sys.stderr.write(n.op)
			exit(-1)

	def visit_IdentifierType(self, n):
		return ' '.join(n.names)

	def _visit_expr(self, n, **kwargs):
		if isinstance(n, c_ast.InitList):
			return '{' + self.visit(n,**kwargs) + '}'
		elif isinstance(n, c_ast.ExprList):
			return '(' + self.visit(n,**kwargs) + ')'
		else:
			return self.visit(n,**kwargs)

	def visit_Decl(self, n, no_type=False):
		# no_type is used when a Decl is part of a DeclList, where the type is
		# explicitly only for the first declaration in a list.
		#!!! hmm no decls should be created right?
		return ''
		'''
		s = n.name if no_type else self._generate_decl(n)
		if n.bitsize: s += ' : ' + self.visit(n.bitsize)
		if n.init:
			s += ' = ' + self._visit_expr(n.init)
		return s
		'''

	def visit_DeclList(self, n):
		#!!! hmm no decls should be created right?
		return ''
		'''
		s = self.visit(n.decls[0])
		if len(n.decls) > 1:
			s += ', ' + ', '.join(self.visit_Decl(decl, no_type=True)
									for decl in n.decls[1:])
		return s
		'''

	def visit_Typedef(self, n):
		s = ''
		if n.storage: s += ' '.join(n.storage) + ' '
		s += self._generate_type(n.type)
		return s

	def visit_Cast(self, n):
		s = '(' + self._generate_type(n.to_type) + ')'
		return s + ' ' + self._parenthesize_unless_simple(n.expr)

	def visit_ExprList(self, n,**kwargs):
		these_are_function_args=kwargs.get("these_are_function_args",False)
		kwargs["these_are_function_args"]=False #revert to old value
		visited_subexprs = []
		for expr in n.exprs:
			if (these_are_function_args):
				#str_to_append=replace_comma_with_at_outside_funcall(self._visit_expr(expr))
				str_to_append=self._visit_expr(expr) #don't replace with "@", makes life harder
			else:
				str_to_append=self._visit_expr(expr)
			visited_subexprs.append(str_to_append)
		return ', '.join(visited_subexprs)

	def visit_InitList(self, n):
		visited_subexprs = []
		for expr in n.exprs:
			visited_subexprs.append(self._visit_expr(expr))
		return ', '.join(visited_subexprs)

	def visit_Enum(self, n):
		s = 'enum'
		if n.name: s += ' ' + n.name
		if n.values:
			s += ' {'
			for i, enumerator in enumerate(n.values.enumerators):
				s += enumerator.name
				if enumerator.value:
					s += ' = ' + self.visit(enumerator.value)
				if i != len(n.values.enumerators) - 1:
					s += ', '
			s += '}'
		return s
		
	def add_function_locals_initialization(self,name_of_fun_in_parsing):
		fun_dict=self.functions[name_of_fun_in_parsing]
		global_decls=self.global_decls
		#create an "Assignment" structure 
		'''
		 "_nodetype": "Assignment",
		 "coord": "simple_test.c:142:2",

		 "lvalue": {
			"_nodetype": "ID",
			"coord": "simple_test.c:142:2",
			"name": "b"
		 },
		 "op": "=",
		 "rvalue": {
			"_nodetype": "Constant",
			"coord": "simple_test.c:142:4",
			"type": "int",
			"value": "1"
		 }
		'''
		s="//secure parameter initializations, if any\n"
		function_locals=fun_dict['fun_locals']
		for local in function_locals:
			init_ast_of_local=local[0][1]["init"]

			if init_ast_of_local!=None:
				new_ast_dict={}
				new_ast_dict["_nodetype"]="Assignment"
				new_ast_dict["lvalue"]={}
				new_ast_dict["lvalue"]["_nodetype"]="ID"
				coord_of_lvalue=to_dict(init_ast_of_local)['coord'] #just grab the coord of the rvalue
				new_ast_dict["lvalue"]["coord"]=coord_of_lvalue
				new_ast_dict["lvalue"]["name"]=local[0][1]["name"]
				new_ast_dict["op"]="="
				new_ast_dict["rvalue"]=to_dict(init_ast_of_local) #rvalue is the expression takes from the first parsing		
				s+= (self.visit(from_dict(new_ast_dict))+';\n')
			else:
				s+= ''
		'''
		#allocate local arrays:
		for i,dimension_ast in enumerate(fun_dict["locals"]['ptr']["dimension_asts"]):
			if (fun_dict["locals"]['ptr']["is_created_because_of_local_array"][i]==1):
				s+='//ALLOCATE STACK DATA OF SIZE: ('+self.visit(dimension_ast)+')*'+str(fun_dict["locals"]['ptr']["size_of_pointed_elements"][i])+' | SETTER FOR THEM AND VAR : SET_STACK_PTR('+fun_dict["locals"]['ptr']["names"][i]+', \n'
		!!!probably that will be done on the fly, since we have the parse tree	  
		'''
		s+='\n'
		if (self.name_of_fun_in_parsing=='tests_that_use_pycparser_ast_main'):
			s+='//Allocation of global arrays/structs, if any, and initialization of globals\n'
			#malloc global arrays
			for global_decl in global_decls:
				if global_decl[0][0]=="array" or (global_decl[0][0]=="struct" and "name_of_struct_variable" in global_decl[0][1] and global_decl[0][1]["name_of_struct_variable"]):
					size_of_decl=global_decl[1]
					if size_of_decl<0:
						print("array or struct with variable size, not yet supported")
						print(global_decl)
						sys.exit(-1)
					name=global_decl[0][1]["name"]
					if global_decl[0][0]=="struct":
						name=global_decl[0][1]["name_of_struct_variable"]
					#the global array/struct is declated as a pointer, lets malloc
					s+='UPDATE_GLOBAL_VAR(globals.'+name+', {{{HEY PYTHON CALL FUNCTION WITH NEW TEMPLATE: smalloc | HELPING ARGS FOR FUN CALL:  |PARAMETERS TO CALL WITH : '+str(size_of_decl)+' }}});\n'
				
			
			#init the global vars that ask for initialization
			for global_decl in global_decls:
				if 'init' in global_decl[0][1] and  global_decl[0][1]['init']!=None:
					if global_decl[0][0]=='array' or global_decl[0][0]=='struct':
						print("Initialization of arrays/structs is not supported yet")
						print(global_decl)
						sys.exit(-1)
					name=global_decl[0][1]["name"]
					s+='UPDATE_GLOBAL_VAR(globals.'+name+','+self.visit(global_decl[0][1]['init'])+');\n'
		return (s+"\n")

	def get_original_declaration_of_locals(self,n):
		str_to_ret=""
		list_of_local_asts=[local for local in n.body.block_items if isinstance(local, (c_ast.Decl))]
		for local in list_of_local_asts:
			str_to_ret+=get_original_C_code_of_ast(local) +";\n"
		return str_to_ret

	def visit_FuncDef(self, n):
		self.name_of_fun_in_parsing=n.decl.name
		original_decl = get_original_C_code_of_ast(n.decl)
		start_of_ret="/* DEFINITION OF FUNCTION: "+ original_decl+ " */\n"
		local_var_original_decl=self.get_original_declaration_of_locals(n)
		start_of_ret+="/* LOCAL VARIABLES:\n"+local_var_original_decl+"*/\n"
		start_of_ret+="START_OF_FUNCTION_"+self.name_of_fun_in_parsing+":"+self.name_of_fun_in_parsing+'\n'
		body=self.add_function_locals_initialization(self.name_of_fun_in_parsing)
		body += self.visit(n.body,you_are_body=True)
		self.indent_level = 0
		end_point_str="END_OF_FUNCTION_"+self.name_of_fun_in_parsing+":" + self.name_of_fun_in_parsing+'\n'
		if n.param_decls:
			#!!! does not happen, but why? I can't find any case where param_decls exists
			knrdecls = ';\n'.join(self.visit(p) for p in n.param_decls)
			return decl + '\n' + knrdecls + ';\n' + body + '\n' + end_point_str+"\n"
		else:
			return start_of_ret + '\n' + body + '\n' + end_point_str +"\n"

	def visit_FileAST(self, n):
		s = ''
		s+=self.give_global_definition()
		for ext in n.ext:
			if isinstance(ext, c_ast.FuncDef):
				s += self.visit(ext)
			#elif isinstance(ext, c_ast.Pragma): # !!!!????? AttributeError: module 'pycparser.c_ast' has no attribute 'Pragma' ????
			#	s += self.visit(ext) + '\n'
			else:
				s += self.visit(ext) + '\n'
		return s

	def visit_Compound(self, n,**kwargs):
		s = self._make_indent() + '{\n'
		am_body=kwargs.get("you_are_body",False)
		kwargs["you_are_body"]=False #revert to old value
		self.indent_level += 2
		if (am_body):
			init_fun_params='' #old, when we had the function locals initialization here
			s+=init_fun_params+'\n'
		if n.block_items:
			s += ''.join(self._generate_stmt(stmt) for stmt in n.block_items)
		self.indent_level -= 2
		s += self._make_indent() + '}\n'
		return s

	def visit_CompoundLiteral(self, n):
		return '(' + self.visit(n.type) + '){' + self.visit(n.init) + '}'


	def visit_EmptyStatement(self, n):
		return ';'

	def visit_ParamList(self, n):
		return ', '.join(self.visit(param) for param in n.params)

	def visit_Return(self, n):
		#s = 'return'
		#if n.expr: s += ' (' + self.visit(n.expr)
		#return s + ');'
		s=''
		s+='RETURN_POINT_OF_FUNCTION: '+self.name_of_fun_in_parsing
		if n.expr:
			s+= ' | PYTHON PLEASE USE THIS RETURN EXPRESSION:'+' (' + self.visit(n.expr) +')\n'
		else:
			s+='\n'
		return s

	def visit_Break(self, n):
		return 'break;'

	def visit_Continue(self, n):
		return 'continue;'

	def visit_TernaryOp(self, n):
		s  = '(' + self._visit_expr(n.cond) + ') ? '
		s += '(' + self._visit_expr(n.iftrue) + ') : '
		s += '(' + self._visit_expr(n.iffalse) + ')'
		return s

	def visit_If(self, n):
		s = 'if ('
		if n.cond: s += self.visit(n.cond)
		s += ')\n'
		s += self._generate_stmt(n.iftrue, add_indent=True)
		if n.iffalse:
			s += self._make_indent() + 'else\n'
			s += self._generate_stmt(n.iffalse, add_indent=True)
		return s

	def visit_For(self, n):
		s = 'for ('
		if n.init: s += self.visit(n.init,coming_from_for_loop=True)
		s += ';'
		if n.cond: s += ' ' + self.visit(n.cond)
		s += ';'
		if n.next: s += ' ' + self.visit(n.next,coming_from_for_loop=True)
		s += ')\n'
		s += self._generate_stmt(n.stmt, add_indent=True)
		return s

	def visit_While(self, n):
		s = 'while ('
		if n.cond: s += self.visit(n.cond)
		s += ')\n'
		s += self._generate_stmt(n.stmt, add_indent=True)
		return s

	def visit_DoWhile(self, n):
		s = 'do\n'
		s += self._generate_stmt(n.stmt, add_indent=True)
		s += self._make_indent() + 'while ('
		if n.cond: s += self.visit(n.cond)
		s += ');'
		return s

	def visit_Switch(self, n):
		s = 'switch (' + self.visit(n.cond) + ')\n'
		s += self._generate_stmt(n.stmt, add_indent=True)
		return s

	def visit_Case(self, n):
		s = 'case ' + self.visit(n.expr) + ':\n'
		for stmt in n.stmts:
			s += self._generate_stmt(stmt, add_indent=True)
		return s

	def visit_Default(self, n):
		s = 'default:\n'
		for stmt in n.stmts:
			s += self._generate_stmt(stmt, add_indent=True)
		return s

	def visit_Label(self, n):
		return n.name + ':\n' + self._generate_stmt(n.stmt)

	def visit_Goto(self, n):
		return 'goto ' + n.name + ';'

	def visit_EllipsisParam(self, n):
		return '...'

	def visit_Struct(self, n):
		return self._generate_struct_union(n, 'struct')

	def visit_Typename(self, n):
		return self._generate_type(n.type)

	def visit_Union(self, n):
		return self._generate_struct_union(n, 'union')

	def visit_NamedInitializer(self, n):
		s = ''
		for name in n.name:
			if isinstance(name, c_ast.ID):
				s += '.' + name.name
			elif isinstance(name, c_ast.Constant):
				s += '[' + name.value + ']'
		s += ' = ' + self._visit_expr(n.expr)
		return s

	def visit_FuncDecl(self, n):
		return self._generate_type(n)

	def _generate_struct_union(self, n, name):
		""" Generates code for structs and unions. name should be either
			'struct' or union.
		"""
		s = name + ' ' + (n.name or '')
		if n.decls:
			s += '\n'
			s += self._make_indent()
			self.indent_level += 2
			s += '{\n'
			for decl in n.decls:
				s += self._generate_stmt(decl)
			self.indent_level -= 2
			s += self._make_indent() + '}'
		return s

	def _generate_stmt(self, n, add_indent=False):
		""" Generation from a statement node. This method exists as a wrapper
			for individual visit_* methods to handle different treatment of
			some statements in this context.
		"""
		typ = type(n)
		if add_indent: self.indent_level += 2
		indent = self._make_indent()
		if add_indent: self.indent_level -= 2

		if typ in (
				c_ast.Assignment, c_ast.Cast, c_ast.UnaryOp, #c_ast.Decl was here too, but removed since we don't want code for them
				c_ast.BinaryOp, c_ast.TernaryOp, c_ast.FuncCall, c_ast.ArrayRef,
				c_ast.StructRef, c_ast.Constant, c_ast.ID, c_ast.Typedef,
				c_ast.ExprList):
			# These can also appear in an expression context so no semicolon
			# is added to them automatically
			#
			return indent + self.visit(n) + ';\n'
		elif typ in (c_ast.Compound,):
			# No extra indentation required before the opening brace of a
			# compound - because it consists of multiple lines it has to
			# compute its own indentation.
			#
			return self.visit(n)
		elif typ in (c_ast.Decl,):
			return ''
		else:
			return indent + self.visit(n) + '\n'

	def _generate_decl(self, n):
		""" Generation from a Decl node.
		"""
		s = ''
		if n.funcspec: s = ' '.join(n.funcspec) + ' '
		if n.storage: s += ' '.join(n.storage) + ' '
		s += self._generate_type(n.type)
		return s

	def _generate_type(self, n, modifiers=[]):
		""" Recursive generation from a type node. n is the type node.
			modifiers collects the PtrDecl, ArrayDecl and FuncDecl modifiers
			encountered on the way down to a TypeDecl, to allow proper
			generation from it.
		"""
		typ = type(n)
		#~ print(n, modifiers)

		if typ == c_ast.TypeDecl:
			s = ''
			if n.quals: s += ' '.join(n.quals) + ' '
			s += self.visit(n.type)

			nstr = n.declname if n.declname else ''
			# Resolve modifiers.
			# Wrap in parens to distinguish pointer to array and pointer to
			# function syntax.
			#
			for i, modifier in enumerate(modifiers):
				if isinstance(modifier, c_ast.ArrayDecl):
					if (i != 0 and isinstance(modifiers[i - 1], c_ast.PtrDecl)):
						nstr = '(' + nstr + ')'
					nstr += '[' + self.visit(modifier.dim) + ']'
				elif isinstance(modifier, c_ast.FuncDecl):
					if (i != 0 and isinstance(modifiers[i - 1], c_ast.PtrDecl)):
						nstr = '(' + nstr + ')'
					nstr += '(' + self.visit(modifier.args) + ')'
				elif isinstance(modifier, c_ast.PtrDecl):
					if modifier.quals:
						nstr = '* %s %s' % (' '.join(modifier.quals), nstr)
					else:
						nstr = '*' + nstr
			if nstr: s += ' ' + nstr
			return s
		elif typ == c_ast.Decl:
			return self._generate_decl(n.type)
		elif typ == c_ast.Typename:
			return self._generate_type(n.type)
		elif typ == c_ast.IdentifierType:
			return ' '.join(n.names) + ' '
		elif typ in (c_ast.ArrayDecl, c_ast.PtrDecl, c_ast.FuncDecl):
			return self._generate_type(n.type, modifiers + [n])
		else:
			return self.visit(n)

	def _parenthesize_if(self, n, condition,**kwargs):
		""" Visits 'n' and returns its string representation, parenthesized
			if the condition function applied to the node returns True.
		"""
		s = self._visit_expr(n,**kwargs)
		if condition(n):
			return '(' + s + ')'
		else:
			return s

	def _parenthesize_unless_simple(self, n,**kwargs):
		""" Common use case for _parenthesize_if
		"""
		return self._parenthesize_if(n, lambda d: not self._is_simple_node(d),**kwargs)

	def _is_simple_node(self, n):
		""" Returns True for nodes that are "simple" - i.e. nodes that always
			have higher precedence than operators.
		"""
		return isinstance(n,(   c_ast.Constant, c_ast.ID, c_ast.ArrayRef,
								c_ast.StructRef, c_ast.FuncCall))
								
								
								
								
								
								
								
								
								
								
								
								
	#############################################################################
	####################  EXTRA_NON_AST_PARSING_FUNCTIONS  ######################
	#############################################################################
	
	def find_variable_in_fun_variables(self,name_of_function,name_of_var):
		#given a var name, returns its type and its corresponding dict. Searches in function params/locals
		function_dict=self.functions[name_of_function]
		params_list=function_dict['fun_decl'][0][1]['list_of_arguments']
		locals_list=function_dict['fun_locals']
		for param in params_list:
			if (name_of_var==param[0][1]['name'] or (param[0][0]=="struct" and param[0][1]["name_of_struct_variable"]==name_of_var)
			or (param[0][0]=="array" and get_name_of_multidim_array_in_variables(param)==name_of_var)):
				return ("found_in_fun_params",param[0][1]['type'],param)
		for local in locals_list:
			if (name_of_var==local[0][1]['name'] or (local[0][0]=="struct" and local[0][1]["name_of_struct_variable"]==name_of_var)
			or (local[0][0]=="array" and get_name_of_multidim_array_in_variables(local)==name_of_var)):
				return ("found_in_fun_locals",local[0][1]['type'],local)
		return ("variable_not_found_in_fun_vars","variable_not_found_in_fun_vars",None)
		
	def find_variable_in_globals(self,name_of_var):	
		global_decls=self.global_decls
		global_decl_names=self.global_decl_names
		for i,decl in enumerate(global_decls):
			if (is_typical_normal_var(decl[0][0])):
				if decl[0][1]['name']==name_of_var or (decl[0][0]=="struct" and decl[0][1]["name_of_struct_variable"]==name_of_var):
					return ("found_in_globals",decl[0][1]['type'],decl)
			else:
				if (decl[0][1]['name']==name_of_var or (decl[0][0]=="struct" and decl[0][1]["name_of_struct_variable"]==name_of_var)
				or (decl[0][0]=="array" and get_name_of_multidim_array_in_variables(decl)==name_of_var)):
					return ("found_in_globals",decl[0][1]['type'],decl) #same thing basically...... hmm...
		return ("variable_not_found_in_globals","variable_not_found_in_globals",None)
		
	def find_variable_in_fun_and_global_variables(self,name_of_function,name_of_var):
		#given a var name, returns where it was found + its type, and the corresponding dict.  Searches in function params/locals and then in globals

		(where_found,type_in_vars,tuple_of_var)=self.find_variable_in_fun_variables(name_of_function,name_of_var)
		if (where_found=="variable_not_found_in_fun_vars"):
			(where_found,type_in_vars,tuple_of_var)=self.find_variable_in_globals(name_of_var)
			if (where_found=="variable_not_found_in_globals"):
				return ("variable_was_not_found","variable_was_not_found",None)
			else:
				return (where_found,type_in_vars,tuple_of_var)
		else:
			return (where_found,type_in_vars,tuple_of_var)
			

	def find_struct_dict_and_offset(self,name_of_struct,name_of_struct_field,name_of_function):
		global_decls=self.global_decls
		typedefs=self.typedefs
		all_structs=self.all_structs
		function_dict=self.functions[name_of_function]

		(where_found,type_in_vars,tuple_of_var)=self.find_variable_in_fun_and_global_variables(name_of_function,name_of_struct)
		if where_found=="variable_was_not_found":
			print("Struct was not found!")
			print(name_of_struct,name_of_struct_field,name_of_function)
			sys.exit(-1)
		
		if (type_in_vars=="pointer"):
			#probably we will have a -> #!!!perhaps we should get rid of x->y 's by replacing them with (*x).y   ......
			tuple_of_var=tuple_of_var[0][1]["type_of_pointed_element"]
		
		struct_variable_name=tuple_of_var[0][1]["name_of_struct_variable"]
		#so we have a struct variable, lets grab the struct description
		type_of_struct_variable=tuple_of_var[0][1]["type"]
		struct_description=None
		if type_of_struct_variable!="struct":
			#its a typedef!
			if type_of_struct_variable not in typedefs:
				print("Expecting a typedef but did not find it!")
				print (type_of_struct_variable,where_found,type_in_vars,tuple_of_var,struct_variable_name)
				sys.exit(-1)
			dict_of_typedef=typedefs[type_of_struct_variable]
			while type_of_struct_variable!="struct": #follow the typedefs to get the struct type
				type_of_struct_variable=dict_of_typedef[0][1]["type"]
				if type_of_struct_variable!="struct":
					dict_of_typedef=typedefs[type_of_struct_variable]
			struct_type=dict_of_typedef[0][1]['name']
		else:
			struct_type=tuple_of_var[0][1]['name']

		#now that we got the struct type, grab the description from the all_structs_dict
		if struct_type not in all_structs:
			print("Struct not found in all structs!")
			print(where_found,type_in_vars,tuple_of_var,struct_variable_name,type_of_struct_variable,struct_type)
			sys.exit(-1)
		struct_description=all_structs[struct_type]
		
		#find the field in question and the sizes up to it
		size_of_elements_so_far=0
		size_of_elem_in_question=0
		size_of_whole_struct=struct_description[1]
		elem_in_question_dict=None
		for elem in struct_description[0][1]["struct_elements"]:
			if elem[0][1]['name']==name_of_struct_field:
				size_of_elem_in_question=elem[1]
				elem_in_question_dict=elem
				break
			else:
				size_of_elements_so_far+=elem[1]
			   
		return (where_found,type_in_vars,tuple_of_var,struct_description,size_of_whole_struct,size_of_elem_in_question,elem_in_question_dict,size_of_elements_so_far)

		  
		
			
	def give_global_definition(self):
		#create the way the globals should be declared
		#that is, they should be given in an annotated way
		#the variables that are structs
		'''
		The general way of a global variable should be
		//ATTENTION: GLOBAL VARIABLE FOLLOWING! | SIZE:int |<obsolete part>| EXTRA_STUFF::: stuff1=info1,stuff2=info2, etc
		int secured_i;
		'''
		global_decls=self.global_decls
		global_def=''
		for global_decl in global_decls:
			name_of_var=global_decl[0][1]['name']
			ast_of_last_decl=global_decl[0][1]['ast_of_last_proper_Decl']
			ast_of_last_decl.init=None #erase init
			original_c_decl=get_original_C_code_of_ast(ast_of_last_decl)
			new_c_decl=original_c_decl
			type_of_var=global_decl[0][0]
			#!!!! add typedefs support
			if type_of_var=='struct' and global_decl[0][1]["name_of_struct_variable"]==None:
				continue #it's just the declaration of a struct
			replace_with_ptr=0
			s=''
			if type_of_var=='struct' or type_of_var=='array':
				#we have to replace it with a ptr
				replace_with_ptr=1
				if type_of_var=='struct':
					name_of_var=global_decl[0][1]["name_of_struct_variable"]
					new_c_decl=('* '+name_of_var+'').join(original_c_decl.split(name_of_var,1)) #change the original c decl to be a pointer to what was there before
				elif type_of_var=='array':
					if global_decl[0][1]['type_of_array_element'][0][0]!='array': #single dim array
						element_c_decl=get_type_of_ast_dict(global_decl[0][1]['type_of_array_element']) #use this or next line?
						new_c_decl=name_of_var.join(original_c_decl.split(name_of_var)[:-1])+"* "+name_of_var #!!!!will this work?
					else:
						#multidim array, make it single dim
						(sz,array_type_dict)=get_size_and_type_of_multidim_array_in_reconstruction(global_decl)
						new_c_decl=name_of_var.join(original_c_decl.split(name_of_var)[:-1])+"* "+name_of_var #!!!!will this work?
							
				s+='//ATTENTION: GLOBAL VARIABLE FOLLOWING! | SIZE: ptr'
			else:
				s+='//ATTENTION: GLOBAL VARIABLE FOLLOWING! | SIZE: '+type_of_var
				
			s+='|| EXTRA_STUFF::: original_c_decl="'+original_c_decl+'"'
			s+='\n'
			s+=new_c_decl+';\n'
			#!!!attention: add support for typedefs etc!
			global_def+=s
		return global_def

			
working_dir=os.getcwd()
os.system(working_dir+"/scrape_function_metadata.py "+sys.argv[1]+" >/dev/null")
ast = pycparser.parse_file(sys.argv[1],use_cpp=True)
custom_c_generator=CustomCGenerator()
original_c_lines=custom_c_generator.visit(ast)
print(original_c_lines)
	
