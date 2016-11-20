#include "headers_needed.h"

#include "./crypto_algorithms/sha256.h"
#include "./crypto_algorithms/sha256.c"


void calculate_sha256_sum(char * input, long length, char * output)
{
	SHA256_CTX ctx;
	long i;
	long iterations;
	int last_size;
	
	sha256_init(&ctx);
	if (length % SHA256_BLOCK_SIZE ==0)
	{
		iterations=length/SHA256_BLOCK_SIZE;
		last_size=SHA256_BLOCK_SIZE;
	}
	else
	{
		iterations=length/SHA256_BLOCK_SIZE+1;
		last_size=length % SHA256_BLOCK_SIZE;
	}
	
	for (i=0;i<iterations;i++)
	{
		if (i==iterations-1)
		{
			sha256_update(&ctx, input+(i*SHA256_BLOCK_SIZE), last_size);
		}
		else
		{
			sha256_update(&ctx, input+(i*SHA256_BLOCK_SIZE), SHA256_BLOCK_SIZE);
		}
	}
	sha256_final(&ctx, output);
}


//truncates sha256sum to a size equal to the bytes reserved for the MAC
void truncate_sha256sum(char * input, char * output)
{
	int i;
	if (SHA256_BLOCK_SIZE>=number_of_mac_bytes)
	{
		memcpy(output,input,number_of_mac_bytes);		
	}
	else
	{
		memcpy(output,input,SHA256_BLOCK_SIZE);
		memset(output+SHA256_BLOCK_SIZE,0,number_of_mac_bytes-SHA256_BLOCK_SIZE);
	}
}

void calc_and_set_mac_of_data(char * input, long length, char * output)
{
	char shasum[SHA256_BLOCK_SIZE];
	
	calculate_sha256_sum(input,length,shasum);
	truncate_sha256sum(shasum,output);
}


void check_heap_macs()
{
	unsigned char *p=entire_memory_chunk;
	char shasum[SHA256_BLOCK_SIZE];
	char mac[number_of_mac_bytes];
	int error=0;
	
	while (p<entire_memory_chunk+total_bytes_allocated)
	{
		calculate_sha256_sum(p,bytes_for_useful_data+bytes_used_for_keyshares,shasum);
		truncate_sha256sum(shasum,mac);
		if (0!=memcmp(p+bytes_for_useful_data+bytes_used_for_keyshares,mac,number_of_mac_bytes))
		{	
			printf("Error in heap macs, p=%ld, start of secure heap=%ld\n",(long) p,(long)entire_memory_chunk);
			error=1;
		}
		p+=bytes_for_useful_data+bytes_used_for_keyshares+number_of_mac_bytes;
	}
	if (error==0)
	{
		printf("All heap macs ok!\n");
	}
	
}



void check_stack_macs()
{
	unsigned char *p=entire_stack_memory_chunk;
	char shasum[SHA256_BLOCK_SIZE];
	char mac[number_of_mac_bytes];
	int error=0;
	
	while (p<entire_stack_memory_chunk+total_stack_bytes_allocated)
	{
		calculate_sha256_sum(p,stack_bytes_for_useful_data+stack_bytes_used_for_keyshares,shasum);
		truncate_sha256sum(shasum,mac);
		if (0!=memcmp(p+stack_bytes_for_useful_data+stack_bytes_used_for_keyshares,mac,number_of_mac_bytes))
		{	
			printf("Error in stack macs, p=%ld, start of secure stack=%ld\n",(long) p,(long)entire_stack_memory_chunk);
			error=1;
		}
		p+=stack_bytes_for_useful_data+stack_bytes_used_for_keyshares+number_of_mac_bytes;
	}
	if (error==0)
	{
		printf("All stack macs ok!\n");
	}
	
}

extern char __executable_start;   //in order to find limits of .text section in ELF files.
extern char __etext;

void check_code_macs()
{
	long i,j;
	int bytes_for_instr_len=1;
	unsigned char *p;
	unsigned char* start_of_text=(unsigned char*)&__executable_start;  //we get the limits of .text section
	unsigned char* end_of_text=(unsigned char*)&__etext;
	char shasum[SHA256_BLOCK_SIZE];
	char mac[number_of_mac_bytes];
	int length_of_useful_data;
	int error=0;
	
	
	//using start and end of text section
	for (p=start_of_text;p<=end_of_text;)
	{
		if (*p==0xEB && *(p+1)==(number_of_interleaved_keys+number_of_canaries+number_of_mac_bytes+bytes_for_instr_len) && check_next_canaries(p+2)) //JMP <number of keys>+<number_of_canaries>+<number_of_mac_bytes>+<bytes_for_instr_len>
		{ 
			length_of_useful_data=*(p+2+number_of_canaries);
			calculate_sha256_sum(p-(length_of_useful_data-2),length_of_useful_data+number_of_interleaved_keys+number_of_canaries+bytes_for_instr_len,shasum);
			truncate_sha256sum(shasum,mac);
			if (0!=memcmp(p+2+number_of_interleaved_keys+number_of_canaries+bytes_for_instr_len,mac,number_of_mac_bytes))
			{	
				printf("Error in code macs, p=%ld, start of code=%ld\n",(long) p,(long)start_of_text);
				error=1;
			}
			p+=(number_of_interleaved_keys+number_of_canaries+number_of_mac_bytes+bytes_for_instr_len)+2; //jump over all the canaries,keys,macs
		}
		else
		{
			p++;
		}
	}
	if (error==0)
	{
		printf("All code macs ok!\n");
	}
	
}


void init_global_macs()
{
	//PLEASE PYTHON ADD CODE FOR GLOBAL MACS INITIALISATION
}

void check_global_macs()
{
	//PLEASE PYTHON ADD CODE FOR GLOBAL MACS VERIFICATION
}
