#include <stdio.h>
#include <signal.h>
#include <stdlib.h>
#include <string.h>


long total_lines_read=0;
long total_reads=0;
long total_writes=0;
char* this_line=NULL;
char* name_of_bench=NULL;
char* name_of_fifo_to_read_from;
char const trace_str[] = "Line_for_trace->";

void USR1handler(int sig)
{
	signal(sig, SIG_IGN);
	fprintf(stderr,"total_lines_read=%ld | name_of_ benchmark=%s\n",total_lines_read,name_of_bench);
	signal(SIGUSR1, USR1handler);
}

int main(int argc, char* argv[])
{
	size_t len_to_read=2048;  //can't read more than that, but that should be enough.
	ssize_t getline_res;
	FILE* fifo_fp;
	
	signal(SIGUSR1, USR1handler);
		
	
	name_of_bench=argv[1];
	name_of_fifo_to_read_from=argv[2];
	fifo_fp=fopen(name_of_fifo_to_read_from,"r");

	this_line=malloc(4096);	
	
	
	while (1)
    {
		getline_res=getline(&this_line,&len_to_read,fifo_fp);
		if (getline_res==-1) break;
		
		if (0==memcmp(this_line,&trace_str[0],sizeof(trace_str)-1)) //starts with trace_str
		{
			total_lines_read++;
			printf("%s",this_line+sizeof(trace_str)-1);
		}
		else
		{
			fprintf(stderr,"%s",this_line);
		}
		
	}
	fclose(fifo_fp);
	return 0;
}


