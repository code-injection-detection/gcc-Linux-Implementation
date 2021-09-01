#!/usr/bin/env python3


import sys
import copy

'''
This script sets the proper defines in the headers_needed.h file, given the user configurations.
The first part is the important one, the second implements an old (wrong) version of the stack - (we keep it in order to keep some of the old code from breaking, if we want to run it).
'''

#get the template
headers_src=open('./template_files/headers_needed_template.h','r')
#prepare to write onto the non-template file
headers_dst=open('headers_needed.h','w')




src_lines= headers_src.readlines()
src_lines = [x for x in src_lines if not "PYTHON IGNORE" in x] #drop the "PYTHON IGNORE" files


for line in src_lines:
	newline=line
	#change the defines according to the arguments
	if '#define number_of_interleaved_keys' in line:
		newline='#define number_of_interleaved_keys ('+sys.argv[1]+')\n'
	if '#define bytes_used_for_keyshares' in line:
		newline='#define bytes_used_for_keyshares ('+sys.argv[1]+')\n'
	if '#define stack_bytes_used_for_keyshares' in line:
		newline='#define stack_bytes_used_for_keyshares ('+sys.argv[1]+')\n'
	if '#define bytes_for_useful_data' in line:
		newline='#define bytes_for_useful_data ('+sys.argv[3]+')\n'
	if '#define bytes_to_allocate_on_start' in line:
		newline='#define bytes_to_allocate_on_start ('+sys.argv[4]+')\n'
	if '#define number_of_canaries' in line:
		newline='#define number_of_canaries ('+sys.argv[2]+')\n'
	if '#define stack_bytes_for_useful_data' in line:
		newline='#define stack_bytes_for_useful_data ('+sys.argv[5]+')\n'
	if '#define stack_bytes_to_allocate_on_start' in line:
		newline='#define stack_bytes_to_allocate_on_start ('+sys.argv[6]+')\n'	
	if '#define number_of_global_useful_bytes' in line:
		newline='#define number_of_global_useful_bytes ('+sys.argv[7]+')\n'
	if '#define number_of_mac_bytes' in line:
		newline='#define number_of_mac_bytes ('+sys.argv[8]+')\n'			
	if '#define insert_parameters_into_new_secure_stack_as_arrays' in line:
		newline='#define insert_parameters_into_new_secure_stack_as_arrays '+sys.argv[9]+'\n'
	if '#define use_fixed_size_chunks_of_code' in line:
		newline='#define use_fixed_size_chunks_of_code '+sys.argv[10]+'\n'	
	if '#define num_of_bytes_in_code_chunk' in line:
		newline='#define num_of_bytes_in_code_chunk '+sys.argv[11]+'\n'
	if '#define do_not_mac_what_we_add_in_code' in line:
		newline='#define do_not_mac_what_we_add_in_code '+sys.argv[12]+'\n'	
	if '#define check_code_verification_on_the_fly' in line:
		newline='#define check_code_verification_on_the_fly '+sys.argv[13]+'\n'
	if '#define use_inline_code_for_delays' in line:
		newline='#define use_inline_code_for_delays '+sys.argv[14]+'\n'	
	if '#define num_of_cached_blocks_of_code' in line:
		newline='#define num_of_cached_blocks_of_code '+sys.argv[15]+'\n'	
	if '#define num_of_cached_blocks_of_data' in line:
		newline='#define num_of_cached_blocks_of_data '+sys.argv[16]+'\n'
	if '#define ignore_macs_even_if_there_are_mac_bytes' in line:
		newline='#define ignore_macs_even_if_there_are_mac_bytes '+sys.argv[17]+'\n'
	if '#define code_cache_type' in line:
		newline='#define code_cache_type '+sys.argv[18]+'\n'
	if '#define data_cache_type' in line:
		newline='#define data_cache_type '+sys.argv[19]+'\n'
	if '#define code_cache_set_assosiative_size' in line:
		newline='#define code_cache_set_assosiative_size '+sys.argv[20]+'\n'
	if '#define data_cache_set_assosiative_size' in line:
		newline='#define data_cache_set_assosiative_size '+sys.argv[21]+'\n'
	if '#define ignore_macs_last_moment_even_if_there_are_mac_bytes' in line:
		newline='#define ignore_macs_last_moment_even_if_there_are_mac_bytes '+sys.argv[22]+'\n'
	if '#define treat_loop_counters_as_unsecured_variables' in line:
		newline='#define treat_loop_counters_as_unsecured_variables '+sys.argv[23]+'\n'
	if '#define squeeze_keys_when_macing' in line:
		newline='#define squeeze_keys_when_macing '+sys.argv[24]+'\n'
	if '#define count_mac_invocations' in line:
		newline='#define count_mac_invocations '+sys.argv[25]+'\n'
	if '#define add_the_padded_nops_in_the_mac_in_fixed_size' in line:
		newline='#define add_the_padded_nops_in_the_mac_in_fixed_size '+sys.argv[26]+'\n'
	if '#define force_code_block_split_on_labels_and_calls' in line:
		newline='#define force_code_block_split_on_labels_and_calls '+sys.argv[27]+'\n'		
	if '#define use_code_cache_with_unsplit_blocks' in line:
		newline='#define use_code_cache_with_unsplit_blocks '+sys.argv[28]+'\n'		
	if '#define set_as_given_that_everything_maced_will_be_fixed_and_multiple_of_16' in line:
		newline='#define set_as_given_that_everything_maced_will_be_fixed_and_multiple_of_16 '+sys.argv[29]+'\n'
	if '#define when_splitting_blocks_do_not_invoke_verif_unless_on_label' in line:
		newline='#define when_splitting_blocks_do_not_invoke_verif_unless_on_label '+sys.argv[30]+'\n'
	if '#define size_of_jmp_command' in line:
		newline='#define size_of_jmp_command '+sys.argv[31]+'\n'
	if '#define overhead_of_verif' in line:
		newline='#define overhead_of_verif '+sys.argv[32]+'\n'
	if '#define using_large_jmps_and_code_blocks_with_3_worlds' in line:
		newline='#define using_large_jmps_and_code_blocks_with_3_worlds '+sys.argv[33]+'\n'
	if '#define bytes_for_instructions_length' in line:
		newline='#define bytes_for_instructions_length '+sys.argv[34]+'\n'
	if '#define verify_everything' in line:
		newline='#define verify_everything '+sys.argv[35]+'\n'
	if '#define use_new_secure_heap' in line:
		newline='#define use_new_secure_heap '+sys.argv[36]+'\n'
	if '#define check_for_secure_stack_allocation_overflow' in line:
		newline='#define check_for_secure_stack_allocation_overflow '+sys.argv[37]+'\n'
	if '#define stack_should_grow_to_decreasing_numbers' in line:
		newline='#define stack_should_grow_to_decreasing_numbers '+sys.argv[38]+'\n'
	if '#define use_stack_canaries' in line:
		newline='#define use_stack_canaries '+sys.argv[39]+'\n'
	if '#define world_in_which_we_are' in line:
		newline='#define world_in_which_we_are '+sys.argv[40]+'\n'
	if '#define bytes_for_num_of_padded_nops_len' in line:
		newline='#define bytes_for_num_of_padded_nops_len '+sys.argv[41]+'\n'
	if '#define size_of_stack_canaries' in line:
		newline='#define size_of_stack_canaries '+sys.argv[42]+'\n'
	if '#define all_getter_setter_arguments_point_at_start_of_blocks' in line:
		newline='#define all_getter_setter_arguments_point_at_start_of_blocks '+sys.argv[43]+'\n'
	headers_dst.write(newline)


