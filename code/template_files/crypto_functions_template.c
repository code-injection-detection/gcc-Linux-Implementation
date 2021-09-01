#include "headers_needed.h"

//the sha256 mac is implemented elsewhere
extern void calc_and_set_mac_of_data_sha256(char * input, long length, char * output);

EVP_CIPHER_CTX aes_ctx;
EVP_CIPHER_CTX stack_canary_aes_ctx;
//that's the aes key for AES-CBC. It is considered known to all
unsigned char aes_key[] = {42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57};
unsigned char stack_canary_aes_key[] = {58,59,60,61,43,44,45,46,47,48,49,50,51,52,53,54};
AES_KEY aes_enc_key;
unsigned char initialization_vector[]={0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};

CMAC_CTX *cmac_ctx;

BIGNUM bn_a;
BIGNUM bn_b; 
BIGNUM bn_temp;
BIGNUM bn_useful_data;
BIGNUM bn_mac;
BIGNUM *bn_2power128=NULL;
char str_2power128[]="340282366920938463463374607431768211456"; //2^128
BN_CTX *bn_ctx;
__uint128_t uint128_useful_bytes;
__uint128_t uint128_k1;
__uint128_t uint128_k2;
__uint128_t uint128_mac_bytes;
__uint128_t uint128_temp;
unsigned char mac_in_bytes[safe_length_for_buffer_storage];
unsigned char encrypted_data[safe_length_for_buffer_storage];
unsigned char mac_to_be_verified[number_of_mac_bytes];
unsigned char intermediate_buf_for_macing[safe_length_for_buffer_storage];
int length_of_encrypted_data;
size_t length_of_maced_data;
int tmplen;
long code_cache[num_of_cached_blocks_of_code]; //in here, the addresses of the blocks of code that are cached are stored.
int code_cache_latest_index; //for fully assosiateve code cache
int code_cache_slot_indexes_for_set_assosiative[(num_of_cached_blocks_of_code/code_cache_set_assosiative_size)];
long data_cache[num_of_cached_blocks_of_data]; //in here, the addresses of the blocks of code that are cached are stored.
unsigned char macs_in_data_cache[num_of_cached_blocks_of_data*number_of_mac_bytes]; //holds the mac bytes of the data cache, for them to be written back without recalculating
unsigned char data_cache_dirty_bits[num_of_cached_blocks_of_data];
int data_cache_slot_indexes_for_set_assosiative[(num_of_cached_blocks_of_data/data_cache_set_assosiative_size)];
int data_cache_latest_index; //for fully assosiateve data cache
unsigned char keys_temp_space[safe_length_for_buffer_storage];
char count_mac_invocations_in_this_code_part=0;
#define arr_sz_of_invocation_counters 31000
long long mac_size_invocation_counters[arr_sz_of_invocation_counters];
long address_of_start_of_previous_in_time_block=-1;
long address_in_current_block_before_verif;
long address_of_start_of_current_block;
int code_length_of_current_block;
int num_of_padded_nops_of_current_block;
long position_after_us_that_jmp_above_keyshares_macs_is;
int jump_offset_of_next_jmp;
long next_block_address_that_will_be_reached_with_the_jmp;

int block_index=0;
int total_blocks_of_code=0;
block_info blocks_metadata[good_enough_number_of_max_num_of_blocks];
block_info* current_block_metadata=NULL;
int current_block_index=-2;

unsigned short jmp_rax_opcode=0xe0ff; //2 bytes, reversed
unsigned short jmp_rbx_opcode=0xe3ff; //2 bytes, reversed
unsigned short jmp_rcx_opcode=0xe1ff; //2 bytes, reversed
unsigned short jmp_rdx_opcode=0xe2ff; //2 bytes, reversed

unsigned char first_byte_of_verif=0x9c; //pushf
unsigned char second_byte_of_verif=0xe8; //call
unsigned char last_byte_of_verif=0x9d; //popf

//when calculating cache on cpu-split code blocks
long addresses_of_cpu_split_blocks[40000]; 
int num_of_addresses_of_cpu_split_blocks=0;
FILE *cpu_split_block_addr_file;
long addr_of_first_block_of_code;
void find_addr_of_first_block_of_code();

//stack canaries variables
unsigned char stack_canaries_buffer_to_be_encrypted[safe_length_for_buffer_storage];


//called before everything else
void init_crypto_stuctures(int print, int find_addr_of_first_code_block)
{
	if (print)
		printf("Initializing crypto structures.\n");
	EVP_CIPHER_CTX_init(&aes_ctx);
	#if mac_algorithm==1
		EVP_EncryptInit_ex(&aes_ctx, EVP_aes_128_ecb(), NULL, aes_key, NULL);
		EVP_CIPHER_CTX_set_padding(&aes_ctx, 0); //disable padding
		BN_init(&bn_a);
		BN_init(&bn_b);
		BN_init(&bn_temp);
		BN_init(&bn_useful_data);
		BN_init(&bn_mac);
		BN_dec2bn(&bn_2power128,str_2power128);	
		bn_ctx=BN_CTX_new();
	#endif
	AES_set_encrypt_key(aes_key, 128, &aes_enc_key);
	#if mac_algorithm==2
		cmac_ctx = CMAC_CTX_new();
		CMAC_Init(cmac_ctx, aes_key, 16, EVP_aes_128_cbc(), NULL);
	#endif
	#if mac_algorithm==3 || mac_algorithm==4
		EVP_EncryptInit_ex(&aes_ctx, EVP_aes_128_cbc(), NULL, aes_key,initialization_vector);
		#if mac_algorithm==4 ||  set_as_given_that_everything_maced_will_be_fixed_and_multiple_of_16==1
			EVP_CIPHER_CTX_set_padding(&aes_ctx, 0); //disable padding
		#endif
	#endif
	memset(mac_in_bytes,0,safe_length_for_buffer_storage);
	memset(encrypted_data,0,safe_length_for_buffer_storage);
	memset(intermediate_buf_for_macing,0,safe_length_for_buffer_storage);
	if (number_of_mac_bytes>0)
	{
		memset(mac_to_be_verified,99,number_of_mac_bytes); //a value (99) that will result in error
		if (num_of_cached_blocks_of_code>0)
		{
			init_code_cache();
		}
		if (num_of_cached_blocks_of_data>0)
		{
			init_data_cache();
		}
	}
	#if count_mac_invocations==1
		int i;
		for (i=0;i<arr_sz_of_invocation_counters;i++)
			mac_size_invocation_counters[i]=0;
		count_mac_invocations_in_this_code_part=0;
	#endif
	if(use_code_cache_with_cpu_split_blocks /*always true*/ && find_addr_of_first_code_block)
	{
		cpu_split_block_addr_file=fopen("./addresses_of_cpu_split_blocks.txt","r");
		if (cpu_split_block_addr_file==NULL)
		{
			fprintf(stderr,"!!!!!!!!!!!!!!!!File addresses_of_cpu_split_blocks.txt not found!!!!!!!!!!!!!!!!!!!!!!\n");
		}
		else
		{
			//read the info for every block
			num_of_addresses_of_cpu_split_blocks=0;
			block_index=0;
			while (!feof(cpu_split_block_addr_file))
			{
				long start_of_block;
				int position_of_jmp;
				int num_of_actual_bytes;
				int num_padded_nops;
				int num_of_verifs;
				int ind_verif=0;
				int ret_of_fscanf;
								
				ret_of_fscanf=fscanf(cpu_split_block_addr_file,"%ld",&start_of_block);
				addresses_of_cpu_split_blocks[num_of_addresses_of_cpu_split_blocks]=start_of_block;
				blocks_metadata[block_index].address_of_block_start=start_of_block;
				
				ret_of_fscanf=fscanf(cpu_split_block_addr_file,"%d",&position_of_jmp);
				if (position_of_jmp==-100) //if it is that, break;
				{
					num_of_addresses_of_cpu_split_blocks++;
					block_index++;
					break;
				}
				blocks_metadata[block_index].position_of_jmp_to_next_block=position_of_jmp;
				
				ret_of_fscanf=fscanf(cpu_split_block_addr_file,"%d",&num_of_actual_bytes);
				blocks_metadata[block_index].num_of_actual_bytes_in_current_block=num_of_actual_bytes;
				ret_of_fscanf=fscanf(cpu_split_block_addr_file,"%d",&num_padded_nops);
				blocks_metadata[block_index].num_of_padded_nops=num_padded_nops;
				ret_of_fscanf=fscanf(cpu_split_block_addr_file,"%d",&num_of_verifs);
				blocks_metadata[block_index].number_of_verifications=num_of_verifs;
				
				blocks_metadata[block_index].verification_offsets=malloc(num_of_verifs*sizeof(int));
				for (ind_verif=0;ind_verif<num_of_verifs;ind_verif++)
				{
					ret_of_fscanf=fscanf(cpu_split_block_addr_file,"%d",&(blocks_metadata[block_index].verification_offsets[ind_verif]));
				}
								
				num_of_addresses_of_cpu_split_blocks++;
				block_index++;
	
			}//end of experimental declarations
			total_blocks_of_code=block_index;
			find_addr_of_first_block_of_code();
		}
	}
	
	if (print)
		printf("Crypto structures initialized.\n");
}

