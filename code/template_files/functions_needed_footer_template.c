#include "headers_needed.h"



void check_global_macs()
{
	//PLEASE PYTHON ADD CODE FOR GLOBAL MACS VERIFICATION
}


#include "verification_procedure.c" //verification procedure must be included last! No global variables should follow.

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
	sigset_t set;
	
	sem_init(&verification_sync_semaphore, 0, 0); //We need to make sure the thread has installed the signal handler before continuing
	pthread_create(&verification_procedure_thread,NULL,init_verification_procedure,NULL); //create the thread
	sigemptyset(&set);
	sigaddset(&set, SIGUSR1);
	pthread_sigmask(SIG_BLOCK, &set, NULL); //Make the main thread not accept SIGUSR1
	sem_wait(&verification_sync_semaphore); //wait until the signal handler is installed
}