headers_src.close()
headers_dst.close()

#####################################################################################
###########################  JOB DONE FOR HEADERS ###################################
#####################################################################################

#####################################################################################
######## OBSOLETE PART BELOW. KEEPING IT FOR BACKWARDS COMPATIBILITY REASONS ########
#####################################################################################


# GOING TO DO REPLACEMENTS FOR INITIALIZATION REQUESTS

#the target is to read the annotations for the secure stack (the old version) and produce the code that is needed.
#The code testing the old stack is in general_tests_template.c

temp_line=''
temp_line2=''
temp_line3=''
temp_line4=''

#BASIC PARSER. Sets the correct values to the dictionaries that hold the details for each type of variable
def insert_into_dictionaries(dictionary,line,ptr):
	temp_line=line.strip().split('|')
	temp_line2=temp_line[0].strip()
	temp_line3=temp_line2.split(':')[1].strip()
	dictionary['number']=copy.deepcopy(temp_line3)

	if temp_line3!='0':
		cnt=1
		if (ptr==1):
			temp_line3=line.split('|')[cnt].strip()
			cnt+=1
			temp_line4=temp_line3.split(':')[1].strip()
			for i,size in enumerate(temp_line4.split(',')):
				dictionary['sizes'].append(copy.deepcopy(size.strip()))

		temp_line3=line.split('|')[cnt].strip()
		cnt+=1
		temp_line4=temp_line3.split(':')[1].strip()
		dictionary['initialise']=copy.deepcopy(temp_line4)

		if (temp_line4!='0'):
			temp_line3=line.split('|')[cnt].strip()
			cnt+=1
			temp_line4=temp_line3.split(':')[1].strip()
			for i,value in enumerate(temp_line4.split(',')):
				dictionary['values'].append(copy.deepcopy(value.replace('@',',').strip())) #'@' is used in place of ',' , in array initializations for example. 
																						   #Although the way I see it now, it will never be used this way
		
		if (len(line.split('|'))>cnt):
			temp_line3=line.split('|')[cnt].strip()
			cnt+=1
			temp_line4=temp_line3.split(':')[1].strip()
			for i,name in enumerate(temp_line4.split(',')):
				dictionary['names'].append(copy.deepcopy(name.strip()))	