//half the array size by xor-ing
void squeeze_bytes_in_place(unsigned char * arr,int length_of_array)
{
	int i;
	for (i=0;i<length_of_array;i+=2)
	{
		arr[i]=arr[i]^arr[i+1];
	}
	for (i=0;i<length_of_array/2;i++)
	{
		arr[i]=arr[2*i];
	}
}


unsigned char stack_canary_result_opt[aes_block_length];
char stack_canary_aes_struct_has_been_initialized=0;
//This function does the hardware part of the stack canary calculation
//I.E. Calculates the hash of k1
//The MAC calculations that should be paid are paid in the unopt part
unsigned char * produce_stack_canary_optimized_part(unsigned char* position_of_block_in_stack)
{

	unsigned char * keyshares_start= position_of_block_in_stack+ stack_bytes_for_useful_data;
	int length_of_stack_canary_total_encryption;
	int stack_canary_tmplen;

	//init structure to calculate hash
	EVP_EncryptInit_ex(&stack_canary_aes_ctx, EVP_aes_128_cbc(), NULL, stack_canary_aes_key,initialization_vector);
	EVP_CIPHER_CTX_set_padding(&stack_canary_aes_ctx, 0); //disable padding
	
	if (stack_canary_aes_struct_has_been_initialized==0)
	{
		//init structure to calculate hash
		EVP_EncryptInit_ex(&stack_canary_aes_ctx, EVP_aes_128_cbc(), NULL, stack_canary_aes_key,initialization_vector);
		EVP_CIPHER_CTX_set_padding(&stack_canary_aes_ctx, 0); //disable padding
	}
	else
	{
		EVP_EncryptInit_ex(&stack_canary_aes_ctx,NULL,NULL,NULL,NULL);
	}
	
	//calc the hash
	EVP_EncryptUpdate(&stack_canary_aes_ctx, stack_canary_result_opt, &length_of_stack_canary_total_encryption,keyshares_start, aes_block_length);
	EVP_EncryptFinal_ex(&stack_canary_aes_ctx, stack_canary_result_opt + length_of_stack_canary_total_encryption, &stack_canary_tmplen);
	length_of_stack_canary_total_encryption+=stack_canary_tmplen;
	
	return &stack_canary_result_opt[0];
}


extern char __executable_start;   //in order to find limits of .text section in ELF files.
extern char __etext;
//checks the next <number_of_canaries> from position p to see if they hold the canary value
int check_the_next_canaries(void* p)
{
	int i;
	for (i=0;i<number_of_canaries;i++)
	{
		if ( *((unsigned char*)p+i)!=(unsigned char)(canary_value))
			return 0;
	}
	return 1;
}


//when using the cpu_split blocks of code, we have to find the address of the
//first secured part of the code
void find_addr_of_first_block_of_code()
{
	unsigned char *p;
	unsigned char* start_of_text=(unsigned char*)&__executable_start;  //we get the limits of .text section
	unsigned char* end_of_text=(unsigned char*)&__etext;
	int bytes_for_instr_len=bytes_for_instructions_length;
	int fixed_size_verif_overhead=overhead_of_verif;
	
	for (p=start_of_text;p<=end_of_text;p++)
	{
		int number_of_jumped_bytes=number_of_interleaved_keys+number_of_canaries+number_of_mac_bytes+bytes_for_instr_len+bytes_for_num_of_padded_nops_len+get_number_of_padded_nops(p);
		//the first address can be found by finding the first jmp and its canaries
		if (*p==0xE9 && (*((int*)(p+1))==number_of_jumped_bytes) && check_the_next_canaries(p+size_of_jmp_command)) //JMP <number of keys>+<number_of_canaries>+<number_of_mac_bytes>+<bytes_for_instr_len>+<bytes_for_num_of_padded_nops_len>+<padded_nops>
		{
			int length_of_actual_data=*((short*)(p+size_of_jmp_command+number_of_canaries));
			addr_of_first_block_of_code=(long) (p-(length_of_actual_data-size_of_jmp_command));
			break;
		}
	}
}

#define addr_in_code_as_offset_of_fist_block_addr(index) (addresses_of_cpu_split_blocks[index]+addr_of_first_block_of_code)
//given a code address ,we want to find when this address would fall in, should the code blocks
//were not split. We do this by searching the array
int find_addr_in_cpu_split_blocks_addresses(unsigned char * address) //binary search!
{
	int first=0;
	int last=num_of_addresses_of_cpu_split_blocks-1;
	int middle=(first+last)/2;
	int iter=0;
	long addr=(long)address;
	
	if (num_of_addresses_of_cpu_split_blocks==0)
	{
		fprintf(stderr,"Why is num_of_addresses_of_cpu_split_blocks 0?\n");
		return -1;
	}
	
	if (addr>addr_in_code_as_offset_of_fist_block_addr(last))
		return last;
		
	while (first < last-1) 
	{
		if (addr_in_code_as_offset_of_fist_block_addr(middle) < addr)
			first = middle;    
		else if (addr_in_code_as_offset_of_fist_block_addr(middle) == addr) 
		{
			return middle;
		}
		else
			last = middle;

		middle = (first + last)/2;
	}
	if (addr>=addr_in_code_as_offset_of_fist_block_addr(last))
		return last;
	if (addr>=addr_in_code_as_offset_of_fist_block_addr(first))
		return first;
	else
	{
		fprintf(stderr,"ERROR in binary search!!\n");
		fprintf(stderr,"addr=%ld, currently first addr=%ld\n",(long)addr,(long)addr_in_code_as_offset_of_fist_block_addr(first));
		fprintf(stderr,"globally first addr=%ld\n",(long)addr_in_code_as_offset_of_fist_block_addr(0));
		return -1;
	}
}

block_info* find_metadata_of_a_block(unsigned char * address) //an address thet is in the block. Binary search.
{
	int block_ind;
	
	block_ind=find_addr_in_cpu_split_blocks_addresses(address);
	current_block_index=block_ind;
	if (block_ind==-1)
		return NULL;
	else
		return (&(blocks_metadata[block_ind]));
}


//depending on the algorithm, the correct function is called
void calc_and_set_mac_of_data(unsigned char *input,int length_all,int length_useful,unsigned char *output)
{
#if squeeze_keys_when_macing==1
	#if count_mac_invocations==1
		if (count_mac_invocations_in_this_code_part)
		{
			//fprintf(stdout,"\nMac Invocation: length_all=%d\n",length_all-number_of_interleaved_keys/2); 
			mac_size_invocation_counters[length_all-number_of_interleaved_keys/2]+=1;
		}
	#endif
		//save the keys and squeeze them
		memcpy(keys_temp_space,(unsigned char*)(input)+(int)((length_all)-number_of_interleaved_keys),number_of_interleaved_keys);
		squeeze_bytes_in_place((unsigned char*)(input)+(int)((length_all)-number_of_interleaved_keys),number_of_interleaved_keys);
	#if mac_algorithm==0
		calc_and_set_mac_of_data_sha256((input),(length_all)-number_of_interleaved_keys/2,(output));
	#endif
	#if mac_algorithm==1
		calc_and_set_mac_of_data_aes_ecb((input),(length_all),(length_all)-number_of_interleaved_keys,(output)); //use full length
	#endif
	#if mac_algorithm==2
		calc_and_set_mac_of_data_aes_cmac((input),(length_all)-number_of_interleaved_keys/2,(output));
	#endif
	#if mac_algorithm==3
		calc_and_set_mac_of_data_aes_cbc((input),(length_all)-number_of_interleaved_keys/2,(output));
	#endif
	#if mac_algorithm==4
		calc_and_set_mac_of_data_aes_cbc((input),(length_all)-number_of_interleaved_keys/2,(output));
	#endif
	#if mac_algorithm==5
		calc_and_set_mac_of_data_mac_wk1_plus_k2((input),(length_all),(length_all)-number_of_interleaved_keys,(output)); //use full length
	#endif
	#if mac_algorithm==7
		calc_and_set_mac_of_data_echo_hash_256_of_all((input),(length_all)-number_of_interleaved_keys/2,(output));
	#endif
		//restore the keys
		memcpy((unsigned char*)(input)+(int)((length_all)-number_of_interleaved_keys),keys_temp_space,number_of_interleaved_keys);
#else
	#if count_mac_invocations==1
		if (count_mac_invocations_in_this_code_part)
		{
			//fprintf(stdout,"\nMac Invocation: length_all=%d\n",length_all);
			mac_size_invocation_counters[length_all]+=1;
		}
	#endif
	#if mac_algorithm==0
		calc_and_set_mac_of_data_sha256((input),(length_all),(output));
	#endif
	#if mac_algorithm==1
		calc_and_set_mac_of_data_aes_ecb((input),(length_all),(length_all)-number_of_interleaved_keys,(output));
	#endif
	#if mac_algorithm==2
		calc_and_set_mac_of_data_aes_cmac((input),(length_all),(output));
	#endif
	#if mac_algorithm==3
		calc_and_set_mac_of_data_aes_cbc((input),(length_all),(output));
	#endif
	#if mac_algorithm==4
		calc_and_set_mac_of_data_aes_cbc((input),(length_all),(output));
	#endif
	#if mac_algorithm==5
		calc_and_set_mac_of_data_mac_wk1_plus_k2((input),(length_all),(length_all)-number_of_interleaved_keys,(output));
	#endif
	#if mac_algorithm==7
		calc_and_set_mac_of_data_echo_hash_256_of_all((input),(length_all),(output));
	#endif

#endif
}

/*********************************************************************************/
/****************************** AES ECB ******************************************/
/*********************************************************************************/


