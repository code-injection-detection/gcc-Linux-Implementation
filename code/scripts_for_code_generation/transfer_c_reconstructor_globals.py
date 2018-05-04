#!/usr/bin/env python3

import sys
import os

'''
Transfers the global declarations that the C reconstructor produces to headers_needed.h
'''
remove_original_lines=int(sys.argv[1])

file1='2nd_pass_of_C_reconstruction_of_tests.c'
file2='headers_needed.h'

filehandler=open(file1,'r')
filelines_in = filehandler.readlines()
filehandler.close()

#re-open the file1 to write the same things but without the global declarations
filelines_out=[]
filehandler=open(file1,'w')

#get the global declaration lines in a list
in_global_decl=0
global_decl_str='ATTENTION: GLOBAL VARIABLE FOLLOWING!'
struct_decl_str='/*Struct declarations by pycparser*/'
struct_decl_str_end='/*End of struct declarations by pycparser*/'
global_decls=[]
other_decls=[]
in_other_decls=0

for line in filelines_in:
	if struct_decl_str in line:
		in_other_decls=1
	if struct_decl_str_end in line:
		in_other_decls=0
	if (in_other_decls) or struct_decl_str_end in line :
		other_decls.append(line)
		if (remove_original_lines==0):
			filehandler.write(line)
		continue
	if global_decl_str in line:
		in_global_decl=1
		global_decls.append(line)
		if (remove_original_lines==0):
			filehandler.write(line)
	else:
		if (in_global_decl):
			in_global_decl=0
			global_decls.append(line)
			if (remove_original_lines==0):
				filehandler.write(line)
		else:
			filehandler.write(line)
		
filehandler.close()
		
		
stripped_global_decls=[x.strip() for x in global_decls]		
		
#now we have the global decls to transfer!
filehandler=open(file2,'r')
filelines_in = filehandler.readlines()
filehandler.close()

filehandler=open(file2,'w')
str_that_starts_global_vars='typedef struct global_variables_struct'
str_that_stops_global_vars='}global_vars;'
globals_in_headers=[]
skip_line_for_struct_start=0
skip_line_for_global_redecl=0
end=0
for line in filelines_in:
	if skip_line_for_global_redecl==1:
		skip_line_for_global_redecl=0
		continue
	
	if skip_line_for_struct_start==2 and line.strip()==str_that_stops_global_vars:
		skip_line_for_struct_start=0
		#add the gathered globals
		for global_line in global_decls:
			filehandler.write(global_line)
	if skip_line_for_struct_start==2:
		if line.strip() in stripped_global_decls:
			#the line is redeclared, remove it (it will be added later)
			skip_line_for_global_redecl=1
			continue
	if skip_line_for_struct_start==1:
		skip_line_for_struct_start=2
	if str_that_starts_global_vars in line:
		#add the other decls
		for other_decl in other_decls:
			filehandler.write(other_decl)
		filehandler.write(';\n')
		#skip 1 line because it is "{"
		skip_line_for_struct_start=1
	
	
	
	filehandler.write(line)

filehandler.close()		
		