#defines the names given in the dictionaries
def define_names():
	global general_tests_dst
	
	new_line=''
	for dictionary in [chars,ints,longs,floats,doubles,pointers,arb_pointers]:
		for num,name in enumerate(dictionary['names']):
			new_line="#define "+ str(name) + " " + str(num) + "\n"
			general_tests_dst.write(new_line)


#undefines the names given in the dictionaries
def undef_names():
	global general_tests_dst
	
	new_line=''
	for dictionary in [chars,ints,longs,floats,doubles,pointers,arb_pointers]:
		for name in dictionary['names']:
			new_line="#undef "+ str(name) + "\n"
			general_tests_dst.write(new_line)


#creates the commands, reading the data from the drictionaries
def create_init_commands():
	global general_tests_dst

	new_line=''+name_of_var+' = '
	if (uninitialised_elements==1):
		new_line+='init_function_params_with_uninitialised_elements(1,'
	else:
		new_line+='init_function_params(1,'		
	new_line+='\n'
	general_tests_dst.write(new_line)
	
		
	for dictionary in [chars,ints,longs,floats,doubles]:
		new_line=''
		new_line+='(long)('+dictionary['number']+'),'
		if (dictionary['number']!='0'):
			if (uninitialised_elements==1):
				new_line+='(long)('+dictionary['initialise']+'),'
			if (dictionary['initialise']!='0'):
				for i,value in enumerate(dictionary['values']):
					new_line+=''+value+','
		new_line+='\n'
		general_tests_dst.write(new_line)

	
	for dictionary in [pointers]:
		new_line=''
		new_line+='(long)('+dictionary['number']+'),'
		if (dictionary['number']!='0'):
			for i,size in enumerate(dictionary['sizes']):
					new_line+='(long)('+size+'),'
			if (uninitialised_elements==1):
				new_line+='(long)('+dictionary['initialise']+'),'
			if (dictionary['initialise']!='0'):
				for i,value in enumerate(dictionary['values']):
					new_line+=''+value+','
		new_line+='\n'
		general_tests_dst.write(new_line)

	#take care for commas
	for dictionary in [arb_pointers]:
		new_line=''
		new_line+='(long)('+dictionary['number']+')'
		if (dictionary['number']!='0'):
			for i,size in enumerate(dictionary['sizes']):
					new_line+=',(long)('+size+')'
			if (uninitialised_elements==1):
				new_line+=',(long)('+dictionary['initialise']+')'
			if (dictionary['initialise']!='0'):
				for i,value in enumerate(dictionary['values']):
					new_line+=','+value
		new_line+=');\n\n'
		general_tests_dst.write(new_line)

	
	new_line=''+name_of_var+' = '
	new_line+='put_fun_params_into_secure_stack_and_free('+name_of_var+');'	
	new_line+='\n\n'
	general_tests_dst.write(new_line)
	