void calc_mac_aes_ecb(unsigned char *useful_data, int length_in_bytes_useful)
{
	if (number_of_mac_bytes>0 && world==3 && !ignore_macs_last_moment_even_if_there_are_mac_bytes)
	{
		BN_bin2bn(encrypted_data,(length_of_encrypted_data/2),&bn_a);
		BN_bin2bn(((unsigned char*)encrypted_data)+(length_of_encrypted_data/2),(length_of_encrypted_data/2),&bn_b);
		BN_bin2bn(useful_data,length_in_bytes_useful,&bn_useful_data);
		BN_mod_mul(&bn_temp,&bn_useful_data,&bn_a,bn_2power128,bn_ctx);
		BN_mod_add(&bn_mac,&bn_temp,&bn_b,bn_2power128,bn_ctx);		
	}
}

void set_mac_aes_ecb(unsigned char * output)
{
	int length_of_mac;

	if (number_of_mac_bytes>0 &&  world==3 && !ignore_macs_last_moment_even_if_there_are_mac_bytes)
	{
		length_of_mac=BN_num_bytes(&bn_mac);
		if(length_of_mac<len_2power128-1)
		{
			memset(mac_in_bytes,0,(len_2power128-1-length_of_mac));
		}
		BN_bn2bin(&bn_mac,((unsigned char*)mac_in_bytes)+(len_2power128-1-length_of_mac));
		length_of_mac=len_2power128-1; //new length
		if(length_of_mac>=number_of_mac_bytes)
		{
			memcpy(output,mac_in_bytes,number_of_mac_bytes);
		}
		else
		{
			memcpy(output,mac_in_bytes,length_of_mac);
			memset(((unsigned char*)output)+(length_of_mac),0,number_of_mac_bytes-length_of_mac);
		}
	}
}

void encrypt_aes_ecb(unsigned char *buf_to_be_encrypted,int len_of_buf)
{
	if (number_of_mac_bytes>0 &&  world==3 && !ignore_macs_last_moment_even_if_there_are_mac_bytes)
	{
		EVP_EncryptInit_ex(&aes_ctx, NULL, NULL, NULL, NULL);
		if(!EVP_EncryptUpdate(&aes_ctx, encrypted_data, &length_of_encrypted_data,buf_to_be_encrypted, len_of_buf)) 
		{
			fprintf(stderr,"Error in EncryptUpdate\n");
		}
		if(!EVP_EncryptFinal_ex(&aes_ctx, encrypted_data + length_of_encrypted_data, &tmplen))
		{
			fprintf(stderr,"Error in EncryptFinal!!!!!!\n");
		}
		if (tmplen!=0)
		{
			printf("tmplen is !=0!\n");
			exit(1);
		}
		length_of_encrypted_data+=tmplen;
	}
	
}


void calc_and_set_mac_of_data_aes_ecb(char * input, int length_of_all,int length_of_useful, char * output)
{
	if (number_of_mac_bytes>0 &&  world==3 && !ignore_macs_last_moment_even_if_there_are_mac_bytes)
	{
#if count_mac_invocations==1
		memset(output,0,number_of_mac_bytes); //ignore proper mac calculation, just make them 0
#else
		encrypt_aes_ecb((unsigned char*)(input)+length_of_useful,length_of_all-length_of_useful);
		calc_mac_aes_ecb(input, length_of_useful);
		set_mac_aes_ecb(output);
#endif
	}
}





/*************************************************************************************/
/*********************************** CMAC (AES) **************************************/
/*************************************************************************************/

void set_mac_aes_cmac(unsigned char * output)
{
	int length_of_mac=16; //128 bits=16 bytes
	if (length_of_maced_data!=length_of_mac)
	{
		printf("Error!: Lengths of MACs are different! %ld\n",length_of_maced_data);
	}
	
	if(length_of_mac>=number_of_mac_bytes)
		{
			memcpy(output,mac_in_bytes,number_of_mac_bytes);
		}
		else
		{
			memcpy(output,mac_in_bytes,length_of_mac);
			memset(((unsigned char*)output)+(length_of_mac),0,number_of_mac_bytes-length_of_mac);
		}
}


void calc_mac_aes_cmac(char * input, int length_of_all)
{
	CMAC_Update(cmac_ctx, input,length_of_all);
	CMAC_Final(cmac_ctx, mac_in_bytes, &length_of_maced_data);
	CMAC_Init(cmac_ctx, aes_key, 16, EVP_aes_128_cbc(), NULL);
}


void calc_and_set_mac_of_data_aes_cmac(char * input, int length_of_all, char * output)
{
	if (number_of_mac_bytes>0 &&  world==3 && !ignore_macs_last_moment_even_if_there_are_mac_bytes)
	{
#if count_mac_invocations==1
		memset(output,0,number_of_mac_bytes); //ignore proper mac calculation, just make them 0
#else
		calc_mac_aes_cmac(input,length_of_all);
		set_mac_aes_cmac(output);
#endif
	}
}


/*************************************************************************************/
/*********************************** AES CBC *****************************************/
/*************************************************************************************/


void encrypt_aes_cbc(unsigned char *buf_to_be_encrypted,int len_of_buf)
{
	int i;
	if (number_of_mac_bytes>0 && world==3 &&  !ignore_macs_last_moment_even_if_there_are_mac_bytes)
	{
		
		EVP_EncryptInit_ex(&aes_ctx, NULL, NULL, NULL, NULL);
		EVP_EncryptUpdate(&aes_ctx, encrypted_data, &length_of_encrypted_data,buf_to_be_encrypted, len_of_buf);
		EVP_EncryptFinal_ex(&aes_ctx, encrypted_data + length_of_encrypted_data, &tmplen);
		length_of_encrypted_data+=tmplen;
		/*
		 if ((len_of_buf%16==0 || len_of_buf%16==1) && rand()%1000000==0)  //just printing some times
			fprintf(stderr,"length_of_encrypted_data:%d\n",length_of_encrypted_data);
		*/
		
		/*
		//another version that is slower (it's software) and has the length wrong
		AES_cbc_encrypt(buf_to_be_encrypted, encrypted_data, len_of_buf, &aes_enc_key,initialization_vector, AES_ENCRYPT);
		if (len_of_buf%16==0)
			length_of_encrypted_data=len_of_buf+16; //length is wrong
		else
			length_of_encrypted_data=(len_of_buf/16)*16 + 16;
		*/
	}	
}


void set_mac_aes_cbc(unsigned char * output)
{
	int length_of_mac=aes_block_length; //128 bits=16 bytes

	if(length_of_mac>=number_of_mac_bytes)
		{
			memcpy(output,encrypted_data+length_of_encrypted_data-aes_block_length,number_of_mac_bytes);
		}
		else
		{
			memcpy(output,encrypted_data+length_of_encrypted_data-aes_block_length,length_of_mac);
			memset(((unsigned char*)output)+(length_of_mac),0,number_of_mac_bytes-length_of_mac);
		}
}

int prepend_length_aes_cbc(char * input,int length)
{
	char char_length;
	int len_padded;
	char num_of_zeros_to_pad_up_to_full_block;
	int number_above_full_block;
	

	if (length<=255) //practically always happens
	{
		char_length=(char)length; //prepend a byte
		len_padded=sizeof(char);
		memcpy(intermediate_buf_for_macing,&char_length,len_padded);
		#if mac_algorithm==4
			number_above_full_block=(length+sizeof(char))%aes_block_length;
			if (number_above_full_block!=0)
			{
				num_of_zeros_to_pad_up_to_full_block=aes_block_length-number_above_full_block;
				//pad with zeros after the length
				memset(intermediate_buf_for_macing+len_padded,0,num_of_zeros_to_pad_up_to_full_block);
				len_padded+=num_of_zeros_to_pad_up_to_full_block;
			}
		#endif
		memcpy(intermediate_buf_for_macing+len_padded,input,length);
		return (len_padded);
	}
	else
	{
		len_padded=sizeof(int); //prepend four bytes
		memcpy(intermediate_buf_for_macing,&length,len_padded);
		#if mac_algorithm==4
			number_above_full_block=(length+sizeof(int))%aes_block_length;
			if (number_above_full_block!=0)
			{
				num_of_zeros_to_pad_up_to_full_block=aes_block_length-number_above_full_block;
				//pad with zeros after the length
				memset(intermediate_buf_for_macing+len_padded,0,num_of_zeros_to_pad_up_to_full_block);
				len_padded+=num_of_zeros_to_pad_up_to_full_block;
			}
		#endif
		memcpy(intermediate_buf_for_macing+len_padded,input,length);
		return (len_padded);
	}	
}

void calc_and_set_mac_of_data_aes_cbc(char * input, int length_of_all, char * output)
{
	int len_padded;
	if (number_of_mac_bytes>0 &&  world==3 && !ignore_macs_last_moment_even_if_there_are_mac_bytes)
	{
#if count_mac_invocations==1
		memset(output,0,number_of_mac_bytes); //ignore proper mac calculation, just make them 0
#else
		#if set_as_given_that_everything_maced_will_be_fixed_and_multiple_of_16==0
			len_padded=prepend_length_aes_cbc(input,length_of_all);
			encrypt_aes_cbc(intermediate_buf_for_macing,length_of_all+len_padded);
		#else
			encrypt_aes_cbc(input,length_of_all);
		#endif
		set_mac_aes_cbc(output);
#endif
	}
}

