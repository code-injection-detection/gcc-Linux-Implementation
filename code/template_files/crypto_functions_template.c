#include "headers_needed.h"

#define safe_length_for_buffer_storage 2048
#define len_2power128 17 //2^128-1 is 16 bytes.
#define block_length 16

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
	#if mac_algorithm==3
		EVP_EncryptInit_ex(&aes_ctx, EVP_aes_128_cbc(), NULL, aes_key,initialization_vector);
	#endif
	memset(mac_in_bytes,0,safe_length_for_buffer_storage);
	memset(encrypted_data,0,safe_length_for_buffer_storage);
	memset(intermediate_buf_for_macing,0,safe_length_for_buffer_storage);
	memset(mac_to_be_verified,99,number_of_mac_bytes); //a value (99) that will result in error
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
		memcpy(intermediate_buf_for_macing+len_padded,input,length);
		return (len_padded);
	}
	else
	{
		len_padded=sizeof(int);
		memcpy(intermediate_buf_for_macing,&length,len_padded);
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
		if (0!=CRYPTO_memcmp(input+total_mac_bytes,mac_to_be_verified,number_of_mac_bytes))
		{	
			error=1;
		}
	}
	return error;
}

void verify_mac_onthefly(unsigned char * input, int total_mac_bytes, int useful_mac_bytes,const char * fun_name,int line)
{
	unsigned char mac_for_verification[number_of_mac_bytes];
	if (number_of_mac_bytes>0)
	{
		calc_and_set_mac_of_data(input,total_mac_bytes,useful_mac_bytes,mac_for_verification);
		if (0!=CRYPTO_memcmp(input+total_mac_bytes,mac_for_verification,number_of_mac_bytes))
		{	
			fprintf(stderr,"ERROR in on the fly mac verification!. Address:%ld, total mac bytes:%d, useful mac bytes:%d, function:%s, line:%d\n",
					(long)input,total_mac_bytes,useful_mac_bytes,fun_name,line
					);
			exit(17);
		}
	}
}
