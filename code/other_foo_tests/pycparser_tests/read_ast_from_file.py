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

RE_CHILD_ARRAY = re.compile(r'(.*)\[(.*)\]')
RE_INTERNAL_ATTR = re.compile('__.*__')



#help functions for parsing start



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


#------------------------------------------------------------------------------
# pycparser: c_generator.py
#
# C code generator from pycparser AST nodes.
#
# Eli Bendersky [http://eli.thegreenplace.net]
# License: BSD
#------------------------------------------------------------------------------


class CGenerator(object):
	""" Uses the same visitor pattern as c_ast.NodeVisitor, but modified to
		return a value from each visit method, using string accumulation in
		generic_visit.
	"""
	def __init__(self):
		# Statements start with indentation of self.indent_level spaces, using
		# the _make_indent method
		self.indent_level = 0
		self.name_of_fun_in_parsing=""

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
		use_setter=kwargs.get("use_setter_param",False)
		coming_from_for_loop=kwargs.get("coming_from_for_loop",False)
		is_global=0
		type_of_var=identify_type_of_var(all_functions_dict[self.name_of_fun_in_parsing],n.name)
		if (type_of_var=="unknown_type"):
			#search in globals
			type_of_var=identify_type_of_var_in_globals(n.name)
			is_global=1
			if (type_of_var=="unknown_type"):
				#"printf" is an ID too. So, it might not be one of the secured variables
				return n.name

		if (use_setter):
			if (is_global==0):
				setter=find_name_of_stack_setter_in_caps(type_of_var)
				#pay attention that we need an extra parenthesis
				return "%s ( %s " % (setter,n.name)
			else:
				#pay attention that we need an extra parenthesis
				if (coming_from_for_loop==False):
					return "%s ( globals.%s " % ("UPDATE_GLOBAL_VAR",n.name)
				else:
					return "%s ( globals.%s " % ("UPDATE_GLOBAL_VAR_FOR_LOOPS",n.name)
			
		else:
			getter=find_name_of_stack_getter_in_caps(type_of_var)
			if (is_global==1):
				getter=find_name_of_global_getter(type_of_var)
				return "%s ( globals.%s )" % (getter,n.name)
			else:
				return "%s ( %s )" % (getter,n.name)
	
	def visit_Pragma(self, n):
		ret = '#pragma'
		if n.string:
			ret += ' ' + n.string
		return ret

	def visit_ArrayRef(self, n,**kwargs):
		use_setter=kwargs.get("use_setter_param",False)
		name_of_array=n.name.name
		is_global=0
		#search in locals
		type_of_var=identify_type_of_var(all_functions_dict[self.name_of_fun_in_parsing],name_of_array)
		if (type_of_var=="unknown_type"):
			#search in globals
			type_of_var=identify_type_of_var_in_globals(name_of_array)
			is_global=1
			if (type_of_var=="unknown_type"):
				#It might not be one of the secured variables, return what it would return normally
				arrref = self._parenthesize_unless_simple(n.name)
				return arrref + '[' + self.visit(n.subscript) + ']'
			else:
				type_of_pointed_var=identify_type_of_pointed_var_in_globals(name_of_array)
		else:
			type_of_pointed_var=identify_type_of_pointed_var(all_functions_dict[self.name_of_fun_in_parsing],name_of_array)
		
		
		if (use_setter):
			if (is_global==0):
				setter=find_name_of_stack_array_setter(type_of_pointed_var)
				#pay attention that we need an extra parenthesis
				if (type_of_var=='ptr'):
					return "%s ( GET_STACK_PTR(%s) , %s " % (setter,name_of_array,self.visit(n.subscript))
				else:
					return "%s ( %s , %s " % (setter,name_of_array,self.visit(n.subscript))
			else:
				#pay attention that we need an extra parenthesis
				setter=find_name_of_sheap_array_setter(type_of_pointed_var)
				return "%s ( GET_GLOBAL_PTR(globals.%s) , %s " % (setter,name_of_array,self.visit(n.subscript))
		else:
			getter=find_name_of_stack_array_getter(type_of_pointed_var)
			if (is_global==1):
				getter=find_name_of_sheap_array_getter(type_of_pointed_var)
				return "%s ( GET_GLOBAL_PTR(globals.%s) , %s )" % (getter,name_of_array,self.visit(n.subscript))
			else:
				if (type_of_var=='ptr'):
					return "%s ( GET_STACK_PTR(%s) , %s )" % (getter,name_of_array,self.visit(n.subscript))
				else:
					return "%s ( %s , %s )" % (getter,name_of_array,self.visit(n.subscript))

	def visit_StructRef(self, n):
		sref = self._parenthesize_unless_simple(n.name)
		return sref + n.type + self.visit(n.field)

	def put_parameters_in_secure_order(self, name_of_fun, args_list):
		#We change the order of parameters, to be per type
		new_list_of_args=[]
		for type_of_var in ['char','int','long','float','double','ptr','arb_ptr']:
			#for every type, the param number is searched and put in the list
			for j,order_of_call in enumerate(all_functions_dict[name_of_fun]["params"][type_of_var]["order_in_calling"]):
				new_list_of_args.append(args_list[order_of_call-1])
		return new_list_of_args
		

	def visit_FuncCall(self, n,**kwargs):
		fref = self._parenthesize_unless_simple(n.name)
		if (fref not in all_functions_dict):
			#our function is not one of the defined ones. It might be printf() or something else
			return fref + '(' + self.visit(n.args) + ')'
		else:
			s=''
			s+='{{{ HEY PYTHON CALL FUNCTION WITH NEW TEMPLATE:' + str(fref)+'_sec'
			s+=' | HELPING ARGS FOR FUN CALL:' #+ nothing
			args_as_dict=to_dict(n.args)
			params_as_list=args_as_dict["exprs"]
			new_params_as_list=self.put_parameters_in_secure_order(fref,params_as_list)
			args_as_dict["exprs"]=new_params_as_list #change the list of params
			n.args=from_dict(args_as_dict) #update the ast
			kwargs["these_are_function_args"]=True #so as to replace ","'s with "@"'s. That is necessary in order for the next python script to distinguish between params and commas in params (splits in commas)
			s+=' | PARAMETERS TO CALL WITH: ' + self.visit(n.args,**kwargs) +' }}}' # no newline
			#{{{HEY PYTHON CALL FUNCTION WITH NEW TEMPLATE: <name_of_fun> | HELPING ARGS FOR FUN CALL: arg1="value1",arg2="value2",.. |PARAMETERS TO CALL WITH : param1,param2 ... }}}
			return s
			
			
			
	def visit_UnaryOp(self, n,**kwargs):
		operand = self._parenthesize_unless_simple(n.expr)
		if n.op == 'p++' or n.op=="++":
			#return '%s++' % operand
			kwargs["use_setter_param"]=True
			new_operand=self._parenthesize_unless_simple(n.expr,**kwargs)
			return '%s,%s+1)' % (new_operand,operand)
		elif n.op == 'p--' or n.op=="--":
			#return '%s--' % operand
			kwargs["use_setter_param"]=True
			new_operand=self._parenthesize_unless_simple(n.expr,**kwargs)
			return '%s,%s-1)' % (new_operand,operand)
		elif n.op == 'sizeof':
			# Always parenthesize the argument of sizeof since it can be
			# a name.
			return 'sizeof(%s)' % self.visit(n.expr,**kwargs)
		else:
			return '%s%s' % (n.op, operand)

	def visit_BinaryOp(self, n):
		lval_str = self._parenthesize_if(n.left,
							lambda d: not self._is_simple_node(d))
		rval_str = self._parenthesize_if(n.right,
							lambda d: not self._is_simple_node(d))
		return '%s %s %s' % (lval_str, n.op, rval_str)

	def visit_Assignment(self, n,**kwargs):
		dict_of_rvalue=to_dict(n.rvalue)
		if (dict_of_rvalue["_nodetype"]=="FuncCall"):
			#use our implementation. But take care of the +=, -= etc !!!!!!!!!!!!!!!
			pass
		rval_str = self._parenthesize_if(
							n.rvalue,
							lambda n: isinstance(n, c_ast.Assignment),**kwargs)
		#return '%s %s %s' % (self.visit(n.lvalue), n.op, rval_str)
		if n.op=="=":
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
		#
		s = n.name if no_type else self._generate_decl(n)
		if n.bitsize: s += ' : ' + self.visit(n.bitsize)
		if n.init:
			s += ' = ' + self._visit_expr(n.init)
		return s

	def visit_DeclList(self, n):
		s = self.visit(n.decls[0])
		if len(n.decls) > 1:
			s += ', ' + ', '.join(self.visit_Decl(decl, no_type=True)
									for decl in n.decls[1:])
		return s

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
				str_to_append=replace_comma_with_at_outside_funcall(self._visit_expr(expr))
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
		
	def add_function_locals_initialization(self):
		fun_dict=all_functions_dict[self.name_of_fun_in_parsing]
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
		
		for order in range(1,fun_dict["local_init_maxorder"]):
			#search the local vars
			for type_of_var in ['char','int','long','float','double','ptr','arb_ptr']:
				for i,init_val in enumerate(fun_dict["locals"][type_of_var]["init"]):
					if (init_val!=None and fun_dict["locals"][type_of_var]["order_of_init"][i]==order):
						new_ast_dict={}
						new_ast_dict["_nodetype"]="Assignment"
						#no coord
						new_ast_dict["lvalue"]={}
						new_ast_dict["lvalue"]["_nodetype"]="ID"
						new_ast_dict["lvalue"]["name"]=fun_dict["locals"][type_of_var]["names"][i]
						new_ast_dict["op"]="="
						new_ast_dict["rvalue"]=to_dict(init_val) #rvalue is the expression takes from the first parsing
						s+= (self.visit(from_dict(new_ast_dict))+';\n')
					else:
						s+= ''
		#allocate local arrays:
		for i,dimension_ast in enumerate(fun_dict["locals"]['ptr']["dimension_asts"]):
			if (fun_dict["locals"]['ptr']["is_created_because_of_local_array"][i]==1):
				s+='//ALLOCATE STACK DATA OF SIZE: ('+self.visit(dimension_ast)+')*'+str(fun_dict["locals"]['ptr']["size_of_pointed_elements"][i])+' | SETTER FOR THEM AND VAR : SET_STACK_PTR('+fun_dict["locals"]['ptr']["names"][i]+', \n'
		if (self.name_of_fun_in_parsing=='main'):
			#malloc global arrays
			for type_of_var in ['char','int','long','float','double','ptr']:
				for i,name in enumerate(globals_dict['1_dim_array_of_'+type_of_var]["names"]):
					s+='UPDATE_GLOBAL_VAR('+name+', {{{HEY PYTHON CALL FUNCTION WITH NEW TEMPLATE: smalloc | HELPING ARGS FOR FUN CALL:  |PARAMETERS TO CALL WITH : ('+self.visit(globals_dict['1_dim_array_of_'+type_of_var]["dimension_asts"][i])+')*'+str(globals_dict['1_dim_array_of_'+type_of_var]["size_of_pointed_elements"][i])+' }}});\n'
			#init the global vars that ask for initialization
			for order in range (1,global_init_order):
				#search the global vars
				for type_of_var in ['char','int','long','float','double','ptr']:
					for i,name in enumerate(globals_dict[type_of_var]["names"]):
						if (globals_dict[type_of_var]['init'][i]!=None and globals_dict[type_of_var]['order_of_init'][i]==order):
							s+='UPDATE_GLOBAL_VAR('+name+','+self.visit(globals_dict[type_of_var]['init'][i])+');\n'
		return (s+"\n")


	def visit_FuncDef(self, n):
		self.name_of_fun_in_parsing=n.decl.name
		#decl = self.visit(n.decl)
		decl=create_secure_function_decl(self.name_of_fun_in_parsing)
		self.indent_level = 0
		body = self.visit(n.body,you_are_body=True)
		end_point_str="END_OF_FUNCTION:" + self.name_of_fun_in_parsing+"_sec"
		if n.param_decls:
			#does not happen since we have erased the parameter declarations
			knrdecls = ';\n'.join(self.visit(p) for p in n.param_decls)
			return decl + '\n' + knrdecls + ';\n' + body + '\n' + end_point_str+"\n"
		else:
			return decl + '\n' + body + '\n' + end_point_str +"\n"

	def visit_FileAST(self, n):
		s = ''
		for ext in n.ext:
			if isinstance(ext, c_ast.FuncDef):
				s += self.visit(ext)
			elif isinstance(ext, c_ast.Pragma):
				s += self.visit(ext) + '\n'
			else:
				s += self.visit(ext) + ';\n'
		return s

	def visit_Compound(self, n,**kwargs):
		s = self._make_indent() + '{\n'
		am_body=kwargs.get("you_are_body",False)
		kwargs["you_are_body"]=False #revert to old value
		self.indent_level += 2
		if (am_body):
			init_fun_params=self.add_function_locals_initialization() #initialize locals
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
				c_ast.Decl, c_ast.Assignment, c_ast.Cast, c_ast.UnaryOp,
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