/*********************************************************************************/
/************************* INSECURE MAC=x*K1+K2 **********************************/
/*********************************************************************************/

//https://stackoverflow.com/questions/40795501/how-can-i-multiply-two-hex-128-bit-numbers-in-assembly
__uint128_t mul128(__uint128_t a, __uint128_t b) { return a*b; }

void calc_and_set_mac_of_data_mac_wk1_plus_k2(char * input, int length_of_all,int length_of_useful, char * output)
{
	if (number_of_mac_bytes>0 &&  world==3 && !ignore_macs_last_moment_even_if_there_are_mac_bytes)
	{
#if count_mac_invocations==1
		memset(output,0,number_of_mac_bytes); //ignore proper mac calculation, just make them 0
#else
		#if set_as_given_that_everything_maced_will_be_fixed_and_multiple_of_16==0
			fprintf(stderr,"Sorry, this MAC scheme needs everything to be a multiple of 16\n");
			exit(-1);
		#endif
		if (length_of_all<48 || length_of_useful<16)
		{
			fprintf(stderr,"Sorry, this MAC scheme needs length_of_all>=48 and length_of_useful>=16\n");
			exit(-1);
		}
		uint128_useful_bytes=*((__uint128_t *)((unsigned char*)(input)+length_of_useful-16)); //grabbing the 16 bytes only is not secure
		uint128_k1=*((__uint128_t *)((unsigned char*)(input)+length_of_useful));
		uint128_k2=*((__uint128_t *)((unsigned char*)(input)+length_of_useful+(length_of_all-length_of_useful)/2));
		uint128_temp=mul128(uint128_useful_bytes,uint128_k1)+uint128_k2;
		memcpy(output,&uint128_temp,number_of_mac_bytes);
#endif
	}
}

/*********************************************************************************/
/********************** ECHO_HASH256(x||keyshares) *******************************/
/*********************************************************************************/
char output_of_echo_hash[32];
void calc_and_set_mac_of_data_echo_hash_256_of_all(char * input, int length_of_all, char * output)
{
	ECHO_HASH_256(input,length_of_all*8,output_of_echo_hash);
	memcpy(output,output_of_echo_hash,number_of_mac_bytes);
}






void clear_crypto_structures()
{
	EVP_CIPHER_CTX_cleanup(&aes_ctx);
	EVP_CIPHER_CTX_cleanup(&stack_canary_aes_ctx);
	#if mac_algorithm==1
		//are these safe?
		/*
		BN_free(&bn_a);
		BN_free(&bn_b);
		BN_free(&bn_temp);
		BN_free(&bn_useful_data);
		BN_free(&bn_mac);
		*/
		BN_free(bn_2power128);
		BN_CTX_free(bn_ctx);
	#endif
	#if mac_algorithm==2
		CMAC_CTX_free(cmac_ctx);
	#endif
	#if count_mac_invocations==1
		int i;
		for (i=0;i<arr_sz_of_invocation_counters;i++)
		{
			if (mac_size_invocation_counters[i]>0)
				fprintf(stdout,"\nMac invocation, length:%d, number:%Ld\n",i,mac_size_invocation_counters[i]);
		}
	#endif
}

int check_mac_for_error(unsigned char * input, int total_mac_bytes, int useful_mac_bytes)
{
	int error=0;
	if (number_of_mac_bytes>0 &&  world==3 &&  !ignore_macs_last_moment_even_if_there_are_mac_bytes)
	{
		calc_and_set_mac_of_data(input,total_mac_bytes,useful_mac_bytes,mac_to_be_verified);
		if (0!=memcmp(input+total_mac_bytes,mac_to_be_verified,number_of_mac_bytes))
		{	
			error=1;
		}
	}
	return error;
}

int get_number_of_padded_nops(unsigned char *p)
{
	if (*p!=0xE9)
	{
		return 0;
	}
	else
	{
		return (*((short*)(p+size_of_jmp_command+number_of_canaries+bytes_for_instructions_length)));
	}
}

unsigned char new_stuff_in_code_to_be_MACed[40024];
#if use_fixed_size_chunks_of_code==1
	#define size_of_commands_before_getting_addr ((overhead_of_verif)-1) //the size in bytes of the assembly commands before fetching the current address( to reach the start of the mac-ed block)
#endif

//obsolete
#if use_fixed_size_chunks_of_code==0  //OBSOLETE
	#define size_of_commands_before_getting_addr (13) //the size in bytes of the assembly commands before fetching the current address( to reach the start of the mac-ed block)
#endif


//checks if in front of us, there seems to be a mac verification call
int in_front_there_seems_to_be_verif_call(unsigned char* position)
{
	//specific to our implementation, verification is: pushfq, call verif_procedure, popfq
	
	if (position[0]==first_byte_of_verif && position[1]==second_byte_of_verif && position[overhead_of_verif-1]==last_byte_of_verif)
		return 1;
	else
		return 0;
}

long set_block_metadata_and_return_addr_of_start(unsigned char * addr_in_the_middle)
{
	block_info* temp_block_metadata_cur;
	block_info* temp_block_metadata_nxt;
	block_info* temp_block_metadata_nxt2;
	int we_are_in_cur_block_again=0;
	int we_are_in_next_block=0;
	int offset_of_our_verification_from_the_block_start;
	int verif_offset_is_found=0;
	int i;

	//binary search in the array of block info and get the data about the blocks that we need from there.
	if (current_block_index!=-2 && current_block_index<total_blocks_of_code-2) //if it's not the first block ever (current==-2) and we have a next block
	{
		//we probably are in the same block or in the next block...
		temp_block_metadata_cur=&(blocks_metadata[current_block_index]);
		temp_block_metadata_nxt=&(blocks_metadata[current_block_index+1]);
		temp_block_metadata_nxt2=&(blocks_metadata[current_block_index+2]);

		if ((long)addr_in_the_middle >= temp_block_metadata_cur->address_of_block_start+addr_of_first_block_of_code 
			&& (long)addr_in_the_middle < temp_block_metadata_nxt->address_of_block_start+addr_of_first_block_of_code)
		{
			//we are in the same block
			we_are_in_cur_block_again=1;
		}
		else if ((long)addr_in_the_middle >= temp_block_metadata_nxt->address_of_block_start+addr_of_first_block_of_code 
				 && (long)addr_in_the_middle < temp_block_metadata_nxt2->address_of_block_start+addr_of_first_block_of_code)
		{
			//we are in the next block
			we_are_in_next_block=1;
			current_block_index++;
			current_block_metadata=&(blocks_metadata[current_block_index]);
		}
	}

	
	if (we_are_in_cur_block_again==0 && we_are_in_next_block==0) //not found, do binary search
	{
		current_block_metadata=find_metadata_of_a_block(addr_in_the_middle);
	}
	//update the values
	code_length_of_current_block=current_block_metadata->num_of_actual_bytes_in_current_block;
	num_of_padded_nops_of_current_block=current_block_metadata->num_of_padded_nops;
	position_after_us_that_jmp_above_keyshares_macs_is=  (code_length_of_current_block-size_of_jmp_command)- (  (long)addr_in_the_middle-((long)current_block_metadata->address_of_block_start+addr_of_first_block_of_code )  );
	jump_offset_of_next_jmp=(int)  *((int*)(&addr_in_the_middle[position_after_us_that_jmp_above_keyshares_macs_is+1]));
	
	#if 0
		//uncomment if you want to check that the search for blocks was correct
		//check if current address is in the know verification positions of this block. if it is not, error
		offset_of_our_verification_from_the_block_start=(long)addr_in_the_middle-((long)current_block_metadata->address_of_block_start+addr_of_first_block_of_code );
		for (i=0;i<current_block_metadata->number_of_verifications;i++)
		{
			if (offset_of_our_verification_from_the_block_start==current_block_metadata->verification_offsets[i])
			{
				verif_offset_is_found=1;
				break;
			}
		}
		if (verif_offset_is_found==0)
		{
			fprintf(stderr,"ERROR:we are in a verification that is not found in the known ones!\n");
			fprintf(stderr,"That probably means that our block search was wrong!\n");
			fprintf(stderr,"Address_of_verif:%ld, current_block_index:%d, block_start_addr=%ld\n",(long)addr_in_the_middle,current_block_index,(long)current_block_metadata->address_of_block_start+addr_of_first_block_of_code);
			exit(-2);
		}
	#endif
		
	return ((long)current_block_metadata->address_of_block_start+addr_of_first_block_of_code);
}

