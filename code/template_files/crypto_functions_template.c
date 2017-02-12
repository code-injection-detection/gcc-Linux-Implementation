#include "headers_needed.h"

#define safe_length_for_buffer_storage 2048
#define len_2power128 17 //2^128-1 is 16 bytes.
#define block_length 16

extern void calc_and_set_mac_of_data_sha256(char * input, long length, char * output);

EVP_CIPHER_CTX aes_ctx;
unsigned char aes_key[] = {42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57};
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
unsigned char mac_in_bytes[safe_length_for_buffer_storage];
unsigned char encrypted_data[safe_length_for_buffer_storage];
unsigned char mac_to_be_verified[number_of_mac_bytes];
unsigned char intermediate_buf_for_macing[safe_length_for_buffer_storage];
int length_of_encrypted_data;
size_t length_of_maced_data;
int tmplen;


void init_crypto_stuctures(int print)
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
	#if mac_algorithm==2
		cmac_ctx = CMAC_CTX_new();
		CMAC_Init(cmac_ctx, aes_key, 16, EVP_aes_128_cbc(), NULL);
	#endif
	#if mac_algorithm==3 || mac_algorithm==4
		EVP_EncryptInit_ex(&aes_ctx, EVP_aes_128_cbc(), NULL, aes_key,initialization_vector);
		#if mac_algorithm==4
			EVP_CIPHER_CTX_set_padding(&aes_ctx, 0); //disable padding
		#endif
	#endif
	memset(mac_in_bytes,0,safe_length_for_buffer_storage);
	memset(encrypted_data,0,safe_length_for_buffer_storage);
	memset(intermediate_buf_for_macing,0,safe_length_for_buffer_storage);
	if (number_of_mac_bytes>0)
	{
		memset(mac_to_be_verified,99,number_of_mac_bytes); //a value (99) that will result in error
	}	
	if (print)
		printf("Crypto structures initialized.\n");
}

/*********************************************************************************/
/****************************** AES ECB ******************************************/
/*********************************************************************************/


