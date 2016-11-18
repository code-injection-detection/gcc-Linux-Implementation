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


void verify_all_keyshares_from_file(unsigned char * keys_array)
{
	FILE *all_keyshares_file;
	int i;
	int error=0;
	unsigned char ret;
	
	all_keyshares_file=fopen("all_keyshares_for_verification","rb");
	if(all_keyshares_file==NULL)
	{
		perror("all_keyshares file opening error\n");
		exit(48);
	}
	
	for (i=0;i<number_of_interleaved_keys;i++)
	{
		if (feof(all_keyshares_file))
		{
			perror("All keyshares:Attempted to read more keyshares that the ones stored\n");
			exit(49);
		}
		//reads one byte
		if( fread(&ret,1,1,all_keyshares_file) != 1 )
		{
			perror("Did not read byte in fread(), for all keyshares\n");
			exit(50);
		}
		if (ret!=keys_array[i])
		{
			error=1;
			fprintf(stderr,"ERROR in all keyshares verification! Position:%d Keyshare at first:0x%02x, Keyshare now:0x%02x\n",i,keys_array[i],ret);
		}
	}
	if (error==0)
	{
		fprintf(stderr,"Keyshares ok!\n");
	}
	fclose(all_keyshares_file);
	
}


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




#include "memory_manager.c" //Including the C files because all the functions must be in the same file in order to be secured
#include "stack_manager.c"
#include "general_tests.c"

//some forward declarations (implemented in verification procedure)
void find_keyshares(int choice);
void install_signal_handler();
void * init_verification_procedure(void * param);
void init_verification_procedure_thread();


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



void free_heap_and_stack_memory()
{
	free_secure_mem(entire_memory_chunk);	
	free_secure_stack_mem(entire_stack_memory_chunk);
}