//disable optimizations temporarily, for stability reasons
#pragma GCC push_options
#pragma GCC optimize ("O0")
int check_code_mac_for_error(unsigned char * input, int total_mac_bytes, int useful_mac_bytes)
{
	int error=0;
	unsigned char * true_input;
	int true_total_mac_bytes;
	int true_useful_mac_bytes;
	int i;
	int actual_code_length;
	int useful_code_length;
	if (number_of_mac_bytes>0 && world==3 && !ignore_macs_last_moment_even_if_there_are_mac_bytes)
	{

		//we are not macing the on-the-fly verification code, the jmps, tha canaries, the bytes_for_instr and the bytes_for_num_of_padded_nops
		int length_of_verifier=size_of_commands_before_getting_addr+1; //the final pop command
		if (world==2)
			length_of_verifier=0;
		
		//now let's find the actual code length. It will be in 2 bytes, set after the canaries. It holds the bytes for the code <verifiers+proper code+jmp>
		//find it again, it is possible (final check_code_macs() call) that code_length_of_current_block and num_of_padded_nops_of_current_block have not been set.
		int code_length=0;
		int num_of_padded_nops=0;
		
		//search for the jmp with the canaries, in order to get the code length and the padded nops
		for (i=0;i<=useful_mac_bytes;i++)
		{
			if (input[i]==0xE9 /*jmp opcode*/ && check_the_next_canaries((char*) &input[i+size_of_jmp_command]))
			{
				code_length=(int) *((short*) &input[i+size_of_jmp_command+number_of_canaries]);
				num_of_padded_nops=(int) *((short*) &input[i+size_of_jmp_command+number_of_canaries+bytes_for_instructions_length]);
				break;
			}
		}
		
		if (code_length==0)
		{
			fprintf(stderr,"Did not find the jmp opcode with the canaries when calculating mac.\n");
			fprintf(stderr,"Position:%ld\n",(long)input);
		}
		
		/*
		printf("total mac bytes:%d\n",total_mac_bytes);
		printf("useful mac bytes:%d\n",useful_mac_bytes);
		printf("code length:%d\n",code_length);
		printf("num_of_padded_nops:%d\n",num_of_padded_nops);
		*/
		
		int cnt_in_new_mac=0;
		int verifications_found=0;
		int actual_useful_bytes=0;
		//throw away what we've put in the code (verifiers,jmp etc)
		for (i=0;i<code_length-size_of_jmp_command;)
		{
			if (in_front_there_seems_to_be_verif_call(&input[i]))
			{
				i+=overhead_of_verif;
				verifications_found++;
			}
			else
			{
				new_stuff_in_code_to_be_MACed[cnt_in_new_mac]=input[i];
				i++;
				cnt_in_new_mac++;
			}
		}
		actual_useful_bytes=cnt_in_new_mac;
		
		if ((code_length-size_of_jmp_command) -verifications_found*(overhead_of_verif) != actual_useful_bytes)
		{
			fprintf(stdout,"Did not find the correct number of verifications that we expected.\n");
			fprintf(stdout,"Position:%ld\n",(long)input);
			fprintf(stdout,"total mac bytes:%d\n",total_mac_bytes);
			fprintf(stdout,"useful mac bytes:%d\n",useful_mac_bytes);
			fprintf(stdout,"code length:%d\n",code_length);
			fprintf(stdout,"num_of_padded_nops:%d\n",num_of_padded_nops);
			fprintf(stdout,"verifications expected:%d\n",((code_length-size_of_jmp_command)-actual_useful_bytes)/overhead_of_verif);
			fprintf(stdout,"verifications found:%d\n",verifications_found);
			fprintf(stdout,"We continue however\n");
		}
		
		//add padded nops
		for (i=0;i<num_of_padded_nops;i++)
		{
			new_stuff_in_code_to_be_MACed[cnt_in_new_mac]=(unsigned char)0x90; //nop opcode
			cnt_in_new_mac++;
		}
		
		//add keys
		memcpy(&new_stuff_in_code_to_be_MACed[cnt_in_new_mac],input+useful_mac_bytes,number_of_interleaved_keys);
		cnt_in_new_mac+=number_of_interleaved_keys;
		
		true_input=new_stuff_in_code_to_be_MACed;
		true_total_mac_bytes=cnt_in_new_mac;
		true_useful_mac_bytes=cnt_in_new_mac-number_of_interleaved_keys;
		
		calc_and_set_mac_of_data(true_input,true_total_mac_bytes,true_useful_mac_bytes,mac_to_be_verified);
		if (0!=memcmp(input+total_mac_bytes,mac_to_be_verified,number_of_mac_bytes))
		{	
			error=1;
		}
	}
	return error;
}
#pragma GCC pop_options //re-enable optimizations

//checks the next <number_of_canaries> to see if they hold the canary value
int check_next_canaries_for_crypto(void* p)
{
	int i;
	for (i=0;i<number_of_canaries;i++)
	{
		if ( *((unsigned char*)p+i)!=(unsigned char)(canary_value))
			return 0;
	}
	return 1;
}


unsigned char mac_for_verification[number_of_mac_bytes];
//that's for data
void verify_mac_onthefly(unsigned char * input, int total_mac_bytes, int useful_mac_bytes,const char * fun_name,int line)
{
	if (number_of_mac_bytes>0 && world==3 && !ignore_macs_last_moment_even_if_there_are_mac_bytes)
	{
		if (continue_getting_data_addr(input)==-1) //check the cache
		{
			calc_and_set_mac_of_data(input,total_mac_bytes,useful_mac_bytes,mac_for_verification);
			if (0!=memcmp(input+total_mac_bytes,mac_for_verification,number_of_mac_bytes)) //CRYPTO_memcmp?
			{	
				fprintf(stderr,"ERROR in on the fly mac verification!. Address:%ld, total mac bytes:%d, useful mac bytes:%d, function:%s, line:%d\n",
						(long)input,total_mac_bytes,useful_mac_bytes,fun_name,line
						);
				exit(17);
			}
			add_addr_to_data_cache(input);
		}
	}
}

long num_of_mixed_bytes_to_mac_in_code;
long address_after_return_from_verif_call;
unsigned char mac_for_code_verification[number_of_mac_bytes];
void verify_code_on_the_fly()
{
	if (number_of_mac_bytes>0 && world==3 && !ignore_macs_last_moment_even_if_there_are_mac_bytes)
	{
		if (check_code_mac_for_error((unsigned char*)address_of_start_of_current_block,num_of_mixed_bytes_to_mac_in_code+bytes_used_for_keyshares,num_of_mixed_bytes_to_mac_in_code))
		{	
			fprintf(stderr,"ERROR in on the fly code mac verification!. Address:%ld, total mac bytes:%ld, useful mac bytes:%ld\n",
					(long)((unsigned char*)address_of_start_of_current_block) ,num_of_mixed_bytes_to_mac_in_code+bytes_used_for_keyshares,num_of_mixed_bytes_to_mac_in_code
					);
			exit(17);
		}
	}
}

void update_mac_when_setting_data(unsigned char * input, int total_mac_bytes, int useful_mac_bytes, unsigned char* output)
{
	if (number_of_mac_bytes>0 && !ignore_macs_last_moment_even_if_there_are_mac_bytes)
	{		
		int index=is_addr_to_be_set_in_data_cache(input);
		if (index!=-1) //if it is in the cache
		{
			//get_mac_of_data_cache_with_index(input,index); //update the mac in the cache 
			
			//make it dirty
			data_cache_dirty_bits[index]=1;
		}
		else
		{
			calc_and_set_mac_of_data(input,total_mac_bytes,useful_mac_bytes,output); //update the mac in main memory
			add_addr_to_data_cache(input); //and bring it in the cache
		}
	}
}

/*********************************************************************************************************/
/*********************************************************************************************************/
/*Functions that are for on-the-fly code verification*/
/*********************************************************************************************************/
/*********************************************************************************************************/
void do_nothing_function()
{
	;
}

/*
void do_nothing() __attribute__ ((naked)) 
{
	return; 
}
*/
const char do_nothing[] = "\xc3";




//this is a test function for testing on-the-fly code verification
void test_find_primes_up_to_a_number(int num)
{
	
	//local variables that we will use:
	int * primes_found_so_far;
	int i,j;
	int num_of_primes;
	char bool=0;


	primes_found_so_far=malloc(num*sizeof(int));
	
	num_of_primes=1; //2 is a prime
	primes_found_so_far[num_of_primes-1]=2;
	

	for (i=3;i<=num;i+=2)
	{
		bool=0;
 
		for (j=2;j<=i/2+1;j++) //not using sqrt here
		{
			if (i%j==0)
			{
				bool=1;
				break;
			}			 
		}

		if (bool==0)
		{
			num_of_primes++;
			primes_found_so_far[num_of_primes-1]=i;
			
		}	
	}
	
	free(primes_found_so_far);
	if (num==1000 && num_of_primes!=168)
	{
		printf("Error in number of primes!\n");
	}

	if (num==100 && num_of_primes!=25)
	{
		printf("Error in number of primes!\n");
	}
	
}





//variables that will temporarily hold the %xmm registers
__m128 xmm0_var;
__m128 xmm1_var;
__m128 xmm2_var;
__m128 xmm3_var;
__m128 xmm4_var;
__m128 xmm5_var;
__m128 xmm6_var;
__m128 xmm7_var;
__m128 xmm8_var;
__m128 xmm9_var;
__m128 xmm10_var;
__m128 xmm11_var;
__m128 xmm12_var;
__m128 xmm13_var;
__m128 xmm14_var;
__m128 xmm15_var;


long rax_register;
long rbx_register;
long rcx_register;
long rdx_register;
//below not set 
long rbp_register;
long rdi_register;
long rsi_register;
long r8_register,r9_register,r10_register,r11_register,r12_register,r13_register,r14_register,r15_register;
long rsp_register;
//above not set 
long number_of_jmp_register_jmps=0;
long register_to_jmp_to;

//disable gcc optimizations temporarily since the Pushes done there WILL break the fetching of the return address
#pragma GCC push_options
#pragma GCC optimize ("O0")

