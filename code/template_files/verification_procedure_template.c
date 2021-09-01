#include "headers_needed.h"


/*For the socket communication code thanks to Vangelis Koukis <vkoukis@cslab.ece.ntua.gr> */

/* Compile-time options */
#define TCP_PORT    42000
#define TCP_BACKLOG 5
#define BUFFER_SIZE 300
#define KEYOUT_BUFFER_SIZE 8192

/*Recognized commands by socket server*/
typedef enum commands {UNRECOGNIZED_CMD,VERIFY,CMD_ENUM_SIZE} verification_command;

/*Are those considered global variables?*/
extern char __executable_start;   //in order to find limits of .text section in ELF files.
extern char __etext;

extern char _init;
extern char _fini;

extern int foo(int);
extern int main();
extern int foo2(int);


struct sigaction sa; //for signal handling
pthread_t verification_procedure_thread;
sem_t verification_sync_semaphore; //for synchronizing the moment when the signal handler is installed



/* Convert a buffer to lowercase */
void tolower_buf(char *buf, size_t n)
{
	size_t i;

	for (i = 0; i < n; i++)
		buf[i] = tolower(buf[i]);
}


/* Insist until all of the data has been written */
ssize_t insist_write(int fd, const void *buf, size_t cnt)
{
	ssize_t ret;
	size_t orig_cnt = cnt;
	
	while (cnt > 0) 
	{
	        ret = write(fd, buf, cnt);
	        if (ret < 0)
	                return ret;
	        buf += ret;
	        cnt -= ret;
	}

	return orig_cnt;
}


//checks the next <number_of_canaries> to see if they hold the canary value
int check_next_canaries(void* p)
{
	int i;
	for (i=0;i<number_of_canaries;i++)
	{
		if ( *((unsigned char*)p+i)!=(unsigned char)(canary_value))
			return 0;
	}
	return 1;
}


