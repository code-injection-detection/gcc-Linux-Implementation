#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#include "memory_manager.c" //Including the C files because all the functions must be in the same file in order to be secured
#include "verification_procedure.c"

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
	unsigned char * mem;
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
	
	printf("Initializing mem\n");
	printf("bytes_to_allocate_on_start:%d\n",bytes_to_allocate_on_start);

    printf("Init_mem, alloc+key insertion\n");
	mem=init_mem();
	printf("If successful, total bytes allocated:%ld\n",total_bytes_allocated);
	
	printf("Installing signal handler\n");
	//setting up signal handler
	sa.sa_handler = verification_procedure;
	sigemptyset(&sa.sa_mask);
	sa.sa_flags = SA_RESTART; /* Restart functions if
                                 interrupted by handler */
	if (sigaction(SIGUSR1, &sa, NULL) == -1)
	{
		perror("Could not install signal handler");
		exit(45);
	}
	printf("Signal handler installed\n");
	
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
	mem_test();
	//list_test();
	find_keyshares();


	free_secure_mem(mem);
	return 0;
}



int foo2(int x)
{
	int k;
	k=x+3;
	 
	return k;
}