void print_block_metadata()
{
		printf("---------------------------------------------------\n");
		printf("Address before verif:%ld\n",address_in_current_block_before_verif);
		printf("address_of_start_of_current_block:%ld\n",address_of_start_of_current_block);
		printf("position_after_us_that_jmp_above_keyshares_macs_is:%ld\n",position_after_us_that_jmp_above_keyshares_macs_is);
		printf("jump_offset_of_next_jmp:%d\n",jump_offset_of_next_jmp);
		printf("code_length_of_current_block:%d\n",code_length_of_current_block);
		printf("num_of_padded_nops_of_current_block:%d\n",num_of_padded_nops_of_current_block);
		
		
		current_block_metadata=find_metadata_of_a_block((unsigned char*)address_in_current_block_before_verif);
		printf("Addr_of_first_block_of_code:%ld\n",addr_of_first_block_of_code);
		printf("block_meta:address_of_start_of_current_block:%ld\n",addr_of_first_block_of_code+current_block_metadata->address_of_block_start);
		printf("block_meta:code_length_of_current_block:%d\n",current_block_metadata->num_of_actual_bytes_in_current_block);
		printf("block_meta:num_of_padded_nops_of_current_block:%d\n",current_block_metadata->num_of_padded_nops);
}


#define SAVE_STATE { \
					/*get return adress from stack, to see where to mac*/ \
					__asm__( \
							  "pushq %rax;" \
							  "movq %rax,rax_register(%rip);" \
							  /*the following "0x10" will change if the offset of the return address is different*/ \
							  "movq 0x10(%rsp),%rax;"  /*return address (rsp+X) in %rax (well, do_some_stuff subtracts 8 from %rsp, and perhaps we have some pushes too...)*/ \
							  "movq %rax,address_after_return_from_verif_call(%rip);" /*the verifier knows that it should subtract an amount of bytes*/ \
							); \
					/*save state*/ \
					__asm__ ( /*"pushfq;"  //saved before call*/ \
							  /*"pushq %rax;" //saved before call*/ \
							  /*"pushq %rbx;" //saved by the calling convention */ \
							  "pushq %rcx;" \
							  "pushq %rdx;" \
							  /*"pushq %rbp;" //saved by the calling convention*/ \
							  "pushq %rdi;" \
							  "pushq %rsi;" \
							  "pushq %r8;" \
							  "pushq %r9;" \
							  "pushq %r10;" \
							  "pushq %r11;" \
							  /*"pushq %r12;" //saved by the calling convention*/ \
							  /*"pushq %r13;" //saved by the calling convention*/ \
							  /*"pushq %r14;" //saved by the calling convention*/ \
							  "pushq %r15;" /*saved by the calling convention but we use it to align the stack*/ \
							  "movq %rbx,rbx_register(%rip);" \
							  "movq %rcx,rcx_register(%rip);" \
							  "movq %rdx,rdx_register(%rip);" \
							);\
							\
					/*save the %xmm registers*/ \
					__asm__(    "movdqu %xmm0,xmm0_var(%rip);" \
								"movdqu %xmm1,xmm1_var(%rip);" \
								"movdqu %xmm2,xmm2_var(%rip);" \
								"movdqu %xmm3,xmm3_var(%rip);" \
								"movdqu %xmm4,xmm4_var(%rip);" \
								"movdqu %xmm5,xmm5_var(%rip);" \
								"movdqu %xmm6,xmm6_var(%rip);" \
								"movdqu %xmm7,xmm7_var(%rip);" \
								"movdqu %xmm8,xmm8_var(%rip);" \
								"movdqu %xmm9,xmm9_var(%rip);" \
								"movdqu %xmm10,xmm10_var(%rip);" \
								"movdqu %xmm11,xmm11_var(%rip);" \
								"movdqu %xmm12,xmm12_var(%rip);" \
								"movdqu %xmm13,xmm13_var(%rip);" \
								"movdqu %xmm14,xmm14_var(%rip);" \
								"movdqu %xmm15,xmm15_var(%rip);" \
								); \
								\
						__asm__("movq %rsp,%r15;" /*align stack to 16 bytes for call, as System V ABI dictates*/ \
								"and $0xfffffffffffffff0,%rsp;" \
								); \
					}
					
#define RESTORE_STATE   { \
						__asm__("movq %r15, %rsp;" /*restore stack to the number it was*/ \
									);   \
						\
						/*restore the %xmm registers*/ \
						__asm__(    "movdqu xmm0_var(%rip),%xmm0;" \
									"movdqu xmm1_var(%rip),%xmm1;" \
									"movdqu xmm2_var(%rip),%xmm2;" \
									"movdqu xmm3_var(%rip),%xmm3;" \
									"movdqu xmm4_var(%rip),%xmm4;" \
									"movdqu xmm5_var(%rip),%xmm5;" \
									"movdqu xmm6_var(%rip),%xmm6;" \
									"movdqu xmm7_var(%rip),%xmm7;" \
									"movdqu xmm8_var(%rip),%xmm8;" \
									"movdqu xmm9_var(%rip),%xmm9;" \
									"movdqu xmm10_var(%rip),%xmm10;" \
									"movdqu xmm11_var(%rip),%xmm11;" \
									"movdqu xmm12_var(%rip),%xmm12;" \
									"movdqu xmm13_var(%rip),%xmm13;" \
									"movdqu xmm14_var(%rip),%xmm14;" \
									"movdqu xmm15_var(%rip),%xmm15;" \
									);     \
								   \
								   \
						/*restore state*/ \
						__asm__ ( \
								  "popq %r15;" /*saved by the calling convention but we use it to align the stack*/ \
								  /*"popq %r14;" //saved by the calling convention*/ \
								  /*"popq %r13;" //saved by the calling convention*/ \
								  /*"popq %r12;" //saved by the calling convention*/ \
								  "popq %r11;" \
								  "popq %r10;" \
								  "popq %r9;" \
								  "popq %r8;" \
								  "popq %rsi;" \
								  "popq %rdi;" \
								  /*"popq %rbp;" //saved by the calling convention*/ \
								  "popq %rdx;" \
								  "popq %rcx;" \
								  /*//"popq %rbx;"  //saved by the calling convention*/ \
								  /*//"popq %rax;" //saved before call*/ \
								  /*//"popfq;" //saved before call*/ \
								 ); \
								 \
						__asm__( "popq %rax;" /*//the register in which we stored the return address*/ \
								); \
								\
				}
				


//the function that is called at the start of each code block, to verify it mac
void do_verify_code_on_the_fly()
{
		//save the state
		SAVE_STATE;
		
			//test_find_primes_up_to_a_number(100);
			
		address_in_current_block_before_verif=(long)((unsigned char*)(address_after_return_from_verif_call) - size_of_commands_before_getting_addr);
				
		//get the start of the block. To do that, we move forward until we encounter a jmp+canaries, and get the numberof the actual bytes in the block.
		address_of_start_of_current_block= set_block_metadata_and_return_addr_of_start((unsigned char *)address_in_current_block_before_verif);

		if (position_after_us_that_jmp_above_keyshares_macs_is==overhead_of_verif)
		{
			//whoah! Exactly next to the verification procedure is the jump above the keyshares an macs.
			//That means that a) The current verification code was added because of a call/label
			//and that the secure CPU would consider the instruction pointer to have moved to the next block!
			//So our calculations should be relative to the next block.
			 
			address_in_current_block_before_verif+=overhead_of_verif+size_of_jmp_command+jump_offset_of_next_jmp; //jmp to the start of next block,where a verification call lies
			address_of_start_of_current_block= set_block_metadata_and_return_addr_of_start((unsigned char *)address_in_current_block_before_verif);
			//printf("We got verif at the end of the block! new_block:%ld\n",address_of_start_of_current_block);
		}
		
		//if you add many printfs it breaks for some reason...
		//print_block_metadata();

		
		//useful bytes here= all except keyshares. The unwanted ones will be removed later
		num_of_mixed_bytes_to_mac_in_code=code_length_of_current_block+number_of_canaries+bytes_for_instructions_length+bytes_for_num_of_padded_nops_len+num_of_padded_nops_of_current_block;
				
		//printf("Address after return from verif_call:%ld\n",address_after_return_from_verif_call);
				
		//check the cache and if the code block is not there then mac and add it to the cache
		if (-1==continue_macing_current_code_addr((unsigned char*)address_in_current_block_before_verif)) //if using cache for code
		{		
			#if count_mac_invocations==1
				if (count_mac_invocations_in_this_code_part)
				{
					//simply increase the counters
					#if squeeze_keys_when_macing==1
						mac_size_invocation_counters[num_of_bytes_in_code_chunk+number_of_interleaved_keys/2]+=1;
					#else
						mac_size_invocation_counters[num_of_bytes_in_code_chunk+number_of_interleaved_keys]+=1;
					#endif
				}
			#else
				verify_code_on_the_fly();
			#endif
			add_addr_to_code_cache((unsigned char*)address_in_current_block_before_verif); //addr
		}
		
		address_of_start_of_previous_in_time_block=address_of_start_of_current_block;
		
		
		//is the next command a jmp to register?
		if ((unsigned short)(*((unsigned short*)((unsigned char*)address_in_current_block_before_verif+overhead_of_verif)))==jmp_rax_opcode)
			register_to_jmp_to=rax_register;
		else if ((unsigned short)(*((unsigned short*)((unsigned char*)address_in_current_block_before_verif+overhead_of_verif)))==jmp_rbx_opcode)
			register_to_jmp_to=rbx_register;
		else if ((unsigned short)(*((unsigned short*)((unsigned char*)address_in_current_block_before_verif+overhead_of_verif)))==jmp_rcx_opcode)
			register_to_jmp_to=rcx_register;
		else if ((unsigned short)(*((unsigned short*)((unsigned char*)address_in_current_block_before_verif+overhead_of_verif)))==jmp_rdx_opcode)
			register_to_jmp_to=rdx_register;
		else
			register_to_jmp_to=-42424242;
			
		//todo:make sure that we truly catch all the cases that we jump to register
		if (register_to_jmp_to!=-42424242)
		//we have a jmp to register. IMPORTANT! WE DO NOT VERIFY THE TARGET. WE ONLY COUNT THE FACT THAT WE MAC-ED
		{
			//printf("Next command is after a jump to register!\n");
			number_of_jmp_register_jmps++;
			//printf("jmp_to_reg_cnt=%ld\n",number_of_jmp_register_jmps);
			if (-1==continue_macing_current_code_addr((unsigned char*)register_to_jmp_to)) //if using cache for code
			{		
				//we don't verify the code block in which we fall
				//however we add it to the cache and note that we had a mac calculation
				#if count_mac_invocations==1
					if (count_mac_invocations_in_this_code_part)
					{
						#if squeeze_keys_when_macing==1
							mac_size_invocation_counters[num_of_bytes_in_code_chunk+number_of_interleaved_keys/2]+=1;
						#else
							mac_size_invocation_counters[num_of_bytes_in_code_chunk+number_of_interleaved_keys]+=1;
						#endif
					}
				#endif
				
				add_addr_to_code_cache((unsigned char*)register_to_jmp_to); //addr
			}
		}
        
       RESTORE_STATE;
}
//re-enable gcc optimizations
#pragma GCC pop_options