#help functions for parsing end

def condition_for_each_object_for_get_original_lines(type_of_obj,new_ast_dict,name_of_object,index):
	#type_of_obj=
	#1->global
	#2->function definition
	if (type_of_obj==1):
		if (new_ast_dict['ext'][index]["_nodetype"]!="Decl" or (name_of_object.strip() != new_ast_dict['ext'][index]['name'].strip())):
			return True
		else:
			return False
	if (type_of_obj==2):
		if (new_ast_dict['ext'][index]["_nodetype"]!="FuncDef" or (name_of_object.strip() != new_ast_dict['ext'][index]['decl']['name'].strip())):
			return True
		else:
			return False



def get_original_lines_in_C_of_ext_object(name_of_object,type_of_obj):
	#isolates this 'ext' item in the json, recreates the ast and converts back to C
	new_ast_dict=copy.deepcopy(ast_dict)
	#delete all stuff before object
	while(condition_for_each_object_for_get_original_lines(type_of_obj,new_ast_dict,name_of_object,0)):
		del new_ast_dict['ext'][0]
	#delete all stuff after object
	while(len(new_ast_dict['ext'])>1 and (condition_for_each_object_for_get_original_lines(type_of_obj,new_ast_dict,name_of_object,1))):
		del new_ast_dict['ext'][1]
	new_ast = from_dict(new_ast_dict)
	generator = c_generator.CGenerator() #that's the proper generator, not our custom
	original_c_lines=generator.visit(new_ast)
	return (original_c_lines)


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



