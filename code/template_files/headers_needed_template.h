#ifndef HEADERS_NEEDED_H
#define HEADERS_NEEDED_H

#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <errno.h>
#include <signal.h>
#include <unistd.h>
#include <sys/types.h>
#include <stdarg.h>
#include <string.h>
#include <math.h>
#include <pthread.h>
#include <semaphore.h>
#include <ctype.h>
#include <netdb.h>
#include <sys/time.h>
#include <sys/socket.h>
#include <arpa/inet.h>
#include <netinet/in.h>
#include <openssl/conf.h>
#include <openssl/evp.h>
#include <openssl/err.h>
#include <openssl/bn.h>

#define mac_algorithm 0  //0->sha256, 1-> AES_ECB with MAC=x*A+B, 2->CBC_MAC with AES (not implemented yet)


#ifndef number_of_interleaved_keys 
#define number_of_interleaved_keys (5)
#endif				//in code

#ifndef bytes_used_for_keyshares
#define bytes_used_for_keyshares (5)
#endif				//This one is for the memory, not for the interleaved NOPs. The number should be the same as number_of_interleaved_keys

#ifndef bytes_to_allocate_on_start
#define bytes_to_allocate_on_start (1024)
#endif

#ifndef bytes_for_useful_data
#define bytes_for_useful_data (4)
#endif				//The "useful" bytes. Important: It is not (currently) possible to split this bytegroup into multiple parts.
				    //which means that should someone allocate x bytegroups but does not need the last one as a whole, we cannot give the rest of it to someone else

#ifndef number_of_canaries
#define number_of_canaries (2)
#endif				//The number of the canary values before the keyshares in the code, to denote that keyshares follow.
				    //which means that should someone allocate x bytegroups but does not need the last one as a whole, we cannot give the rest of it to someone else

#ifndef canary_value
#define canary_value (0x42)
#endif				//the canary value. Does not matter what it is. Must be the same as in Secure_Machine_Code.java


#ifndef stack_bytes_used_for_keyshares
#define stack_bytes_used_for_keyshares (5)
#endif				//This one is for the stack. The number should be the same as number_of_interleaved_keys

#ifndef stack_bytes_to_allocate_on_start
#define stack_bytes_to_allocate_on_start (1024)
#endif

#ifndef stack_bytes_for_useful_data
#define stack_bytes_for_useful_data (4)
#endif				//practically the "useful" bytes in the stack. Important: It is not (currently) possible to split this bytegroup into multiple parts.
				    //which means that should someone allocate x bytegroups but does not need the last one as a whole, we cannot give the rest of it to someone else

#ifndef number_of_global_useful_bytes
#define number_of_global_useful_bytes (8)
#endif				//The size of the global useful bytes

#ifndef number_of_mac_bytes
#define number_of_mac_bytes (4)
#endif				//The size of the Message Authentication Code (MAC) in bytes. The MAC follows the keyshares


#include "secure_getters_setters.h"
#include "crypto_functions.h"


#if mac_algorithm==0
#define calc_and_set_mac_of_data(input,length_all,length_useful,output) calc_and_set_mac_of_data_sha256((input),(length_all),(output))
#endif
#if mac_algorithm==1
#define calc_and_set_mac_of_data(input,length_all,length_useful,output) calc_and_set_mac_of_data_aes_ecb((input),(length_all),(length_useful),(output))
#endif

#endif
