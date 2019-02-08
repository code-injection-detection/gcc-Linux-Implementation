#include <stdio.h>
#include <signal.h>
#include <stdlib.h>


long total_lines_read=0;
long total_reads=0;
long total_writes=0;
char* this_line=NULL;
char* name_of_bench=NULL;

void USR1handler(int sig)
{
	signal(sig, SIG_IGN);
	fprintf(stderr,"total_lines_read=%ld | name_of_ benchmark=%s\n",total_lines_read,name_of_bench);
	signal(SIGUSR1, USR1handler);
}

int main(int argc, char* argv[])
{
	size_t len_to_read=2048;  //can't read more than that, but that should be enough.
	signal(SIGUSR1, USR1handler);
		
	name_of_bench=argv[1];

	this_line=malloc(4096);	
	
	
	while (1)
    {
		getline(&this_line,&len_to_read,stdin);
		total_lines_read++;
		printf("%s",this_line);
		
	}
	return 0;
}


