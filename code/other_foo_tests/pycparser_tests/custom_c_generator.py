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
		type_of_var=identify_type_of_var(all_functions_dict[self.name_of_fun_in_parsing],n.name) #try to find it in locals
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
				return "%s( %s " % (setter,n.name)
			else:
				#pay attention that we need an extra parenthesis
				if (coming_from_for_loop==False):
					return "%s( globals.%s " % ("UPDATE_GLOBAL_VAR",n.name)
				else:
					return "%s( globals.%s " % ("UPDATE_GLOBAL_VAR_FOR_LOOPS",n.name)
			
		else:
			getter=find_name_of_stack_getter_in_caps(type_of_var)
			if (is_global==1):
				getter=find_name_of_global_getter(type_of_var)
				return "%s( globals.%s )" % (getter,n.name)
			else:
				return "%s( %s )" % (getter,n.name)
	
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
		is_pointer_created_because_of_array=is_ptr_created_because_of_array(all_functions_dict[self.name_of_fun_in_parsing],name_of_array)
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
				if (is_pointer_created_because_of_array):
					setter=find_name_of_stack_array_setter(type_of_pointed_var)
				else:
					#it's a pointer and has been malloc'ed
					setter=find_name_of_sheap_array_setter(type_of_pointed_var)
				#pay attention that we need an extra parenthesis
				if (type_of_var=='ptr'):
					return "%s( GET_STACK_PTR(%s) , %s " % (setter,name_of_array,self.visit(n.subscript))
				else:
					return "%s( %s , %s " % (setter,name_of_array,self.visit(n.subscript))
			else:
				#pay attention that we need an extra parenthesis
				setter=find_name_of_sheap_array_setter(type_of_pointed_var)
				return "%s( GET_GLOBAL_PTR(globals.%s) , %s " % (setter,name_of_array,self.visit(n.subscript))
		else:
			if (is_global==1):
				getter=find_name_of_sheap_array_getter(type_of_pointed_var)
				return "%s( GET_GLOBAL_PTR(globals.%s) , %s )" % (getter,name_of_array,self.visit(n.subscript))
			else:
				if (is_pointer_created_because_of_array):
					getter=find_name_of_stack_array_getter(type_of_pointed_var)
				else:
					#it's a pointer and has been malloc'ed
					getter=find_name_of_sheap_array_getter(type_of_pointed_var)
				if (type_of_var=='ptr'):
					return "%s( GET_STACK_PTR(%s) , %s )" % (getter,name_of_array,self.visit(n.subscript))
				else:
					return "%s( %s , %s )" % (getter,name_of_array,self.visit(n.subscript))

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
		operand = self._parenthesize_unless_simple(n.expr) #well, we probably don't want to pass use_setter with kwargs here..?
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

	def visit_BinaryOp(self, n,**kwargs):
		lval_str = self._parenthesize_if(n.left,
							lambda d: not self._is_simple_node(d),**kwargs)
		rval_str = self._parenthesize_if(n.right,
							lambda d: not self._is_simple_node(d),**kwargs)
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
			if (to_dict(n.lvalue)["_nodetype"]=="UnaryOp"):
				return '%s=%s' % (self.visit(n.lvalue,**kwargs), rval_str)
			else:
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