def identify_type_of_var(fun_dict,var_name):
	param=fun_dict["params"]
	for type_of_var in ['char','int','long','float','double','ptr','arb_ptr']:
		for name in param[type_of_var]["names"]:
			if var_name==name:
				return type_of_var
	local=fun_dict["locals"]
	for type_of_var in ['char','int','long','float','double','ptr','arb_ptr']:
		for name in local[type_of_var]["names"]:
			if var_name==name:
				return type_of_var
	return "unknown_type"
	
def identify_type_of_var_in_globals(var_name):
	#check the globals too
	for type_of_var in ['char','int','long','float','double','ptr','arb_ptr']:
		for i,name in enumerate(globals_dict[type_of_var]["names"]):
			if var_name==name:
				return type_of_var
	return "unknown_type"
		
def identify_type_of_pointed_var(fun_dict,var_name):
	param=fun_dict["params"]
	for type_of_var in ['ptr','arb_ptr']:
		for i,name in enumerate(param[type_of_var]["names"]):
			if var_name==name:
				return param[type_of_var]['type_of_pointed_var'][i]
	local=fun_dict["locals"]
	for type_of_var in ['ptr','arb_ptr']:
		for i,name in enumerate(local[type_of_var]["names"]):
			if var_name==name:
				return local[type_of_var]['type_of_pointed_var'][i]
	return "unknown_type"		

