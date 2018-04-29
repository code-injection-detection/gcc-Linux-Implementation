#!/usr/bin/env python3
import pycparser.c_ast
import pycparser.c_parser
import copy
import sys
import pickle
import os

sys.dont_write_bytecode = True #we don't want these .pyc files!

from helper_functions_by_pycparser import *
from our_helper_functions import *

give_small_output=False

if len(sys.argv)!=2:
	print("Usage: "+sys.argv[0]+" <c_program_to_parse>")
	sys.exit(-1)

ast = pycparser.parse_file(sys.argv[1],use_cpp=True)

#ast.show()

dictify = lambda n: {k:v for k,v in n.children()}
listify = lambda n: [v for _,v in n.children()] if n else []

def access(node, *path):
	tmp = node
	for label in path:
		try:
			tmp = dictify(tmp)[label]
		except KeyError:
			return None
	return tmp

def typetorepr(node, word_size=8,**kwargs):
	ast_of_last_decl=kwargs.get("ast_of_last_decl",None) #get the ast of the last Decl/TypeDecl/Typename
	ast_of_last_proper_Decl=kwargs.get("ast_of_last_proper_Decl",None) #get the ast of the last Decl (only)
	ast_of_last_decl_init=kwargs.get("ast_of_last_decl_init",None) #get the ast of the last Decl init block
	parent_node=kwargs.get("parent_node",None) #grab a pointer to our parent node

	kwargs["parent_node"]=node #set ourselves as the parent node
	
	if (isinstance(node,pycparser.c_ast.TypeDecl) #NOT A GOOD WAY to check, we need to do something better than this
		and isinstance(node.type,pycparser.c_ast.IdentifierType)):
		#the idea here is that we need to transfer the init block from the last Decl. We should cancel what we got for our children, EXCEPT if we are a TypeDecl (and followed by an Identifier)
		pass	
	else:
		kwargs["ast_of_last_decl_init"]=None # cancel the last decl init

	if isinstance(node, pycparser.c_ast.ArrayDecl):
		ty, sz = typetorepr(node.type, word_size,**kwargs)
		#get the dimension of the array
		if RepresentsInt(get_original_C_code_of_ast(node.dim)):
			n = int(node.dim.value, 10)
		else:
			n = -42424242424242 #denotes "variable size"
		if (give_small_output):
			return (['array', (ty, sz), n], n*sz)
		else:
			return (['array',
					{"type":"array", "name":get_name_of_a_node(parent_node) , "type_of_array_element":(ty, sz), "num_of_array_elements:":n, "size":n*sz , "init":ast_of_last_decl_init,"pycparser_ast":copy.deepcopy(node), "parent_node":parent_node, "ast_of_last_proper_Decl":ast_of_last_proper_Decl}],
					n*sz)
	
	if isinstance(node, pycparser.c_ast.Struct):
		types = []
		size = 0

		if node.decls!=None: #a struct that has already been declared and referenced again (with "struct a b;") does not have declarations
			for decl in node.decls:
				ty, sz = typetorepr(decl,**kwargs)
				types.append((ty, sz))
				size += sz
		else:
			#if the struct is already present in the known structs, fetch the size and elements from there
			if node.name in all_structs_dict:
				size=all_structs_dict[node.name][1]
				types=copy.deepcopy(all_structs_dict[node.name][0][1]['struct_elements'])
		if (give_small_output):
			retval=(['struct', node.name, types], size)
		else:
			retval= (['struct',
					{"type":"struct", "name":node.name, "name_of_struct_variable":get_name_of_a_node(parent_node), "size":size, "init":ast_of_last_decl_init, "struct_elements":types ,"pycparser_ast":copy.deepcopy(node), "parent_node":parent_node, "ast_of_last_proper_Decl":ast_of_last_proper_Decl}], 
					size)
		if node.name not in all_structs_dict:
			struct_dict=copy.deepcopy(retval)
			struct_dict[0][1].pop("name_of_struct_variable", None) #delete "name_of_struct_variable" as it is not relevant to a struct description
			all_structs_dict[node.name]=struct_dict #add it to the all structs dict if it is not there.
		return retval

	if isinstance(node, pycparser.c_ast.PtrDecl):
		if (give_small_output):
			return (['pointer', typetorepr(node.type,**kwargs)], word_size)
		else:
			return (['pointer',
					{"type":"pointer", "name":get_name_of_a_node(parent_node) , "type_of_pointed_element":typetorepr(node.type,**kwargs), "size":word_size , "init":ast_of_last_decl_init, "pycparser_ast":copy.deepcopy(node), "parent_node":parent_node, "ast_of_last_proper_Decl":ast_of_last_proper_Decl}],
					word_size)

	if isinstance(node, pycparser.c_ast.IdentifierType):
		name = " ".join(node.names)
		size = get_size_of_type(name,typedefs)
		if (give_small_output):
			return (name, size)
		else:
			return ([name,
					{"type":name, "name":get_name_of_a_node(parent_node),"size":size , "init":ast_of_last_decl_init, "pycparser_ast":copy.deepcopy(node), "parent_node":parent_node, "ast_of_last_proper_Decl":ast_of_last_proper_Decl}],
					size)

	if isinstance(node, pycparser.c_ast.FuncDecl):
		ty = node.type
		return_value_parse=typetorepr(node.type, word_size,**kwargs)
		list_with_arguments_parse=[typetorepr(arg,**kwargs) for arg in listify(node.args)]
		if (give_small_output):
			return (['function',list_with_arguments_parse , return_value_parse], None)
		else:
			return (['function decl',
					{"type":"function decl", "name":get_name_of_a_node(parent_node) , "list_of_arguments":list_with_arguments_parse, "return_value":return_value_parse , "pycparser_ast":copy.deepcopy(node), "parent_node":parent_node, "ast_of_last_proper_Decl":ast_of_last_proper_Decl}],
					None)
		
	if isinstance(node, (pycparser.c_ast.Decl, pycparser.c_ast.TypeDecl, pycparser.c_ast.Typename)):
		kwargs["ast_of_last_decl"]=node
		if isinstance(node, (pycparser.c_ast.Decl)):
			kwargs["ast_of_last_proper_Decl"]=node
			kwargs["ast_of_last_decl_init"]=copy.deepcopy(node.init)
		retval=typetorepr(node.type,**kwargs)
		if isinstance(node, (pycparser.c_ast.Decl)):
			decls_to_gather.append(retval)
		return retval
	
	node.show()
	assert False, 'Unhandled type %r %r %r' % (type(node), dictify(node), dir(node))

