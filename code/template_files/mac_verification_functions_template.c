#include "headers_needed.h"

//TODO: move the functions that are for mac verification from crypto_functions_template.c to here
//Right now they are in crypto_functions_template.c (and they work), but they should be moved here for clarification, as they are not exactly "crypto functions".

//However we can add the new crypto functions that work with the new memory map, i.e. useful bytes separate from keyshares+macs.

extern char count_mac_invocations_in_this_code_part;
extern unsigned char mac_to_be_verified[number_of_mac_bytes];
#define arr_sz_of_invocation_counters 31000 //also defined in crypto_functions.c
extern long long mac_size_invocation_counters[arr_sz_of_invocation_counters];
extern unsigned char keys_temp_space[safe_length_for_buffer_storage];
unsigned char combined_ub_and_keys_to_be_maced[safe_length_for_buffer_storage];

//depending on the algorithm, the correct function is called
void calc_and_set_mac_of_data_ub_separate_km(unsigned char *input_in_ub,unsigned char *input_in_km,int length_all,int length_useful,unsigned char *output)
{
#if squeeze_keys_when_macing==1
	#if count_mac_invocations==1
		if (count_mac_invocations_in_this_code_part)
		{
			//fprintf(stdout,"\nMac Invocation: length_all=%d\n",length_all-number_of_interleaved_keys/2); 
			mac_size_invocation_counters[length_all-number_of_interleaved_keys/2]+=1;
		}
	#endif
		//copy the useful bytes, the keys and squeeze the keys
		memcpy(combined_ub_and_keys_to_be_maced,input_in_ub,length_all-number_of_interleaved_keys);
		memcpy(combined_ub_and_keys_to_be_maced+length_all-number_of_interleaved_keys,input_in_km,number_of_interleaved_keys);
		squeeze_bytes_in_place((unsigned char*)combined_ub_and_keys_to_be_maced+length_all-number_of_interleaved_keys,number_of_interleaved_keys);
	#if mac_algorithm==0
		calc_and_set_mac_of_data_sha256(combined_ub_and_keys_to_be_maced,(length_all)-number_of_interleaved_keys/2,(output));
	#endif
	#if mac_algorithm==1
		calc_and_set_mac_of_data_aes_ecb(combined_ub_and_keys_to_be_maced,(length_all)-number_of_interleaved_keys/2,(length_useful),(output));
	#endif
	#if mac_algorithm==2
		calc_and_set_mac_of_data_aes_cmac(combined_ub_and_keys_to_be_maced,(length_all)-number_of_interleaved_keys/2,(output));
	#endif
	#if mac_algorithm==3
		calc_and_set_mac_of_data_aes_cbc(combined_ub_and_keys_to_be_maced,(length_all)-number_of_interleaved_keys/2,(output));
	#endif
	#if mac_algorithm==4
		calc_and_set_mac_of_data_aes_cbc(combined_ub_and_keys_to_be_maced,(length_all)-number_of_interleaved_keys/2,(output));
	#endif

#else
	#if count_mac_invocations==1
		if (count_mac_invocations_in_this_code_part)
		{
			//fprintf(stdout,"\nMac Invocation: length_all=%d\n",length_all);
			mac_size_invocation_counters[length_all]+=1;
		}
	#endif
	//copy the useful bytes and the keys
	memcpy(combined_ub_and_keys_to_be_maced,input_in_ub,length_all-number_of_interleaved_keys);
	memcpy(combined_ub_and_keys_to_be_maced+length_all-number_of_interleaved_keys,input_in_km,number_of_interleaved_keys);
	#if mac_algorithm==0
		calc_and_set_mac_of_data_sha256((combined_ub_and_keys_to_be_maced),(length_all),(output));
	#endif
	#if mac_algorithm==1
		calc_and_set_mac_of_data_aes_ecb((combined_ub_and_keys_to_be_maced),(length_all),(length_useful),(output));
	#endif
	#if mac_algorithm==2
		calc_and_set_mac_of_data_aes_cmac((combined_ub_and_keys_to_be_maced),(length_all),(output));
	#endif
	#if mac_algorithm==3
		calc_and_set_mac_of_data_aes_cbc((combined_ub_and_keys_to_be_maced),(length_all),(output));
	#endif
	#if mac_algorithm==4
		calc_and_set_mac_of_data_aes_cbc((combined_ub_and_keys_to_be_maced),(length_all),(output));
	#endif

#endif
}





int check_mac_for_error_ub_separate_km(unsigned char * input_in_ub,unsigned char * input_in_km, int total_mac_bytes, int useful_mac_bytes)
{
	int error=0;
	if (number_of_mac_bytes>0 &&  world==3 &&  !ignore_macs_last_moment_even_if_there_are_mac_bytes)
	{
		calc_and_set_mac_of_data_ub_separate_km(input_in_ub,input_in_km,total_mac_bytes,useful_mac_bytes,mac_to_be_verified);
		if (0!=memcmp(input_in_km+bytes_used_for_keyshares,mac_to_be_verified,number_of_mac_bytes))
		{	
			error=1;
		}
	}
	return error;
}


int check_mac_for_error_ub_separate_km_given_ub_in_globals(unsigned char * input_in_ub)
{
	unsigned long offset_of_position_in_ub_globals=(input_in_ub-(unsigned char *)&globals_useful_bytes);
	long blocks_from_start_of_globals=offset_of_position_in_ub_globals/number_of_global_useful_bytes;
	long offset_in_block_in_globals=offset_of_position_in_ub_globals%number_of_global_useful_bytes;
	unsigned char * position_of_block_in_keys_macs=(unsigned char*)&globals_keys_macs+blocks_from_start_of_globals*(number_of_interleaved_keys+number_of_mac_bytes);
	
	return check_mac_for_error_ub_separate_km(input_in_ub-offset_in_block_in_globals,  position_of_block_in_keys_macs, number_of_global_useful_bytes+number_of_interleaved_keys, number_of_global_useful_bytes);
}

int check_mac_for_error_ub_separate_km_given_mac_in_globals(unsigned char * input_in_km)
{
	unsigned long offset_of_position_in_km_globals=(input_in_km-(unsigned char *)&globals_keys_macs);
	long blocks_from_start_of_globals=offset_of_position_in_km_globals/(number_of_interleaved_keys+number_of_mac_bytes);
	long offset_in_block_in_globals=offset_of_position_in_km_globals%(number_of_interleaved_keys+number_of_mac_bytes);
	unsigned char * position_of_block_in_useful_bytes=(unsigned char*)&globals_useful_bytes+blocks_from_start_of_globals*(number_of_global_useful_bytes);
	
	return check_mac_for_error_ub_separate_km(position_of_block_in_useful_bytes,input_in_km-offset_in_block_in_globals, number_of_global_useful_bytes+number_of_interleaved_keys, number_of_global_useful_bytes);
}
