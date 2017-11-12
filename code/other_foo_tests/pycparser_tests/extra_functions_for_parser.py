#!/usr/bin/env python3




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