/*********************Code Cache Functions *********************/
void init_code_cache()
{
	if (num_of_cached_blocks_of_code>0)
	{
		int i;
		memset(code_cache,0,num_of_cached_blocks_of_code*sizeof(long));
		code_cache_latest_index=0;
		for (i=0;i<(num_of_cached_blocks_of_code/code_cache_set_assosiative_size);i++)
		{
			code_cache_slot_indexes_for_set_assosiative[i]=0;
		}
	}
}

#if use_code_cache_with_cpu_split_blocks==1
	#define mapped_code_addr(addr) (current_block_index==-2?(find_addr_in_cpu_split_blocks_addresses(addr)):(current_block_index)) //the array index of the binary search, not the actual address itself
#else
	#define mapped_code_addr(addr) (addr) //OBSOLETE
#endif

#if code_cache_type==0
/*Fully assosiative cache*/

int inc_code_cache_index()
{
#if num_of_cached_blocks_of_code>0
		code_cache_latest_index=(code_cache_latest_index+1)%num_of_cached_blocks_of_code;
#endif

	return code_cache_latest_index;
}

int search_code_address_in_cache(unsigned char * addr)
{
	int i;
	long mapped_addr=(long)mapped_code_addr(addr);
	//check if addr is in cache. For optimization purposes, check for the most recent blocks first
	if (code_cache_latest_index==0)
	{
		for(i=num_of_cached_blocks_of_code-1;i>=0;i--)
		{
			if (code_cache[i]==mapped_addr)
			return i;
		}
	}
	else
	{
		for (i=code_cache_latest_index-1;i>=0;i--) 
		{
			if (code_cache[i]==mapped_addr)
				return i;
		}
		for(i=num_of_cached_blocks_of_code-1;i>=code_cache_latest_index;i--)
		{
			if (code_cache[i]==mapped_addr)
			return i;
		}
	}
	return -1;
}

void add_addr_to_code_cache(unsigned char * addr)
{
	if (num_of_cached_blocks_of_code>0)
	{
		long mapped_addr=(long)mapped_code_addr(addr);
		code_cache[code_cache_latest_index]=mapped_addr;
		inc_code_cache_index();
	}
}

#endif  //fully assosiative end

#if code_cache_type==1
/*For direct mapped cache*/

#if use_fixed_size_chunks_of_code==1
	#define size_of_full_block_of_code (number_of_mac_bytes+number_of_interleaved_keys+num_of_bytes_in_code_chunk+number_of_canaries+bytes_for_instructions_length)  //that is make sure adjacent blocks will not hit the same place in the cache
#endif
#if use_fixed_size_chunks_of_code==0 || use_code_cache_with_cpu_split_blocks==1  //leave that one as it is, we want it to be 1
	#undef size_of_full_block_of_code
	#define size_of_full_block_of_code (1)
#endif

int search_code_address_in_cache(unsigned char * addr)
{
	int i;
	long mapped_addr=(long)mapped_code_addr(addr);
	//check if addr is in cache.
	if (code_cache[(mapped_addr/size_of_full_block_of_code)%num_of_cached_blocks_of_code]==mapped_addr)
		return ((mapped_addr/size_of_full_block_of_code)%num_of_cached_blocks_of_code);
	return -1;
}

void add_addr_to_code_cache(unsigned char * addr)
{
	if (num_of_cached_blocks_of_code>0)
	{
		long mapped_addr=(long)mapped_code_addr(addr);
		code_cache[(mapped_addr/size_of_full_block_of_code)%num_of_cached_blocks_of_code]=mapped_addr;
	}
}
#endif //direct mapped end



#if code_cache_type==2
/*For set assosiative cache*/

#if use_fixed_size_chunks_of_code==1
	#define size_of_full_block_of_code (number_of_mac_bytes+number_of_interleaved_keys+num_of_bytes_in_code_chunk+number_of_canaries+bytes_for_instructions_length)  //that is make sure adjacent blocks will not hit the same place in the cache
#endif
#if use_fixed_size_chunks_of_code==0 || use_code_cache_with_cpu_split_blocks==1 //we want the size to be 1
	#undef size_of_full_block_of_code
	#define size_of_full_block_of_code (1)
#endif

#define slots_in_code_cache_being_direct_mapped (num_of_cached_blocks_of_code/code_cache_set_assosiative_size)

int search_code_address_in_cache(unsigned char * addr)
{
	int i,slot;
	long mapped_addr=(long)mapped_code_addr(addr);
	//check if addr is in cache. 
	slot=(mapped_addr/size_of_full_block_of_code)%slots_in_code_cache_being_direct_mapped; //find the direct mapped slot
	for (i=0;i<code_cache_set_assosiative_size;i++) //and search in it
	{
		if (code_cache[slot*code_cache_set_assosiative_size+i]==mapped_addr)
			return (slot*code_cache_set_assosiative_size+i);
	}
	return -1;
}

void add_addr_to_code_cache(unsigned char * addr)
{
	if (num_of_cached_blocks_of_code>0)
	{
		int i,slot;
		long mapped_addr=(long)mapped_code_addr(addr);
		slot=(mapped_addr/size_of_full_block_of_code)%slots_in_code_cache_being_direct_mapped; //find the direct mapped slot
		code_cache[slot*code_cache_set_assosiative_size+code_cache_slot_indexes_for_set_assosiative[slot]]=mapped_addr;
		code_cache_slot_indexes_for_set_assosiative[slot]=(code_cache_slot_indexes_for_set_assosiative[slot]+1)%code_cache_set_assosiative_size;
	}
}
#endif //set assosiative end

int continue_macing_current_code_addr(unsigned char *addr)
{
	int ind;
	if (num_of_cached_blocks_of_code>0)
	{
		if (ind=search_code_address_in_cache(addr)!=-1)
		{
			return ind;
		}
	}
	return -1;  //-1 means continue
	
}

/************  Data Cache Functions **************/
void init_data_cache()
{
	if (num_of_cached_blocks_of_data>0)
	{
		memset(data_cache,0,num_of_cached_blocks_of_data*sizeof(long));
		memset(macs_in_data_cache,0,num_of_cached_blocks_of_data*number_of_mac_bytes);
		memset(data_cache_dirty_bits,0,num_of_cached_blocks_of_data);
		data_cache_latest_index=0;
		int i;
		for (i=0;i<(num_of_cached_blocks_of_data/data_cache_set_assosiative_size);i++)
		{
			data_cache_slot_indexes_for_set_assosiative[i]=0;
		}
	}
}

#if data_cache_type==0
/*Fully assosiative cache*/

int inc_data_cache_index()
{
	if (num_of_cached_blocks_of_data>0)
	{
		data_cache_latest_index=(data_cache_latest_index+1)%num_of_cached_blocks_of_data;
	}

	return data_cache_latest_index;
}

int search_data_address_in_cache(unsigned char * addr)
{
	int i;
	//check if addr is in cache. For optimization purposes, check for the most recent blocks first
	if (data_cache_latest_index==0)
	{
		for(i=num_of_cached_blocks_of_data-1;i>=0;i--)
		{
			if (data_cache[i]==(long) addr)
			return i;
		}
	}
	else
	{
		for (i=data_cache_latest_index-1;i>=0;i--) 
		{
			if (data_cache[i]==(long) addr)
				return i;
		}
		for(i=num_of_cached_blocks_of_data-1;i>=data_cache_latest_index;i--)
		{
			if (data_cache[i]==(long) addr)
			return i;
		}
	}
	return -1;
}

void get_mac_of_data_cache(unsigned char *addr)
{
	if (num_of_cached_blocks_of_data>0)
	{
		//store the mac in the cache
		memcpy(&(macs_in_data_cache[data_cache_latest_index*number_of_mac_bytes]),(unsigned char*)addr+bytes_for_useful_data+number_of_interleaved_keys,number_of_mac_bytes);
	}
}

