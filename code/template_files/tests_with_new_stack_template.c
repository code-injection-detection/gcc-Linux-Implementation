#include "headers_needed.h"


//DONT USE sizeof() in sizes!! PYTHON does not know that!

void great_function_that_wraps_the_tests()
{
	
	goto end_of_functions_declaration;
	
	/**********************************************************************************/
	/*********************START OF FUNCTIONS DECLARATION*******************************/
	/**********************************************************************************/
	
	//PLEASE PYTHON INIT A FUNCTION HERE
	NAME_OF_FUNCTION: test_custom_function_sum
	RETURN_VALUE_SIZE: long
	//^FOR THE ABOVE: none/int/char etc
	NUM_OF_PARAMETERS: 5
		chars: 0 
		ints: 2 | names: X,Y
		longs: 0
		floats: 0
		doubles: 0
		pointers: 1 | names: TEST_PTR | size_of_pointed_elements:10 
		arb_pointers: 2 | names: STUFF,STUFF2 | size_of_objects:5,7
	END_OF_PARAMETERS
	NUM_OF_LOCAL_VARIABLES: 4
		chars: 0 
		ints: 1 | names: I
		longs: 1 | names: SUM
		floats: 0
		doubles: 0
		pointers: 2 | names: FOO1,FOO2 | size_of_pointed_elements: 1,200
		arb_pointers: 0
	END_OF_LOCAL_VARIABLES
	RETURN_EXPRESSION: get_stack_long_int(SUM)
	START_OF_FUNCTION : test_custom_function_sum
	
		set_stack_long_int(SUM,get_stack_int(X)+get_stack_int(Y));
		set_stack_pointer(FOO1,STUFF); //careful here! not get_stack_pointer(STUFF)!
		for (set_stack_int(I,0);get_stack_int(I)<5;set_stack_int(I,get_stack_int(I)+1))
		{
			printf("%c ",get_stack_char_array_element(get_stack_pointer(FOO1),get_stack_int(I)));
		}
		printf("\n");
		RETURN_POINT_OF_FUNCTION: test_custom_function_sum
		
	END_OF_FUNCTION: test_custom_function_sum
	
	
	/**********************************************************************************/
	/***********************END OF FUNCTIONS DECLARATION*******************************/
	/**********************************************************************************/
	end_of_functions_declaration:
	; //don't remove the semicolon
	
	
	/**********************************************************************************/
	/************************START OF THE REST OF CODE*********************************/
	/**********************************************************************************/
	int x;
	char stuff[5]={'a','b','c','d','e'};
	char stuff2[7]={'k','l','m','n','o','p','q'};
	//HEY PYTHON CALLING FUNCTION : test_custom_function_sum | WRITE RESULT TO: x |PARAMETERS TO CALL WITH: 1,2,NULL,stuff,stuff2
	//(like calling:) x=test_custom_function_sum(1,2,NULL,stuff,stuff2)
	printf("x=%d\n",x);
	
	stuff[3]='n';
	//HEY PYTHON CALLING FUNCTION : test_custom_function_sum | WRITE RESULT TO: x |PARAMETERS TO CALL WITH: 5,6,NULL,stuff,stuff2
	printf("x=%d\n",x);
	
	
	printf("base_pointer:%ld, entire_stack:%ld, last_unused_stack_memory=%ld\n",(long)base_pointer_for_stack,(long)entire_stack_memory_chunk,(long)last_unused_stack_memory);


	/**********************************************************************************/
	/*************************END OF THE REST OF CODE**********************************/
	/**********************************************************************************/
}
