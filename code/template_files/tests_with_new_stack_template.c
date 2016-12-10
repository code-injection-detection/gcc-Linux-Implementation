#include "headers_needed.h"


void great_function_that_wraps_the_tests()
{
	
	goto end_of_functions_declaration;
	
	//PLEASE PYTHON INIT A FUNCTION HERE
	NAME_OF_FUNCTION: test_custom_function_sum
	RETURN_VALUE_SIZE: long
	//^FOR THE ABOVE: none/int/char etc
	NUM_OF_PARAMETERS: 4
		chars: 0 
		ints: 2 | names: X,Y
		longs: 0
		floats: 0
		doubles: 0
		pointers: 1 | names: TEST_PTR | size_of_pointed_elements:10 
		arb_pointers: 1 | names: ARB_TEST_PTR | size_of_objects:20 
	END_OF_PARAMETERS
	NUM_OF_LOCAL_VARIABLES: 3
		chars: 0 
		ints: 0
		longs: 1 | names: SUM
		floats: 0
		doubles: 0
		pointers: 2 | names: FOO1,FOO2 | size_of_pointed_elements: 100,200
		arb_pointers: 0
	END_OF_LOCAL_VARIABLES
	RETURN_EXPRESSION: GET_STACK_VAR(SUM)
	START_OF_FUNCTION : test_custom_function_sum
	
		SET_STACK_VAR(SUM,GET_STACK_VAR(X)+GET_STACK_VAR(Y))	
		RETURN_POINT_OF_FUNCTION: test_custom_function_sum
		
	END_OF_FUNCTION: test_custom_function_sum
	
	
	
	end_of_functions_declaration:
	
	int x;
	//HEY PYTHON CALLING FUNCTION : test_custom_function_sum
	//PARAMETERS: 1,2
	x=$test_custom_function_sum$
	printf("x=%d\n",x);
}