/*This is the core function of the verification procedure*/
/*If the choice is -1, then the keyshares are output to the screen*/
/*If not, choice represents a socket descriptor where the output should be written to*/
void find_keyshares(int choice)
{
	int i,j,keycnt,k=0; 
	long a= (long)foo; //can work like that
	//long a2= &&foo_end;
	long b= (long)main;
	long c=(long)foo2;  
	long d=(long)find_keyshares;
	unsigned char* p;
	unsigned char keys[number_of_interleaved_keys];
	long fun_name;
	long heap_cnt;
	long stack_cnt;
	int bytes_for_instr_len=bytes_for_instructions_length;
	int type_of_bytes=0; //0->useful bytes, 1-> keyshares, 2->mac bytes
	char ret;
	char keyout_buffer[KEYOUT_BUFFER_SIZE];
	long place_in_keyout_buf=0;
	long code_key_groups_found=0;
	unsigned char * start_of_heap=entire_memory_chunk;
	long size_of_heap=total_bytes_allocated;

	unsigned char* start_of_text=(unsigned char*)&__executable_start;  //we get the limits of .text section
	unsigned char* end_of_text=(unsigned char*)&__etext;

	for (keycnt=0;keycnt<number_of_interleaved_keys;keycnt++)
	  keys[keycnt]=0x0;


	//start_of_text=(unsigned char*)&_init; //well their range seems to be a fraction of the __executable_start and __etext
	//end_of_text=(unsigned char*)&_fini;

	//printf("start of .text=0x%lx, end of .text=0x%lx, init=0x%lx, fini=0x%lx\n",(unsigned long)&__executable_start,(unsigned long)&__etext, (unsigned long)&_init,(unsigned long)&_fini);
   
	//using start and end of text section
	for (p=start_of_text;p<=end_of_text-(number_of_interleaved_keys+number_of_canaries+number_of_mac_bytes+bytes_for_instr_len+bytes_for_num_of_padded_nops_len);)
	{
		int number_of_jumped_bytes=number_of_interleaved_keys+number_of_canaries+number_of_mac_bytes+bytes_for_instr_len+bytes_for_num_of_padded_nops_len+get_number_of_padded_nops(p);
		if (*p==0xE9 && ( *((int*)(p+1))==number_of_jumped_bytes) && check_next_canaries(p+size_of_jmp_command)) //JMP <number of keys>+<number_of_canaries>+<number_of_mac_bytes>+<bytes_for_instr_len>+<bytes_for_num_of_padded_nops_len>+<padded_nops>
		{ 
			//printf("0x%02x ",*(p+1));
			code_key_groups_found++;
			for (keycnt=0;keycnt<number_of_interleaved_keys;keycnt++)
			{
				keys[keycnt]^= (unsigned char) *(p+size_of_jmp_command+keycnt+number_of_canaries+bytes_for_instr_len+bytes_for_num_of_padded_nops_len+get_number_of_padded_nops(p));
			}
			p+=(number_of_interleaved_keys+number_of_canaries+number_of_mac_bytes+bytes_for_instr_len+bytes_for_num_of_padded_nops_len+get_number_of_padded_nops(p))+size_of_jmp_command; //jump over all the canaries,keys,macs
		}
		else
		{
			p++;
		}
	}
	printf("Total key groups found in code:%ld\n",code_key_groups_found);

	if (use_new_secure_heap)
	{
		start_of_heap=(unsigned char*)GET_GLOBAL_PTR(globals.secure_heap);
		size_of_heap=total_sheap_bytes_allocated;
	}

	//taking into account the heap keys
	type_of_bytes=0;
	for (p=start_of_heap,heap_cnt=0;heap_cnt<size_of_heap;)
	{

		if (type_of_bytes==0) //useful
		{
			heap_cnt+=bytes_for_useful_data;
			type_of_bytes=1;
		}
		else if (type_of_bytes==1) //keys
		{
			//checking the keys
			for (keycnt=0;keycnt<number_of_interleaved_keys;keycnt++)
			{
				 keys[keycnt]^=(unsigned char) *(p+heap_cnt+keycnt);
			}

			heap_cnt+=bytes_used_for_keyshares;
			type_of_bytes=2;
		}
		else if (type_of_bytes==2) //macs
		{
			heap_cnt+=number_of_mac_bytes;
			type_of_bytes=0;
		}

	}

	//taking into account the stack keys
	type_of_bytes=0;
	for (p=(unsigned char*)GET_GLOBAL_PTR(globals.entire_stack_memory_chunk),stack_cnt=0;stack_cnt<total_stack_bytes_allocated;)
	{

		if (type_of_bytes==0) //useful
		{
			stack_cnt+=stack_bytes_for_useful_data;
			type_of_bytes=1;
		}
		else if (type_of_bytes==1) //keys
		{
			//checking the keys
			for (keycnt=0;keycnt<number_of_interleaved_keys;keycnt++)
			{
				keys[keycnt]^=(unsigned char) *(p+stack_cnt+keycnt);
			}

			stack_cnt+=stack_bytes_used_for_keyshares;
			type_of_bytes=2;
		}
		else if (type_of_bytes==2) //macs
		{
			stack_cnt+=number_of_mac_bytes;
			type_of_bytes=0;
		}

	}
	
	//taking into account the data segment keys (automatically, by the python script)
	//PLEASE PYTHON ADD CODE FOR GLOBAL KEYS VERIFICATION

	if (choice ==-1)
	{
		/*Output to the screen*/
		printf("\n");
		for (keycnt=0;keycnt<number_of_interleaved_keys;keycnt++)
		{
		   printf("key no%d=0x%02x\n",keycnt,keys[keycnt]);
		}
		printf("\n");
		verify_all_keyshares_from_file(keys);
	}
	else
	{
		/*Output to socket. Prepare buffer*/
		fprintf(stderr,"Verification requested by remote peer!\n");
		memset(keyout_buffer,0,KEYOUT_BUFFER_SIZE);
		place_in_keyout_buf=0;
		//BEWARE of overflows! I have set the buffer size to 8k, it should be enough.
		place_in_keyout_buf+=sprintf(keyout_buffer,"\n");
		for (keycnt=0;keycnt<number_of_interleaved_keys;keycnt++)
		{
		   place_in_keyout_buf+=sprintf(keyout_buffer+place_in_keyout_buf,"key no%d=0x%02x\n",keycnt,keys[keycnt]);
		}
		place_in_keyout_buf+=sprintf(keyout_buffer+place_in_keyout_buf,"\n");
		
		if (insist_write(choice, keyout_buffer, strlen(keyout_buffer)) != strlen(keyout_buffer)) 
		{
			perror("write to remote peer failed");
		}
		else
		{
			fprintf(stderr,"Sent data to remote peer.\n");
		}
	}

	return;
}