def identify_type_of_pointed_var_in_globals(var_name):
	#check the globals too
	for type_of_var in ['ptr','arb_ptr']:
		for i,name in enumerate(globals_dict[type_of_var]["names"]):
			if var_name==name:
				return globals_dict[type_of_var]['type_of_pointed_var'][i]
	return "unknown_type"
	


def find_total_number_of_parameters(func_dict):
	num=0
	for type_of_var in ['char','int','long','float','double','ptr','arb_ptr']:
		num+=func_dict['params'][type_of_var]["number"]
	return num

def find_total_number_of_locals(func_dict):
	num=0
	for type_of_var in ['char','int','long','float','double','ptr','arb_ptr']:
		num+=func_dict['locals'][type_of_var]["number"]
	return num

def give_name_for_func_declaration_of_type(type_of_var):
	if (type_of_var=='ptr'):
		return 'pointers'
	elif (type_of_var=='arb_ptr'):
		return 'arb_pointers'
	else:
		return (type_of_var+'s')


def give_global_definition():
	global_def=''
	for type_of_var in ['char','int','long','float','double','ptr','arb_ptr']:
		for i,name_of_global_var in enumerate(globals_dict[type_of_var]["names"]):
			s=''
			s+='//ATTENTION: GLOBAL VARIABLE FOLLOWING! | SIZE:'
			if (type_of_var=='ptr'):
				s+='pointer'
			elif (type_of_var=='arb_ptr'):
				s+='arb_pointer'
			else:
				s+=type_of_var
			s+='\n'
			s+=globals_dict[type_of_var]["original_c_decl"][i]+"\n"
			global_def+=s
	return (global_def)
			