void calc_mac_aes_ecb(unsigned char *useful_data, int length_in_bytes_useful)
{
	if (number_of_mac_bytes>0)
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

	if (number_of_mac_bytes>0)
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
	if (number_of_mac_bytes>0)
	{
		//EVP_EncryptInit_ex(&aes_ctx, NULL, NULL, NULL, NULL);
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
	if (number_of_mac_bytes>0)
	{
		encrypt_aes_ecb((unsigned char*)(input)+length_of_useful,length_of_all-length_of_useful);
		calc_mac_aes_ecb(input, length_of_useful);
		set_mac_aes_ecb(output);
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
	if (number_of_mac_bytes>0)
	{
		calc_mac_aes_cmac(input,length_of_all);
		set_mac_aes_cmac(output);
	}
}


/*************************************************************************************/
/*********************************** AES CBC *****************************************/
/*************************************************************************************/


void encrypt_aes_cbc(unsigned char *buf_to_be_encrypted,int len_of_buf)
{
	int i;
	if (number_of_mac_bytes>0)
	{
		EVP_EncryptInit_ex(&aes_ctx, NULL, NULL, NULL, NULL);
		EVP_EncryptUpdate(&aes_ctx, encrypted_data, &length_of_encrypted_data,buf_to_be_encrypted, len_of_buf);
		EVP_EncryptFinal_ex(&aes_ctx, encrypted_data + length_of_encrypted_data, &tmplen);
		length_of_encrypted_data+=tmplen;
		//printf("length_of_encrypted_data:%d\n",length_of_encrypted_data);
	}	
}


void set_mac_aes_cbc(unsigned char * output)
{
	int length_of_mac=block_length; //128 bits=16 bytes

	if(length_of_mac>=number_of_mac_bytes)
		{
			memcpy(output,encrypted_data+length_of_encrypted_data-block_length,number_of_mac_bytes);
		}
		else
		{
			memcpy(output,encrypted_data+length_of_encrypted_data-block_length,length_of_mac);
			memset(((unsigned char*)output)+(length_of_mac),0,number_of_mac_bytes-length_of_mac);
		}
}

int prepend_length_aes_cbc(char * input,int length)
{
	char char_length;
	int len_padded;
	char num_of_zeros_to_pad_up_to_full_block;
	int number_above_full_block;
	
	/*
	//for inserting the length in an entire block
	memset(intermediate_buf_for_macing,0,(block_length- sizeof(long)));
	memcpy(intermediate_buf_for_macing+(block_length- sizeof(long)),&length,sizeof(long));
	memcpy(intermediate_buf_for_macing+block_length,input,length_of_all);
	*/
	if (length<=255) //practically always happens
	{
		char_length=(char)length;
		len_padded=sizeof(char);
		memcpy(intermediate_buf_for_macing,&char_length,len_padded);
		#if mac_algorithm==4
			number_above_full_block=(length+sizeof(char))%block_length;
			if (number_above_full_block!=0)
			{
				num_of_zeros_to_pad_up_to_full_block=block_length-number_above_full_block;
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
		len_padded=sizeof(int);
		memcpy(intermediate_buf_for_macing,&length,len_padded);
		#if mac_algorithm==4
			number_above_full_block=(length+sizeof(int))%block_length;
			if (number_above_full_block!=0)
			{
				num_of_zeros_to_pad_up_to_full_block=block_length-number_above_full_block;
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
	if (number_of_mac_bytes>0)
	{
		len_padded=prepend_length_aes_cbc(input,length_of_all);
		encrypt_aes_cbc(intermediate_buf_for_macing,length_of_all+len_padded);
		set_mac_aes_cbc(output);
	}
}




void clear_crypto_structures()
{
	EVP_CIPHER_CTX_cleanup(&aes_ctx);
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
}

int check_mac_for_error(unsigned char * input, int total_mac_bytes, int useful_mac_bytes)
{
	int error=0;
	if (number_of_mac_bytes>0)
	{
		calc_and_set_mac_of_data(input,total_mac_bytes,useful_mac_bytes,mac_to_be_verified);
		if (0!=memcmp(input+total_mac_bytes,mac_to_be_verified,number_of_mac_bytes))
		{	
			error=1;
		}
	}
	return error;
}

unsigned char mac_for_verification[number_of_mac_bytes];
void verify_mac_onthefly(unsigned char * input, int total_mac_bytes, int useful_mac_bytes,const char * fun_name,int line)
{
	if (number_of_mac_bytes>0)
	{
		calc_and_set_mac_of_data(input,total_mac_bytes,useful_mac_bytes,mac_for_verification);
		if (0!=memcmp(input+total_mac_bytes,mac_for_verification,number_of_mac_bytes)) //CRYPTO_memcmp?
		{	
			fprintf(stderr,"ERROR in on the fly mac verification!. Address:%ld, total mac bytes:%d, useful mac bytes:%d, function:%s, line:%d\n",
					(long)input,total_mac_bytes,useful_mac_bytes,fun_name,line
					);
			exit(17);
		}
	}
}

long num_of_useful_bytes_to_mac_in_code;
long code_where_to_start_macing;
unsigned char mac_for_code_verification[number_of_mac_bytes];
#define size_of_commands_before_getting_addr (9) //the size in bytes of the assembly commands before fetching the current address( to reach the start of the mac-ed block)
void verify_code_on_the_fly()
{
	if (number_of_mac_bytes>0)
	{
		calc_and_set_mac_of_data((unsigned char*)code_where_to_start_macing-size_of_commands_before_getting_addr,num_of_useful_bytes_to_mac_in_code+bytes_used_for_keyshares,num_of_useful_bytes_to_mac_in_code,mac_for_code_verification);
		if (0!=memcmp((unsigned char*)code_where_to_start_macing-size_of_commands_before_getting_addr+num_of_useful_bytes_to_mac_in_code+bytes_used_for_keyshares,mac_for_code_verification,number_of_mac_bytes)) //CRYPTO_memcmp?
		{	
			fprintf(stderr,"ERROR in on the fly code mac verification!. Address:%ld, total mac bytes:%ld, useful mac bytes:%ld\n",
					(long)((unsigned char*)code_where_to_start_macing-size_of_commands_before_getting_addr) ,num_of_useful_bytes_to_mac_in_code+bytes_used_for_keyshares,num_of_useful_bytes_to_mac_in_code
					);
			exit(17);
		}
	}
}
#undef size_of_commands_before_getting_addr

void update_mac_when_setting_data(unsigned char * input, int total_mac_bytes, int useful_mac_bytes, unsigned char* output)
{
	if (number_of_mac_bytes>0)
	{
		calc_and_set_mac_of_data(input,total_mac_bytes,useful_mac_bytes,output);
	}
}

/*********************************************************************************************************/
/*********************************************************************************************************/
/*Functions that for on-the-fly code verification testing*/
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

void do_some_stuff()
{
	//save state
	__asm__ ( //"pushfq;"  //saved before call
			  //"pushq %rax;" //saved before call
              //"pushq %rbx;" //saved by the calling convention
              "pushq %rcx;"
              "pushq %rdx;"
              //"pushq %rbp;" //saved by the calling convention
              "pushq %rdi;"
              "pushq %rsi;"
              "pushq %r8;"
              "pushq %r9;"
              "pushq %r10;"
              "pushq %r11;"
              //"pushq %r12;" //saved by the calling convention
              //"pushq %r13;" //saved by the calling convention
              //"pushq %r14;" //saved by the calling convention
              "pushq %r15;" //saved by the calling convention but we use it to align the stack
			);

	__asm__(    "movdqu %xmm0,xmm0_var(%rip);"
				"movdqu %xmm1,xmm1_var(%rip);"
				"movdqu %xmm2,xmm2_var(%rip);"
				"movdqu %xmm3,xmm3_var(%rip);"
				"movdqu %xmm4,xmm4_var(%rip);"
				"movdqu %xmm5,xmm5_var(%rip);"
				"movdqu %xmm6,xmm6_var(%rip);"
				"movdqu %xmm7,xmm7_var(%rip);"
				"movdqu %xmm8,xmm8_var(%rip);"
				"movdqu %xmm9,xmm9_var(%rip);"
				"movdqu %xmm10,xmm10_var(%rip);"
				"movdqu %xmm11,xmm11_var(%rip);"
				"movdqu %xmm12,xmm12_var(%rip);"
				"movdqu %xmm13,xmm13_var(%rip);"
				"movdqu %xmm14,xmm14_var(%rip);"
				"movdqu %xmm15,xmm15_var(%rip);"
				);
		
		
		
		/*__asm__ ( "mov $120,%rdi;"
				  "call putchar;"
				 );
		*/
		
	// __asm__ ( "call do_nothing" );
	//__asm__ ( "call verify_code_on_the_fly;" );
		
			
            //printf("bom bom bom\n");
            /* if (rand()%3)
				printf("%d\n",rand());
			 else
				printf("haha!\n");
			*/
			//test_find_primes_up_to_a_number(100);
		if (use_fixed_size_chunks_of_code)
		{
			num_of_useful_bytes_to_mac_in_code=num_of_bytes_in_code_chunk+number_of_canaries+1;
		}
		else
		{
			; //it's going to be filled by the assembly code and java on the fly
		}
		
		__asm__("movq %rsp,%r15;" //align stack to 16 bytes for call, as System V ABI dictates
				"and $0xfffffffffffffff0,%rsp;"
				);
				
		verify_code_on_the_fly();
             
        __asm__("movq %r15, %rsp;" //restore stack to the number it was
				);     
             
             
    __asm__(    "movdqu xmm0_var(%rip),%xmm0;"
				"movdqu xmm1_var(%rip),%xmm1;"
				"movdqu xmm2_var(%rip),%xmm2;"
				"movdqu xmm3_var(%rip),%xmm3;"
				"movdqu xmm4_var(%rip),%xmm4;"
				"movdqu xmm5_var(%rip),%xmm5;"
				"movdqu xmm6_var(%rip),%xmm6;"
				"movdqu xmm7_var(%rip),%xmm7;"
				"movdqu xmm8_var(%rip),%xmm8;"
				"movdqu xmm9_var(%rip),%xmm9;"
				"movdqu xmm10_var(%rip),%xmm10;"
				"movdqu xmm11_var(%rip),%xmm11;"
				"movdqu xmm12_var(%rip),%xmm12;"
				"movdqu xmm13_var(%rip),%xmm13;"
				"movdqu xmm14_var(%rip),%xmm14;"
				"movdqu xmm15_var(%rip),%xmm15;"
				);        
             
             
    //restore state         
    __asm__ (
			  "popq %r15;" //saved by the calling convention but we use it to align the stack
		      //"popq %r14;" //saved by the calling convention
			  //"popq %r13;" //saved by the calling convention
			  //"popq %r12;" //saved by the calling convention
			  "popq %r11;"
			  "popq %r10;"
			  "popq %r9;"
			  "popq %r8;"
			  "popq %rsi;"
			  "popq %rdi;"
			  //"popq %rbp;" //saved by the calling convention
			  "popq %rdx;"
			  "popq %rcx;"
			  //"popq %rbx;"  //saved by the calling convention
			  //"popq %rax;" //saved before call
			  //"popfq;" //saved before call
             ); 
}
