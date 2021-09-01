#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include "headers_needed.h"

//global type declaration in headers_needed_template.h

global_vars globals = {
//PLEASE PYTHON INITIALISE THE GLOBAL VARS
};

#include "functions_needed_header.c" //Including the C file because all the functions must be in the same file in order to be secured

int foo(int x)
{
 int k;
 k=x+2;
 
return k;
}

//practically main(), but crypto functions must be initialized beforehand (in initializer_template.c, where the actual main() is)
int main_program_function()
{
	pid_t pid;
	int i;
	int k;
	int j;
	int n;
	static int static_main_variable_for_testing;

	//initialise crypto structures
	//crypto structures are initialized in initializer_template.c

	//initialise memory
	init_heap_and_stack_mem();

	
	//initialise the verification procedure thread that will wait to be called
	//DANGER: Problems may occur with on-the-fly code verification! Multi-threading is not supported yet. //DON'T DO IT AT THE MOMENT
	//init_verification_procedure_thread();
	
	
	pid=getpid();
	printf("My pid=%ld\n",(long)pid);


	/*
	//find_keyshares(-1);
	//mem_test();
	//list_test();
	printf("\nSimple array tests in heap\n");
	//simple_array_tests();
	printf("\nStack fun params test\n");
	stack_fun_params_test();
	printf("\nEnd of tests\n");
	printf("Going to find keyshares\n");
	//find_keyshares(-1);
	*/
	
	/*
	int len=100;
	TEST_NORMAL_AND_SECURE_TIME(time for heap accesses in array adding.,adding_unsecured_arrays_time_measure(len);,
								adding_heap_arrays_time_measure(len);)
	*/
	
	/*
	int hanoi_up_to=27;
	//towerOfHanoi_secure_using_template(hanoi_up_to,'A','C','B');
	//towerOfHanoi_secure(hanoi_up_to,'A','C','B');
	//towerOfHanoi_secure_using_changed_accesses(hanoi_up_to,'A','C','B'); //don't do this
	TEST_NORMAL_AND_SECURE_TIME(towers of Hanoi,towerOfHanoi(hanoi_up_to,'A','C','B');,
								towerOfHanoi_secure_using_template(hanoi_up_to,'A','C','B');)
	*/
	
	/*
	int primes_up_to=100;
	TEST_NORMAL_AND_SECURE_TIME(primes not very fast version,find_primes_up_to_a_number(primes_up_to);,
								secure_find_primes_up_to_a_number(primes_up_to);)
	*/
	
	//test_unsecure_heap_many_allocs_frees(1990);
	//test_secure_heap_many_allocs_frees(1990);
	
	//check_new_unsecure_heap();
	
	//call_and_calc_unsecured_determinant(11);


	CLEAR_CACHES;
	great_function_that_wraps_the_tests();

	/*
	int Times=4000;
	int maxval=3000;			
	TEST_NORMAL_AND_SECURE_TIME(global sum calculation,global_sum_calculator(Times,maxval);,
								secure_global_sum_calculator(Times,maxval);)
	*/
	
	//Yay.break some stuff plox
	//break globals!  (and corresponding mac)
	//globals.test_global=2;
	//break keys! (and corresponding mac)
	//*(entire_memory_chunk+bytes_for_useful_data)=1;
	//break macs!
	//*(entire_memory_chunk+bytes_for_useful_data+bytes_used_for_keyshares)=1;
	//break code?
	//the following produces a segfault. do not try, unless you give write permission to text segment.
	//*((unsigned char*)&__executable_start+2000)=1;
	
	
	/*
	int times=10000000;
	TEST_NORMAL_AND_SECURE_TIME(mallocs and frees,multiple_simple_mallocs_and_frees(times,40);,
								multiple_secure_mallocs_and_frees(times,40);)
	*/
	
	/*
	int sieve_size=2000;
	TEST_NORMAL_AND_SECURE_TIME(sieve of Eratosthenes,simple_sieve_of_Eratosthenes(sieve_size);,
								user_friendly_secure_sieve_of_Eratosthenes(sieve_size))
	*/


	/*
	int matrix_size=800;
	fill_matrices_for_multiplication(matrix_size,2000);
	TEST_NORMAL_AND_SECURE_TIME(matrix multiplication,matrix_multiplication(matrix_size,2000),
								user_friendly_secure_matrix_multiplication(matrix_size,2000))
	if (the_matrices_are_the_same(matrix_size))
		printf("\nThe matrices are the same.\n\n");
	else
		printf("\nERROR!THE MATRICES ARE NOT THE SAME!\n\n");
	*/
	
	printf("\n");
	printf("Going to find keyshares.\n");
	find_keyshares(-1);
	
	flush_data_cache_into_mem();
	check_heap_macs();
	check_stack_macs();
	check_global_macs();
	check_code_macs();
	
	
	//free memory
	free_heap_and_stack_memory();
	
	//clear crypto structures
	//this is done in initializer_template.c
	
	return 0;
}



int foo2(int x)
{
	int k;
	k=x+3;
	 
	return k;
}

#include "functions_needed_footer.c" //And let's include the functions that must be in the end (like the verification procedure)