def create_secure_function_decl(name_of_fun):
	func_dict=all_functions_dict[name_of_fun]
	secure_fun_name=name_of_fun+"_sec"
	func_decl=""
	func_decl+="/************* "+secure_fun_name+" ********************/\n"
	func_decl+="//HEY PYTHON PLEASE INIT A FUNCTION HERE\n"
	func_decl+="NAME_OF_FUNCTION:"+ secure_fun_name+"\n"
	func_decl+="RETURN_VALUE_SIZE:"+ func_dict["return_type"]+"\n"
	func_decl+="//^FOR THE ABOVE: none/int/char etc\n"
	func_decl+="NUM_OF_PARAMETERS:"+ str(find_total_number_of_parameters(func_dict))+"\n"
	#now do all the parameters
	for type_of_var in ['char','int','long','float','double','ptr','arb_ptr']:
		s=''
		num_of_type=func_dict['params'][type_of_var]['number']
		if num_of_type==0:
			s+=give_name_for_func_declaration_of_type(type_of_var)+': 0'
		else:
			s+=give_name_for_func_declaration_of_type(type_of_var)+': ' + str(num_of_type) +' | names:'
			for i in range(num_of_type-1):
				s+=func_dict['params'][type_of_var]['names'][i] +","
			s+=func_dict['params'][type_of_var]['names'][num_of_type-1]
			if (type_of_var=='ptr'):
				s+=' | size_of_pointed_elements: '
				for i in range(num_of_type-1):
					s+=str(func_dict['params'][type_of_var]['size_of_pointed_elements'][i]) +","
				s+=str(func_dict['params'][type_of_var]['size_of_pointed_elements'][num_of_type-1])
				#SOS arb_ptr with size_of_objects!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		s+='\n'
		func_decl+=s
	func_decl+="END_OF_PARAMETERS\n"

	func_decl+="NUM_OF_LOCAL_VARIABLES:"+ str(find_total_number_of_locals(func_dict))+"\n"
	#now do all the parameters
	for type_of_var in ['char','int','long','float','double','ptr','arb_ptr']:
		s=''
		num_of_type=func_dict['locals'][type_of_var]['number']
		if num_of_type==0:
			s+=give_name_for_func_declaration_of_type(type_of_var)+': 0'
		else:
			s+=give_name_for_func_declaration_of_type(type_of_var)+': ' + str(num_of_type) +' | names:'
			for i in range(num_of_type-1):
				s+=func_dict['locals'][type_of_var]['names'][i] +","
			s+=func_dict['locals'][type_of_var]['names'][num_of_type-1]
			if (type_of_var=='ptr'):
				s+=' | size_of_pointed_elements: '
				for i in range(num_of_type-1):
					s+=str(func_dict['locals'][type_of_var]['size_of_pointed_elements'][i]) +","
				s+=str(func_dict['locals'][type_of_var]['size_of_pointed_elements'][num_of_type-1])
			if (type_of_var=='arb_ptr'):
				s+=' | size_of_objects: '
				for i in range(num_of_type-1):
					s+=str(func_dict['locals'][type_of_var]['size_of_objects'][i]) +","
				s+=str(func_dict['locals'][type_of_var]['size_of_objects'][num_of_type-1])
		s+='\n'
		func_decl+=s
	func_decl+="END_OF_LOCAL_VARIABLES\n"
	func_decl+="RETURN_EXPRESSION: NULL\n" #add a dummy return expression, it will be filled on the fly every time "return" is seen
	func_decl+="//PYTHON IGNORE: ^ dummy value, will be filled on the fly every time \"return\" is seen \n"
	func_decl+="START_OF_FUNCTION :"+secure_fun_name+'\n'
	
	return func_decl



