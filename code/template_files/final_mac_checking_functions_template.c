#include "headers_needed.h"

#include "./crypto_algorithms/sha256.h"

//These functions verify the macs

void check_heap_macs()
{
	unsigned char *p;
	int error=0;
	
	unsigned char *start_of_heap=entire_memory_chunk;
	long size_of_heap=total_bytes_allocated;
	
	if (use_new_secure_heap)
	{
		start_of_heap=GET_GLOBAL_PTR(globals.secure_heap);
		size_of_heap=total_sheap_bytes_allocated;
	}
	p=start_of_heap;
		
	while (p<start_of_heap+size_of_heap)
	{
		if(!ignore_macs_even_if_there_are_mac_bytes && check_mac_for_error(p,bytes_for_useful_data+bytes_used_for_keyshares,bytes_for_useful_data))
		{	
			fprintf(stderr,"Error in heap macs, p=%ld, start of secure heap=%ld\n",(long) p,(long)start_of_heap);
			error=1;
		}
		p+=bytes_for_useful_data+bytes_used_for_keyshares+number_of_mac_bytes;
	}
	if (number_of_mac_bytes>0)
	{
		if (error==0)
		{
			if (total_bytes_allocated>0)
				fprintf(stderr,"All heap macs ok!\n");
			else
				fprintf(stderr,"No heap detected to check macs!\n");
		}
	}
	else
	{
		fprintf(stderr,"No heap macs to check!\n");
	}
	
}



void check_stack_macs()
{
	unsigned char *p=GET_GLOBAL_PTR(globals.entire_stack_memory_chunk);
	int error=0;
	
	while (p<(unsigned char*)GET_GLOBAL_PTR(globals.entire_stack_memory_chunk)+total_stack_bytes_allocated)
	{
		if (!ignore_macs_even_if_there_are_mac_bytes && check_mac_for_error(p,stack_bytes_for_useful_data+stack_bytes_used_for_keyshares,stack_bytes_for_useful_data))
		{	
			fprintf(stderr,"Error in stack macs, p=%ld, start of secure stack=%ld\n",(long) p,(long)GET_GLOBAL_PTR(globals.entire_stack_memory_chunk));
			error=1;
		}
		p+=stack_bytes_for_useful_data+stack_bytes_used_for_keyshares+number_of_mac_bytes;
	}
	if (number_of_mac_bytes>0)
	{
		if (error==0)
		{
			if (total_stack_bytes_allocated>0)
				fprintf(stderr,"All stack macs ok!\n");
			else
				fprintf(stderr,"No stack detected to check macs!\n");
		}
	}
	else
	{
		fprintf(stderr,"No stack macs to check!\n");
	}
	
}

extern char __executable_start;   //in order to find limits of .text section in ELF files.
extern char __etext;

void check_code_macs()
{
	long i,j;
	int bytes_for_instr_len=bytes_for_instructions_length;
	unsigned char *p;
	unsigned char* start_of_text=(unsigned char*)&__executable_start;  //we get the limits of .text section
	unsigned char* end_of_text=(unsigned char*)&__etext;
	int length_of_actual_data;
	int error=0;
	long mac_cnt=0;
	
	
	//using start and end of text section
	for (p=start_of_text;p<=end_of_text-(number_of_interleaved_keys+number_of_canaries+number_of_mac_bytes+bytes_for_instr_len+bytes_for_num_of_padded_nops_len);)
	{
		
		int number_of_jumped_bytes=number_of_interleaved_keys+number_of_canaries+number_of_mac_bytes+bytes_for_instr_len+bytes_for_num_of_padded_nops_len+get_number_of_padded_nops(p);
		if (*p==0xE9 && (*((int*)(p+1))==number_of_jumped_bytes) && check_next_canaries(p+size_of_jmp_command)) //JMP <number of keys>+<number_of_canaries>+<number_of_mac_bytes>+<bytes_for_instr_len>+<bytes_for_num_of_padded_nops_len>+<padded_nops>
		{ 
			mac_cnt++;
			length_of_actual_data=*((short*)(p+size_of_jmp_command+number_of_canaries));
			if (world==3 && check_code_mac_for_error(p-(length_of_actual_data-size_of_jmp_command),length_of_actual_data+number_of_interleaved_keys+number_of_canaries+bytes_for_instr_len+bytes_for_num_of_padded_nops_len+get_number_of_padded_nops(p),length_of_actual_data+number_of_canaries+bytes_for_instr_len+bytes_for_num_of_padded_nops_len+get_number_of_padded_nops(p)))
			{	
				fprintf(stderr,"Error in code macs, p=%ld, start of code=%ld\n",(long) p,(long)start_of_text);
				error=1;
			}
			p+=(number_of_interleaved_keys+number_of_canaries+number_of_mac_bytes+bytes_for_instr_len+bytes_for_num_of_padded_nops_len+get_number_of_padded_nops(p))+size_of_jmp_command; //jump over all the canaries,keys,macs
		}
		else
		{
			p++;
		}
	}
	if (error==0)
	{
		if (mac_cnt>0 && number_of_mac_bytes>0)
			fprintf(stderr,"All code macs ok! Number of macs:%ld\n",mac_cnt);
		else
			fprintf(stderr,"No mac groups to check in code!\n");
	}
	
}


void check_global_macs(); //implemented in functions_needed_footer.c, as it needs to take all globals into account
