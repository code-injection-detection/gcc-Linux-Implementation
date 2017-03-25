#include "headers_needed.h"

#include "./crypto_algorithms/sha256.h"
//#include "./crypto_algorithms/sha256.c" //not needed since we link with the object file

void check_heap_macs()
{
	unsigned char *p=entire_memory_chunk;
	int error=0;
	
	while (p<entire_memory_chunk+total_bytes_allocated)
	{
		if(!ignore_macs_even_if_there_are_mac_bytes && check_mac_for_error(p,bytes_for_useful_data+bytes_used_for_keyshares,bytes_for_useful_data))
		{	
			printf("Error in heap macs, p=%ld, start of secure heap=%ld\n",(long) p,(long)entire_memory_chunk);
			error=1;
		}
		p+=bytes_for_useful_data+bytes_used_for_keyshares+number_of_mac_bytes;
	}
	if (number_of_mac_bytes>0)
	{
		if (error==0)
		{
			if (total_bytes_allocated>0)
				printf("All heap macs ok!\n");
			else
				printf("No heap detected to check macs!\n");
		}
	}
	else
	{
		printf("No heap macs to check!\n");
	}
	
}



void check_stack_macs()
{
	unsigned char *p=entire_stack_memory_chunk;
	int error=0;
	
	while (p<entire_stack_memory_chunk+total_stack_bytes_allocated)
	{
		if (!ignore_macs_even_if_there_are_mac_bytes && check_mac_for_error(p,stack_bytes_for_useful_data+stack_bytes_used_for_keyshares,stack_bytes_for_useful_data))
		{	
			printf("Error in stack macs, p=%ld, start of secure stack=%ld\n",(long) p,(long)entire_stack_memory_chunk);
			error=1;
		}
		p+=stack_bytes_for_useful_data+stack_bytes_used_for_keyshares+number_of_mac_bytes;
	}
	if (number_of_mac_bytes>0)
	{
		if (error==0)
		{
			if (total_stack_bytes_allocated>0)
				printf("All stack macs ok!\n");
			else
				printf("No stack detected to check macs!\n");
		}
	}
	else
	{
		printf("No stack macs to check!\n");
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
	int length_of_useful_data;
	int error=0;
	long mac_cnt=0;
	
	
	//using start and end of text section
	for (p=start_of_text;p<=end_of_text;)
	{
		if (*p==0xEB && *(p+1)==(number_of_interleaved_keys+number_of_canaries+number_of_mac_bytes+bytes_for_instr_len+get_number_of_padded_nops(p)) && check_next_canaries(p+2)) //JMP <number of keys>+<number_of_canaries>+<number_of_mac_bytes>+<bytes_for_instr_len>
		{ 
			mac_cnt++;
			length_of_useful_data=*(p+2+number_of_canaries);
			if (!ignore_macs_even_if_there_are_mac_bytes && check_code_mac_for_error(p-(length_of_useful_data-2),length_of_useful_data+number_of_interleaved_keys+number_of_canaries+bytes_for_instr_len+get_number_of_padded_nops(p),length_of_useful_data+number_of_canaries+bytes_for_instr_len+get_number_of_padded_nops(p)))
			{	
				printf("Error in code macs, p=%ld, start of code=%ld\n",(long) p,(long)start_of_text);
				error=1;
			}
			p+=(number_of_interleaved_keys+number_of_canaries+number_of_mac_bytes+bytes_for_instr_len+get_number_of_padded_nops(p))+2; //jump over all the canaries,keys,macs
		}
		else
		{
			p++;
		}
	}
	if (error==0)
	{
		if (mac_cnt>0 && number_of_mac_bytes>0)
			printf("All code macs ok! Number of macs:%ld\n",mac_cnt);
		else
			printf("No mac groups to check in code!\n");
	}
	
}


void check_global_macs(); //implemented in functions_needed_footer.c, as it needs to take all globals into account