all_functions_dict={}
current_function_dict={}
globals_dict={}



# Deserialize.
with open('ast', 'rb') as f:
	ast = pickle.load(f)
	ast_dict=to_dict(ast)
	#print(ast_dict)
	
	
#init globals dict
global_init_order=1
for type_of_var in ['char','int','long','float','double','ptr','arb_ptr']:
	globals_dict[type_of_var]={}
	globals_dict[type_of_var]["names"]=[]
	globals_dict[type_of_var]["original_c_decl"]=[]
	globals_dict[type_of_var]["number"]=0
	globals_dict[type_of_var]["init"]=[]
	globals_dict[type_of_var]["order_of_init"]=[]
	globals_dict['1_dim_array_of_'+type_of_var]={}
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
	
where_functions_start=ast_dict["ext"]

locals_init_order=0
for item in where_functions_start:
	
	if item["_nodetype"]=="FuncDef":
		#we have a function definition!
		if current_function_dict!={}:
			current_function_dict["local_init_maxorder"]=locals_init_order
			all_functions_dict[current_function_dict["name"]]=copy.deepcopy(current_function_dict)
		current_function_dict={}
		fun_metadata=item["decl"]
		
		#name + return type
		current_function_dict["name"]=fun_metadata["name"]
		if fun_metadata["type"]["type"]["_nodetype"]=="PtrDecl":
			return_type='ptr'
		else:	
			return_type=fun_metadata["type"]["type"]["type"]["names"][0]
		current_function_dict["return_type"]=identify_type(return_type)
		
		#names, numbers of params
		fun_params=[]
		order_of_param_call=1
		current_function_dict["params"]={}
		for type_of_var in ['char','int','long','float','double','ptr','arb_ptr']:
			current_function_dict["params"][type_of_var]={}
			current_function_dict["params"][type_of_var]["names"]=[]
			current_function_dict["params"][type_of_var]["number"]=0
			current_function_dict["params"][type_of_var]["order_in_calling"]=[]
			if type_of_var=='ptr':
				current_function_dict["params"][type_of_var]["size_of_pointed_elements"]=[]
				current_function_dict["params"][type_of_var]['type_of_pointed_var']=[]
		if fun_metadata["type"]["args"]!=None:
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
				current_function_dict["params"][our_type_of_param]["order_in_calling"].append(order_of_param_call)
				order_of_param_call+=1
				if our_type_of_param=='ptr':
					#DEFINITELY make a case for arb_ptr in the future !!!!!!!!!!!!!!!!!!!!!!!!!!!!
					#see the size of the pointed element
					if (param["type"]["type"]["_nodetype"]=="PtrDecl"):
						size_of_pointed_elem=8
						type_of_pointed_var='ptr'
						current_function_dict["params"][our_type_of_param]['type_of_pointed_var'].append(type_of_pointed_var)
					elif (param["type"]["type"]["_nodetype"]=="TypeDecl"):
						type_of_pointed_var=identify_type(param["type"]["type"]["type"]["names"][0])
						size_of_pointed_elem=process_var_size(type_of_pointed_var)
						current_function_dict["params"][our_type_of_param]['type_of_pointed_var'].append(type_of_pointed_var)
					else:
						sys.stderr.write("ERROR in finding the parameter size for parameters.\n")
						exit(-1)
					current_function_dict["params"][our_type_of_param]["size_of_pointed_elements"].append(size_of_pointed_elem)
					
					
		#local vars
		fun_body=item["body"]["block_items"]
		fun_locals=[]
		current_function_dict["locals"]={}
		locals_init_order=1
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
				
		if (fun_body==None):
			continue
		for possible_decl in fun_body:
			if (possible_decl["_nodetype"]=="Decl"):
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
					current_function_dict["locals"]['ptr']["is_created_because_of_local_array"].append(0)
					current_function_dict["locals"]['ptr']["dimension_asts"].append(None)
				elif possible_decl["type"]["_nodetype"]=="ArrayDecl":
					is_array=1
					if possible_decl["type"]["dim"]["_nodetype"]=="Constant":
						our_type_of_possible_decl='arb_ptr'
						size_of_constant_array=int(possible_decl["type"]["dim"]["value"])
						current_function_dict["locals"]['arb_ptr']["dimension_asts"].append(from_dict(copy.deepcopy(possible_decl["type"]["dim"])))
					else:
						our_type_of_possible_decl='ptr'
						expression_of_non_constant_array=(from_dict(copy.deepcopy(possible_decl["type"]["dim"])))
						current_function_dict["locals"]['ptr']["is_created_because_of_local_array"].append(1)
						current_function_dict["locals"]['ptr']["dimension_asts"].append(expression_of_non_constant_array)
						
				current_function_dict["locals"][our_type_of_possible_decl]["number"]+=1
				current_function_dict["locals"][our_type_of_possible_decl]["names"].append(name_of_local_var)
				if  (init_of_local!=None):
					current_function_dict["locals"][our_type_of_possible_decl]["init"].append(copy.deepcopy(from_dict(init_of_local)))
					current_function_dict["locals"][our_type_of_possible_decl]["order_of_init"].append(locals_init_order)
					locals_init_order+=1
					if (is_array):
						sys.stderr.write("Array initialization not supported.\n")
						exit(-1)
				else:
					current_function_dict["locals"][our_type_of_possible_decl]["init"].append(None)
					current_function_dict["locals"][our_type_of_possible_decl]["order_of_init"].append(-1)
				if our_type_of_possible_decl=='ptr' or our_type_of_possible_decl=='arb_ptr':
					#DEFINITELY make a case for arb_ptr in the future !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
					#see the size of the pointed element
					if (possible_decl["type"]["type"]["_nodetype"]=="PtrDecl"):
						size_of_pointed_elem=8
						current_function_dict["locals"][our_type_of_possible_decl]['type_of_pointed_var'].append('ptr')
					elif (possible_decl["type"]["type"]["_nodetype"]=="TypeDecl"):
						type_of_pointed_var=identify_type(possible_decl["type"]["type"]["type"]["names"][0])
						size_of_pointed_elem=process_var_size(type_of_pointed_var)
						current_function_dict["locals"][our_type_of_possible_decl]['type_of_pointed_var'].append(type_of_pointed_var)
					else:
						sys.stderr.write("ERROR in finding the parameter size for locals.\n")
						exit(-1)
					if (our_type_of_possible_decl=='ptr'):	
						current_function_dict["locals"][our_type_of_possible_decl]["size_of_pointed_elements"].append(size_of_pointed_elem)
					else:
						current_function_dict["locals"][our_type_of_possible_decl]["size_of_objects"].append(int(size_of_constant_array*size_of_pointed_elem))
		#erase the declarations/initializations of the local variables, sice we will do them manually
		num_of_nodes_not_deleted=0
		while (len(fun_body)>num_of_nodes_not_deleted):
			if (fun_body[num_of_nodes_not_deleted]["_nodetype"]=="Decl"):
				del(fun_body[num_of_nodes_not_deleted])
			else:
				num_of_nodes_not_deleted+=1
				
	if item["_nodetype"]=="Decl":
		#global declaration
		name_of_global=item["name"]
		init_ast=None
		if item['init']!=None:
			#save and then delete the initialization
			init_ast=from_dict(copy.deepcopy(item['init']))
			item['init']=None
		original_c_lines_for_global=get_original_lines_in_C_of_ext_object(name_of_global,1)
		gc.collect()
		type_of_global=''
		if item["type"]["_nodetype"]=='TypeDecl':
			type_of_global=item["type"]["type"]["names"][0]
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
		elif item["type"]["_nodetype"]=='PtrDecl':
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
			if (item["type"]["type"]["_nodetype"]=="PtrDecl"):
				size_of_pointed_elem=8
				globals_dict[identify_type(type_of_global)]['type_of_pointed_var'].append('ptr')
			elif (item["type"]["type"]["_nodetype"]=="TypeDecl"):
				size_of_pointed_elem=process_var_size(identify_type(item["type"]["type"]["type"]["names"][0]))
				globals_dict[identify_type(type_of_global)]['type_of_pointed_var'].append(identify_type(item["type"]["type"]["type"]["names"][0]))
			else:
				sys.stderr.write("ERROR in finding the size of pointer elements for globals.\n")
				exit(-1)
			globals_dict[identify_type(type_of_global)]["size_of_pointed_elements"].append(size_of_pointed_elem)
		elif item["type"]["_nodetype"]=="ArrayDecl":
			global_of_type=''
			if (item["type"]["type"]["_nodetype"]=="PtrDecl"):
				global_of_type=identify_type('ptr')
				type_of_global='1_dim_array_of_'+identify_type('ptr')
			elif (item["type"]["type"]["_nodetype"]=="TypeDecl"):
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
			
#erase the declarations/initializations of the global variables, sice we will do them manually
num_of_nodes_not_deleted=0
while (len(where_functions_start)>num_of_nodes_not_deleted):
	if (where_functions_start[num_of_nodes_not_deleted]["_nodetype"]=="Decl"):
		del(where_functions_start[num_of_nodes_not_deleted])
	else:
		num_of_nodes_not_deleted+=1
	
if current_function_dict!={}:
	all_functions_dict[current_function_dict["name"]]=copy.deepcopy(current_function_dict)
	current_function_dict={}
			
print("All functions:")
for i,fun in enumerate(all_functions_dict):
	print("function "+str(i)+", name: "+ str(fun)+":")
	print(all_functions_dict[fun])
	#print(create_secure_function_decl(str(fun)))

print("")
print("globals:")
print(globals_dict)
print("")
print(give_global_definition())

generator = CGenerator()
print(generator.visit(from_dict(ast_dict))) # do not visit the original ast, but the one we have changed (for example there is no variable initialization)
		
