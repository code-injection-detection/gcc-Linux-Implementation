#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#include "functions_needed.c" //Including the C file because all the functions must be in the same file in order to be secured

//ATTENTION: GLOBAL VARIABLE FOLLOWING!
static int static_global_variable_for_testing;

//ATTENTION: GLOBAL VARIABLE FOLLOWING!
int test_global;

int foo(int x)
{
 int k;
 k=x+2;
 
return k;
}


#define TEST_NORMAL_AND_SECURE_TIME(operation,function_call_normal,function_call_secure) { \
					printf("\n"); \
					printf("Calculating time for " #operation ". Normal " #operation ":\n"); \
					simplestart=clock(); \
					function_call_normal ;\
					simpleend=clock(); \
					simpletime=((double) (simpleend - simplestart)) / CLOCKS_PER_SEC; \
					printf("\n"); \
					printf("Normal " #operation ":%lg cpu seconds\n",simpletime); \
					printf("Secure "  #operation ":\n"); \
					securestart=clock(); \
					function_call_secure ;\
					secureend=clock(); \
					securetime=((double) (secureend - securestart)) / CLOCKS_PER_SEC; \
					printf("\n"); \
					printf("Normal " #operation " time:%lg cpu seconds\n",simpletime); \
					printf("Secure " #operation " time:%lg cpu seconds\n",securetime); \
					printf("\n"); \
					printf("Ratio: %lg times slowdown\n",securetime/simpletime); \
				} 


int main()
{
	char bob[10];
	pid_t pid;
	int i;
	int k;
	int j;
	int n;
	static int static_main_variable_for_testing;
	clock_t simplestart;
	clock_t simpleend;
	clock_t securestart;
	clock_t secureend;
	double securetime;
	double simpletime;

	
	//initialise memory
	init_heap_and_stack_mem();
	
	
	//initialise the verification procedure thread that will wait to be called
	init_verification_procedure_thread();
	
	
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
	find_keyshares(-1);
	*/
	
	/*
	int len=100;
	TEST_NORMAL_AND_SECURE_TIME(time for heap accesses in array adding.,adding_unsecured_arrays_time_measure(len);,
								adding_heap_arrays_time_measure(len);)
	*/
	
	/*
	int hanoi_up_to=25;
	//towerOfHanoi_secure_using_template(hanoi_up_to,'A','C','B');
	//towerOfHanoi_secure(hanoi_up_to,'A','C','B');
	//towerOfHanoi_secure_using_changed_accesses(hanoi_up_to,'A','C','B'); //don't do this
	TEST_NORMAL_AND_SECURE_TIME(towers of Hanoi,towerOfHanoi(hanoi_up_to,'A','C','B');,
								towerOfHanoi_secure_using_template(hanoi_up_to,'A','C','B');)
	*/
	
	
	int primes_up_to=100;
	TEST_NORMAL_AND_SECURE_TIME(primes not very fast version,find_primes_up_to_a_number(primes_up_to);,
								secure_find_primes_up_to_a_number(primes_up_to);)
	
	
	/*
	int times=10000000;
	TEST_NORMAL_AND_SECURE_TIME(mallocs and frees,multiple_simple_mallocs_and_frees(times,40);,
								multiple_secure_mallocs_and_frees(times,40);)
	*/
	
	/*
	int sieve_size=1000;
	TEST_NORMAL_AND_SECURE_TIME(sieve of Eratosthenes,simple_sieve_of_Eratosthenes(sieve_size);,
								user_friendly_secure_sieve_of_Eratosthenes(sieve_size))
	*/
	
	/*
	int matrix_size=400;
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
	
	
	
	//free memory
	free_heap_and_stack_memory();
	
	return 0;
}



int foo2(int x)
{
	int k;
	k=x+3;
	 
	return k;
}