function_types = dict()
global_decls=[]
kwargs=dict()
decls_to_gather=[]
typedefs=dict()
all_structs_dict=dict()
global_decl_names=[]

for node in listify(ast):
	kwargs["parent_node"]=node
	if isinstance(node, pycparser.c_ast.Typedef):
		name_of_typedef=node.name		
		typedefs[name_of_typedef]=typetorepr(node.type,**kwargs)
	if isinstance(node, pycparser.c_ast.Decl):
		global_decls.append(typetorepr(node,**kwargs))
		global_decl_names.append(node.name)
		print (node.name)
		print ('\t', typetorepr(node,**kwargs))
	if isinstance(node, pycparser.c_ast.FuncDef):
		name_of_fun=node.decl.name
		decls_to_gather=[]
		local_vars=[typetorepr(local,**kwargs) for local in node.body.block_items if isinstance(local, (pycparser.c_ast.Decl))]
		function_types[name_of_fun] = {"fun_decl":typetorepr(node.decl,**kwargs), "fun_locals":local_vars }
		print(name_of_fun)
		print ('\t', function_types[name_of_fun])


print("\n\nFUNCTIONS:\n")
if (give_small_output):
	print(function_types)
else:
	for x in function_types:
		print("\n",x," : ")
		print("\t\t function decl:",function_types[x]["fun_decl"])
		print("\t\t function locals:")
		for y in function_types[x]["fun_locals"]:
			print("\t\t\t\t",y[0][1]['name']," : ",y)
print("\nGLOBAL DECLS:\n")
if (give_small_output):
	print(global_decls)
else:
	for i,x in enumerate(global_decls):
		print(global_decl_names[i]," : ",x)
print("\nTYPEDEFS:\n")
if (give_small_output):
	print(typedefs)
else:
	for x in typedefs:
		print(x," : ",typedefs[x])
print("\nALL STRUCTS DICT:\n")
if (give_small_output):
	print(all_structs_dict)
else:
	for x in all_structs_dict:
		print(x," : ",all_structs_dict[x])

semantic_dict=dict()
semantic_dict["functions"]=function_types
semantic_dict["global_decls"]=global_decls
semantic_dict["typedefs"]=typedefs
semantic_dict["all_structs"]=all_structs_dict
semantic_dict["global_decl_names"]=global_decl_names
working_dir=os.getcwd()
pickle.dump( semantic_dict, open( working_dir+"/semantic_data", "wb" ) )