void add_addr_to_data_cache(unsigned char * addr)
{
	if (num_of_cached_blocks_of_data>0)
	{
		if (data_cache[data_cache_latest_index]!=(long)0 && data_cache_dirty_bits[data_cache_latest_index]==1) //there is already an address there and it is dirty
		{
			//calculate the proper mac and set it
			calc_and_set_mac_of_data((unsigned char*)data_cache[data_cache_latest_index],bytes_for_useful_data+number_of_interleaved_keys,bytes_for_useful_data,(unsigned char*)data_cache[data_cache_latest_index]+bytes_for_useful_data+number_of_interleaved_keys); 
		}
		data_cache[data_cache_latest_index]=(long)addr;
		data_cache_dirty_bits[data_cache_latest_index]=0;
		inc_data_cache_index();
	}
}

void flush_data_cache_into_mem()
{
	int i;
	for (i=0;i<num_of_cached_blocks_of_data;i++)
	{
		if (data_cache[i]!=(long)0 && data_cache_dirty_bits[i]==1) //there is already an address there and its dirty
		{
			//calculate the proper mac and set it
			calc_and_set_mac_of_data((unsigned char*)data_cache[i],bytes_for_useful_data+number_of_interleaved_keys,bytes_for_useful_data,(unsigned char*)data_cache[i]+bytes_for_useful_data+number_of_interleaved_keys); 
			data_cache_dirty_bits[i]=0;
		}
	}
}
#endif  //fully assosiative end

#if data_cache_type==1
/*For direct mapped cache*/

#define  use_fixed_size_chunks_of_data 1 //yep that's for sure, for data
#if use_fixed_size_chunks_of_data==1
	#define size_of_full_block_of_data (number_of_mac_bytes+number_of_interleaved_keys+bytes_for_useful_data)  //that is make sure adjacent blocks will not hit the same place in the cache
#endif
#if use_fixed_size_chunks_of_data==0
	#define size_of_full_block_of_data (1)
#endif

#define direct_mapped_index_in_cache (((long)addr/size_of_full_block_of_data)%num_of_cached_blocks_of_data)

int search_data_address_in_cache(unsigned char * addr)
{
	int i;
	//check if addr is in cache.
	if (data_cache[direct_mapped_index_in_cache]==(long)addr)
		return direct_mapped_index_in_cache;
	return -1;
}

void get_mac_of_data_cache(unsigned char *addr)
{
	if (num_of_cached_blocks_of_data>0)
	{
		//store the mac in the cache
		memcpy(&(macs_in_data_cache[direct_mapped_index_in_cache*number_of_mac_bytes]),(unsigned char*)addr+bytes_for_useful_data+number_of_interleaved_keys,number_of_mac_bytes);
	}
}


void add_addr_to_data_cache(unsigned char * addr)
{
	if (num_of_cached_blocks_of_data>0)
	{
		if (data_cache[direct_mapped_index_in_cache]!=0 && data_cache_dirty_bits[direct_mapped_index_in_cache]==1) //there is already an address there and its dirty
		{
			//calculate the proper mac and set it
			calc_and_set_mac_of_data((unsigned char*)data_cache[direct_mapped_index_in_cache],bytes_for_useful_data+number_of_interleaved_keys,bytes_for_useful_data,(unsigned char*)data_cache[direct_mapped_index_in_cache]+bytes_for_useful_data+number_of_interleaved_keys); 
		}
		data_cache[direct_mapped_index_in_cache]=(long)addr;
		data_cache_dirty_bits[direct_mapped_index_in_cache]=0;
	}
}

void flush_data_cache_into_mem()
{
	int i;
	for (i=0;i<num_of_cached_blocks_of_data;i++)
	{
		if (data_cache[i]!=0 && data_cache_dirty_bits[i]==1) //there is already an address there and it's dirty
		{
			//calculate the proper mac and set it
			calc_and_set_mac_of_data((unsigned char*)data_cache[i],bytes_for_useful_data+number_of_interleaved_keys,bytes_for_useful_data,(unsigned char*)data_cache[i]+bytes_for_useful_data+number_of_interleaved_keys); 
			data_cache_dirty_bits[i]=0;
		}
	}
}

#endif //direct mapped end


#if data_cache_type==2
/*For set assosiative cache*/

#define  use_fixed_size_chunks_of_data 1 //yep that's for sure, for data
#if use_fixed_size_chunks_of_data==1
	#define size_of_full_block_of_data (number_of_mac_bytes+number_of_interleaved_keys+bytes_for_useful_data)  //that is make sure adjacent blocks will not hit the same place in the cache
#endif
#if use_fixed_size_chunks_of_data==0
	#define size_of_full_block_of_data (1)
#endif

#define slots_in_data_cache_being_direct_mapped (num_of_cached_blocks_of_data/data_cache_set_assosiative_size)


int search_data_address_in_cache(unsigned char * addr)
{
	int i,slot;
	slot=((long)addr/size_of_full_block_of_data)%slots_in_data_cache_being_direct_mapped; //find the direct mapped slot
	//check if addr is in cache.
	for (i=0;i<data_cache_set_assosiative_size;i++)
	{
		if (data_cache[slot*data_cache_set_assosiative_size+i]==(long)addr)
			return (slot*data_cache_set_assosiative_size+i);
	}
	return -1;
}

void get_mac_of_data_cache(unsigned char *addr)
{
	if (num_of_cached_blocks_of_data>0)
	{
		int slot;
		slot=((long)addr/size_of_full_block_of_data)%slots_in_data_cache_being_direct_mapped; //find the direct mapped slot
		//store the mac in the cache
		memcpy(&(macs_in_data_cache[(slot*data_cache_set_assosiative_size+data_cache_slot_indexes_for_set_assosiative[slot])*number_of_mac_bytes]),(unsigned char*)addr+bytes_for_useful_data+number_of_interleaved_keys,number_of_mac_bytes);
	}
}


void add_addr_to_data_cache(unsigned char * addr)
{
	if (num_of_cached_blocks_of_data>0)
	{
		int slot;
		slot=((long)addr/size_of_full_block_of_data)%slots_in_data_cache_being_direct_mapped; //find the direct mapped slot
		if (data_cache[slot*data_cache_set_assosiative_size+data_cache_slot_indexes_for_set_assosiative[slot]]!=0 && data_cache_dirty_bits[slot*data_cache_set_assosiative_size+data_cache_slot_indexes_for_set_assosiative[slot]]==1) //there is already an address there and its dirty
		{
			//calculate the proper mac and set it
			calc_and_set_mac_of_data((unsigned char*)data_cache[slot*data_cache_set_assosiative_size+data_cache_slot_indexes_for_set_assosiative[slot]],bytes_for_useful_data+number_of_interleaved_keys,bytes_for_useful_data,(unsigned char*)data_cache[slot*data_cache_set_assosiative_size+data_cache_slot_indexes_for_set_assosiative[slot]]+bytes_for_useful_data+number_of_interleaved_keys); 
		}
		data_cache[slot*data_cache_set_assosiative_size+data_cache_slot_indexes_for_set_assosiative[slot]]=(long)addr;
		data_cache_dirty_bits[slot*data_cache_set_assosiative_size+data_cache_slot_indexes_for_set_assosiative[slot]]=0;
		data_cache_slot_indexes_for_set_assosiative[slot]=(data_cache_slot_indexes_for_set_assosiative[slot]+1)%data_cache_set_assosiative_size;
	}
}

void flush_data_cache_into_mem()
{
	int i;
	for (i=0;i<num_of_cached_blocks_of_data;i++)
	{
		/*
		if (data_cache[i]!=0)
		{
			printf("found one: i=%d, data_cache[i]=%ld, dirty=%d\n",i,data_cache[i],data_cache_dirty_bits[i]);
		}
		*/
		if (data_cache[i]!=0 && data_cache_dirty_bits[i]==1) //there is already an address there and it's dirty
		{
			//calculate the proper mac and set it
			calc_and_set_mac_of_data((unsigned char*)data_cache[i],bytes_for_useful_data+number_of_interleaved_keys,bytes_for_useful_data,(unsigned char*)data_cache[i]+bytes_for_useful_data+number_of_interleaved_keys); 
			data_cache_dirty_bits[i]=0;
		}
	}
}

#endif //set assosiative end


int is_addr_to_be_set_in_data_cache(unsigned char *addr)
{
	int ind;
	if (num_of_cached_blocks_of_data>0)
	{
		ind=search_data_address_in_cache(addr);
		if (ind!=-1)
		{
			return ind;
		}
	}
	return -1; //-1 means it is not in cache
	
}

void get_mac_of_data_cache_with_index(unsigned char *addr, int index_in_cache)
{
	if (num_of_cached_blocks_of_data>0)
	{
		memcpy(&(macs_in_data_cache[index_in_cache*number_of_mac_bytes]),(unsigned char*)addr+bytes_for_useful_data+number_of_interleaved_keys,number_of_mac_bytes);
	}
}

int continue_getting_data_addr(unsigned char *addr)
{
	int ind;
	if (num_of_cached_blocks_of_data>0)
	{
		ind=search_data_address_in_cache(addr);
		if (ind!=-1)
		{
			return ind;
		}
	}
	return -1; //-1 means continue
	
}


