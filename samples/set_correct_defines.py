import sys
import copy


headers_src=open('./template_files/headers_needed_template.h','r')
headers_dst=open('headers_needed.h','w')




src_lines= headers_src.readlines()

for line in src_lines:
	newline=line
	if '#define number_of_interleaved_keys' in line:
		newline='#define number_of_interleaved_keys ('+sys.argv[1]+')\n'
	if '#define bytes_used_for_keyshares' in line:
		newline='#define bytes_used_for_keyshares ('+sys.argv[1]+')\n'
	if '#define stack_bytes_used_for_keyshares' in line:
		newline='#define stack_bytes_used_for_keyshares ('+sys.argv[1]+')\n'
	if '#define bytes_between_keyshares' in line:
		newline='#define bytes_between_keyshares ('+sys.argv[3]+')\n'
	if '#define bytes_to_allocate_on_start' in line:
		newline='#define bytes_to_allocate_on_start ('+sys.argv[4]+')\n'
	if '#define number_of_canaries' in line:
		newline='#define number_of_canaries ('+sys.argv[2]+')\n'
	if '#define stack_bytes_between_keyshares' in line:
		newline='#define stack_bytes_between_keyshares ('+sys.argv[5]+')\n'
	if '#define stack_bytes_to_allocate_on_start' in line:
		newline='#define stack_bytes_to_allocate_on_start ('+sys.argv[6]+')\n'		
		
	headers_dst.write(newline)


headers_src.close()
headers_dst.close()

#####################################################################################
###########################  JOB DONE FOR HEADERS ###################################
#####################################################################################

# GOING TO DO REPLACEMENTS FOR INITIALIZATION REQUESTS

temp_line=''
temp_line2=''
temp_line3=''
temp_line4=''

#BASIC PARSER. Sets the correct values to the dictionaries
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

