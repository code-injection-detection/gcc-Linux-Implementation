#include "headers_needed.h"


void * error_checking_malloc(long size_in_bytes, const char * fun_name,int line)
{
	void * ret;
	
	if (size_in_bytes==0) return NULL; 
	ret=malloc(size_in_bytes);
	if (ret==NULL)
	{
		fprintf(stderr,"malloc failed in function %s, line %d\n",fun_name,line);
		exit(42);
	}
	return ret;
}




#include "memory_manager.c" //Including the C files because all the functions must be in the same file in order to be secured
#include "stack_manager.c"
#include "verification_procedure.c"
#include "general_tests.c"




void init_heap_and_stack_mem()
{
	printf("Initializing heap memory\n");
	printf("bytes_to_allocate_on_start:%d\n",bytes_to_allocate_on_start);

    printf("Init_mem, alloc+key insertion\n");
	init_mem();
	printf("If successful, total bytes allocated:%ld\n",total_bytes_allocated);
	
	printf("Initializing stack memory\n");
	printf("Stack bytes_to_allocate_on_start:%d\n",stack_bytes_to_allocate_on_start);

    printf("Init_stack_mem, alloc+key insertion\n");
	init_stack_mem();
	printf("If successful, total bytes allocated:%ld\n",total_stack_bytes_allocated);
	
}


void install_signal_handler()
{
	printf("Installing signal handler\n");
	sa.sa_handler = verification_procedure; //from verification procedure
	sigemptyset(&sa.sa_mask);
	sa.sa_flags = SA_RESTART; /* Restart functions if
                                 interrupted by handler */
	if (sigaction(SIGUSR1, &sa, NULL) == -1)
	{
		perror("Could not install signal handler");
		exit(45);
	}
	printf("Signal handler installed\n");
}


void * init_verification_procedure(void * param)
{
	//set up the signal handler
	install_signal_handler();
	sem_post(&verification_sync_semaphore); //signal handler is installed. Release semaphore.
	verification_waiting_function();
}

void init_verification_procedure_thread()
{
	sem_init(&verification_sync_semaphore, 0, 0); //We need to make sure the thread has installed the signal handler before continuing
	pthread_create(&verification_procedure_thread,NULL,init_verification_procedure,NULL); //create the thread
	sem_wait(&verification_sync_semaphore); //and wait until the signal handler is installed
}


void free_heap_and_stack_memory()
{
	free_secure_mem(entire_memory_chunk);	
	free_secure_stack_mem(entire_stack_memory_chunk);
}