def init_params():
	global name_of_var	
	global uninitialised_elements
	global chars
	global ints
	global longs
	global floats
	global doubles
	global pointers
	global arb_pointers
	global temp_line
	global temp_line2
	global temp_line3
	global temp_line4

	name_of_var=''
	uninitialised_elements=0
	chars={'number':'0', 'initialise':'0', 'values':[], 'names':[]}
	ints={'number':'0', 'initialise':'0', 'values':[], 'names':[]}
	longs={'number':'0', 'initialise':'0', 'values':[], 'names':[]}
	floats={'number':'0', 'initialise':'0', 'values':[], 'names':[]}
	doubles={'number':'0', 'initialise':'0', 'values':[], 'names':[]}
	pointers={'number':'0', 'sizes':[], 'initialise':'0', 'values':[], 'names':[]}
	arb_pointers={'number':'0', 'sizes':[], 'initialise':'0', 'values':[], 'names':[]}
	temp_line=''
	temp_line2=''
	temp_line3=''
	temp_line4=''



general_tests_src=open('./template_files/general_tests_template.c','r')
general_tests_dst=open('general_tests.c','w')

src_lines= general_tests_src.readlines()

#variables and dictionaries that hold the data
name_of_var=''
uninitialised_elements=0
chars={'number':'0', 'initialise':'0', 'values':[], 'names':[]}
ints={'number':'0', 'initialise':'0', 'values':[], 'names':[]}
longs={'number':'0', 'initialise':'0', 'values':[], 'names':[]}
floats={'number':'0', 'initialise':'0', 'values':[], 'names':[]}
doubles={'number':'0', 'initialise':'0', 'values':[], 'names':[]}
pointers={'number':'0', 'sizes':[], 'initialise':'0', 'values':[], 'names':[]}
arb_pointers={'number':'0', 'sizes':[], 'initialise':'0', 'values':[], 'names':[]}

into_command=0
#iterates over the lines, and invokes the functions that fill the correct dictionary
for line in src_lines:
	newline=line
	if  line.strip()=='PLEASE_INIT_PARAMS':
		into_command=1
		init_params()
		newline=line.replace('PLEASE_INIT_PARAMS','')

	if  (into_command and line.strip()=='END_OF_PARAM_INIT'):
		into_command=0
		create_init_commands()
		define_names()
		newline=line.replace('END_OF_PARAM_INIT','')

	if  (into_command and 'name_of_var' in line):
		temp_line=line.strip().split(':')
		name_of_var=temp_line[1].strip()
		newline=''

	if  (into_command and 'uninitialised_elements' in line):
		temp_line=line.strip().split(':')
		temp_line2=temp_line[1].strip()
		newline=''
		if (temp_line=='no'):
			uninitialised_elements=0
		else:
			uninitialised_elements=1

	if  (into_command and 'chars' in line.split(':')[0]):
		newline=''
		insert_into_dictionaries(chars,line,0)

	if  (into_command and 'ints' in line.split(':')[0]):
		newline=''
		insert_into_dictionaries(ints,line,0)

	if  (into_command and 'longs' in line.split(':')[0]):
		newline=''
		insert_into_dictionaries(longs,line,0)

	if  (into_command and 'floats' in line.split(':')[0]):
		newline=''
		insert_into_dictionaries(floats,line,0)

	if  (into_command and 'doubles' in line.split(':')[0]):
		newline=''
		insert_into_dictionaries(doubles,line,0)
	
	if  (into_command and 'pointers' in line.split(':')[0] and 'arb_pointers' not in line.split(':')[0]):
		newline=''
		insert_into_dictionaries(pointers,line,1)

	if  (into_command and 'arb_pointers' in line.split(':')[0]):
		newline=''
		insert_into_dictionaries(arb_pointers,line,1)


	if  line.strip()=='PLEASE_UNDEF_NAMES':
		newline=line.replace('PLEASE_UNDEF_NAMES','')
		undef_names()
		
	general_tests_dst.write(newline)


general_tests_src.close()
general_tests_dst.close()

