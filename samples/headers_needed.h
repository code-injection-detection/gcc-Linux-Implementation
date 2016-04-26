#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <errno.h>
#include <signal.h>
#include <unistd.h>
#include <sys/types.h>


#ifndef number_of_interleaved_keys
#define number_of_interleaved_keys (5)
#endif

#ifndef bytes_used_for_keyshares
#define bytes_used_for_keyshares (5)
#endif				//This one is for the memory, not for the interleaved NOPs. The number shuld be the same as number_of_interleaved_keys

#ifndef bytes_to_allocate_on_start
#define bytes_to_allocate_on_start (1200)
#endif

#ifndef bytes_between_keyshares
#define bytes_between_keyshares (4)
#endif				//practically the "useful" bytes. Important: It is not (currently) possible to split this bytegroup into multiple parts.
				    //which means that should someone allocate x bytegroups but does not need the last one as a whole, we cannot give the rest of it to someone else
