#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#include "functions_needed.c" //Including the C file because all the functions must be in the same file in order to be secured

static int static_global_variable_for_testing;


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
	k=1;
	i=2;
	i++;
	i++;
	i--;
	k=k+i;
	k+=2;
	i++;
	static_main_variable_for_testing=1;
	static_global_variable_for_testing=2;
	
	//initialise memory
	init_heap_and_stack_mem();
	
	
	//setting up signal handler
	install_signal_handler();
	
	
	pid=getpid();
	printf("My pid=%ld\n",(long)pid);

	/*
	//stress a bit
	for (j=1;j<=500000000;j++)
	  k+=i;
	*/
	
 	printf("K=%d\n",k);

 	n=foo(5);
	n=foo2(n);
	printf("n=%d\n",n);

	printf("main is at %p\n", main);

	/*
	//find_keyshares();
	//mem_test();
	//list_test();
	printf("\nSimple array tests in heap\n");
	simple_array_tests();
	printf("\nStack fun params test\n");
	//stack_fun_params_test();
	printf("\nEnd of tests\n");
	printf("Going to find keyshares\n");
	find_keyshares();
	*/
	
	/*
	printf("\n");
	printf("Going to measure time for heap accesses in array adding.\n");
	printf("Simple array adding:\n");
	simplestart=clock();
	adding_unsecured_arrays_time_measure(100);
	simpleend=clock();
	simpletime=((double) (simpleend - simplestart)) / CLOCKS_PER_SEC;
	printf("Normal array adding time:%lg cpu seconds\n",simpletime);
	printf("Secure array adding:\n");
	securestart=clock();
	adding_heap_arrays_time_measure(100);
	secureend=clock();
	securetime=((double) (secureend - securestart)) / CLOCKS_PER_SEC;
	printf("Secure array adding time:%lg cpu seconds\n",securetime);
	printf("Ratio: %lg times slowdown\n",securetime/simpletime);
	*/
	
	/*
	printf("\n");
	printf("Calculating time for secure stack. Normal Hanoi:\n");
	simplestart=clock();
	towerOfHanoi(25,'A','C','B');
	simpleend=clock();
	simpletime=((double) (simpleend - simplestart)) / CLOCKS_PER_SEC;
	printf("\n");
	printf("Normal Hanoi time:%lg cpu seconds\n",simpletime);
	printf("Secure Hanoi:\n");
	securestart=clock();
	//towerOfHanoi_secure(25,'A','C','B');
	towerOfHanoi_secure_using_template(25,'A','C','B');
	//towerOfHanoi_secure_using_changed_accesses(25,'A','C','B');
	secureend=clock();
	securetime=((double) (secureend - securestart)) / CLOCKS_PER_SEC;
	printf("\n");
	printf("Normal Hanoi time:%lg cpu seconds\n",simpletime);
	printf("Secure Hanoi time:%lg cpu seconds\n",securetime);
	printf("\n");
	printf("Ratio: %lg times slowdown\n",securetime/simpletime);
	*/
	
	
	/*
	printf("\n");
	printf("Calculating time for primes. Normal primes:\n");
	simplestart=clock();
	find_primes_up_to_a_number(1000);
	simpleend=clock();
	simpletime=((double) (simpleend - simplestart)) / CLOCKS_PER_SEC;
	printf("\n");
	printf("Normal primes time:%lg cpu seconds\n",simpletime);
	printf("Secure primes:\n");
	securestart=clock();
	secure_find_primes_up_to_a_number(1000);
	secureend=clock();
	securetime=((double) (secureend - securestart)) / CLOCKS_PER_SEC;
	printf("\n");
	printf("Normal primes time:%lg cpu seconds\n",simpletime);
	printf("Secure primes time:%lg cpu seconds\n",securetime);
	printf("\n");
	printf("Ratio: %lg times slowdown\n",securetime/simpletime);
	*/
	
	/*
	printf("\n");
	printf("Calculating time for primes with sieve of Eratosthenes. Normal sieve:\n");
	simplestart=clock();
	simple_sieve_of_Eratosthenes(10000);
	simpleend=clock();
	simpletime=((double) (simpleend - simplestart)) / CLOCKS_PER_SEC;
	printf("\n");
	printf("Normal sieve time:%lg cpu seconds\n",simpletime);
	printf("Secure sieve:\n");
	securestart=clock();
	user_friendly_secure_sieve_of_Eratosthenes(10000);
	secureend=clock();
	securetime=((double) (secureend - securestart)) / CLOCKS_PER_SEC;
	printf("\n");
	printf("Normal sieve time:%lg cpu seconds\n",simpletime);
	printf("Secure sieve time:%lg cpu seconds\n",securetime);
	printf("\n");
	printf("Ratio: %lg times slowdown\n",securetime/simpletime);
	*/
	
	/*
	printf("\n");
	printf("Calculating time for secure heap. Normal mallocs_and_frees:\n");
	simplestart=clock();
	multiple_simple_mallocs_and_frees(10000000,40);
	simpleend=clock();
	simpletime=((double) (simpleend - simplestart)) / CLOCKS_PER_SEC;
	printf("\n");
	printf("Normal mallocs_and_frees time:%lg cpu seconds\n",simpletime);
	printf("Secure mallocs_and_frees:\n");
	securestart=clock();
	multiple_secure_mallocs_and_frees(10000000,40);
	secureend=clock();
	securetime=((double) (secureend - securestart)) / CLOCKS_PER_SEC;
	printf("\n");
	printf("Normal mallocs_and_frees time:%lg cpu seconds\n",simpletime);
	printf("Secure mallocs_and_frees time:%lg cpu seconds\n",securetime);
	printf("\n");
	printf("Ratio: %lg times slowdown\n",securetime/simpletime);
	*/
	
	int matrix_size=100;
	fill_matrices_for_multiplication(matrix_size,2000);
	TEST_NORMAL_AND_SECURE_TIME(matrix multiplication,matrix_multiplication(matrix_size,2000),
								user_friendly_secure_matrix_multiplication(matrix_size,2000))
	if (the_matrices_are_the_same(matrix_size))
		printf("\nThe matrices are the same.\n\n");
	else
		printf("\nERROR!THE MATRICES ARE NOT THE SAME!\n\n");
	
	
	printf("\n");
	printf("Going to find keyshares.\n");
	find_keyshares();
	
	
	
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


