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



int main()
{
	char bob[10];
	pid_t pid;
	int i;
	int k;
	int j;
	int n;
	static int static_main_variable_for_testing;
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
	
	//initialize memory
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
	
	printf("\n");
	printf("Calculating time for secure stack. Normal Hanoi:\n");
	clock_t simplestart=clock();
	towerOfHanoi(25,'A','B','C');
	clock_t simpleend=clock();
	double simpletime=((double) (simpleend - simplestart)) / CLOCKS_PER_SEC;
	printf("\n");
	printf("Normal Hanoi time:%lg cpu seconds\n",simpletime);
	printf("Secure Hanoi:\n");
	clock_t securestart=clock();
	//towerOfHanoi_secure(25,'A','B','C');
	towerOfHanoi_secure_using_template(25,'A','B','C');
	//towerOfHanoi_secure_using_changed_accesses(25,'A','B','C');
	clock_t secureend=clock();
	double securetime=((double) (secureend - securestart)) / CLOCKS_PER_SEC;
	printf("\n");
	printf("Normal Hanoi time:%lg cpu seconds\n",simpletime);
	printf("Secure Hanoi time:%lg cpu seconds\n",securetime);
	printf("\n");
	printf("Ratio: %lg times slowdown\n",securetime/simpletime);

	printf("\n");
	printf("Going to find keyshares\n");
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