int process_buf(char * buf,size_t n)
{
	int i;
	tolower_buf(buf, n);
	if (strcmp(buf,"verify\n")==0)
	{
		return VERIFY;
	}
	else
	{
		return UNRECOGNIZED_CMD;
	}
}

void close_connection(int newsd)
{
	fprintf(stderr,"Closing connection.\n");
	if (close(newsd) < 0)
		perror("close");
}

void verification_procedure()
{
	fprintf(stderr,"\nVerification requested!\n");
	find_keyshares(-1);	
}


void verification_waiting_function()
{
	struct sockaddr_in sa;
	int sd, newsd;
	ssize_t n;
	socklen_t len;
	char buf[BUFFER_SIZE];
	char addrstr[INET_ADDRSTRLEN];
	verification_command cmd_received;
	
	/*Create a listening socket.*/
	
	/* Make sure a broken connection doesn't kill us */
	signal(SIGPIPE, SIG_IGN);
	
	/* Create TCP/IP socket, used as the main communication channel */
	if ((sd = socket(PF_INET, SOCK_STREAM, 0)) < 0) 
	{
		perror("socket");
		exit(1);
	}
	
	/* Bind to a well-known port. Its number is set above.*/
	memset(&sa, 0, sizeof(sa));
	sa.sin_family = AF_INET;
	sa.sin_port = htons(TCP_PORT);
	sa.sin_addr.s_addr = htonl(INADDR_ANY);
	if (bind(sd, (struct sockaddr *)&sa, sizeof(sa)) < 0) 
	{
		perror("BIND");
		exit(1);
	}
	
	if (listen(sd, TCP_BACKLOG) < 0) 
	{
		perror("listen");
		exit(1);
	}
	
	/* Loop forever, accept()ing connections */
	for (;;) 
	{
		/* Accept an incoming connection */
		len = sizeof(struct sockaddr_in);
		if ((newsd = accept(sd, (struct sockaddr *)&sa, &len)) < 0) 
		{
			perror("accept");
			exit(1);
		}
		if (!inet_ntop(AF_INET, &sa.sin_addr, addrstr, sizeof(addrstr))) 
		{
			perror("could not format IP address");
			exit(1);
		}
		fprintf(stderr, "\nIncoming connection from %s:%d\n",
			addrstr, ntohs(sa.sin_port));
	
		/*Send Hello message*/
		memset(buf,0,BUFFER_SIZE);
		strcpy(buf,"Hello. Write \"verify\" if you want to verify.\n"); //beware of buffer overflows! String length should less than the BUFFER_SIZE
		if (insist_write(newsd, buf, strlen(buf)) != strlen(buf)) 
		{
			perror("write to remote peer failed");
			close_connection(newsd);
			continue;
		}

		/*Read command*/
		memset(buf,0,BUFFER_SIZE);
		n = read(newsd, buf, sizeof(buf));
		if (n <= 0) 
		{
			if (n < 0)
				perror("read from remote peer failed");
			else
				fprintf(stderr, "Peer went away\n");
				
			close_connection(newsd);
			continue;
		}
		
		/*Process command*/
		cmd_received=process_buf(buf,n);
		
		if (cmd_received==VERIFY)
		{	
			/*Find the keyshares and send them to the peer*/
			find_keyshares(newsd);
		}
		else
		{
			fprintf(stderr,"Unrecognized command by remote peer.\n");
			memset(buf,0,BUFFER_SIZE);
			strcpy(buf,"Unrecognized command.\n"); //beware of buffer overflows! String length should less than the BUFFER_SIZE
			if (insist_write(newsd, buf, strlen(buf)) != strlen(buf)) 
			{
				perror("write to remote peer failed");
				close_connection(newsd);
				continue;
			}
		}
		
		/* Close the connection. */
		close_connection(newsd);
	}
		
	/* This will never happen */
	while (1) //wait for ever.
		sleep(1);
}

