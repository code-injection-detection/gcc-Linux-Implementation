#include "headers_needed.h"

extern long total_bytes_allocated; /*total bytes allocated for the secure heap (perhaps different than the amount asked)*/
extern unsigned char * entire_memory_chunk; /*points to the start of the secure heap*/
extern unsigned char* last_unused_memory; /*old, use memory manager functions instead*/


extern long total_stack_bytes_allocated; /*total bytes allocated for the secure stack (perhaps different than the amount asked)*/
extern unsigned char * entire_stack_memory_chunk; /*points to the start of the secure stack*/
extern unsigned char* last_unused_stack_memory; /*practically the stack pointer*/

extern unsigned char get_next_keyshare();
extern unsigned char get_next_stack_keyshare();
extern void calc_and_set_mac_of_data_sha256(char * input, long length, char * output);



/*Returns the number of the useful chunks in stack memory*/
/*This number (let it be "n") satisfies the equation <useful_bytes_chunk_length>*(n) + <keyshare_bytes_chunk_length>*(n)= total_allocated_bytes */
long find_number_of_useful_stack_chunks(long allocated_bytes) //most often allocated bytes == total_bytes_allocated
{
  long a=allocated_bytes;
  long b=stack_bytes_used_for_keyshares;
  long c=stack_bytes_for_useful_data;
  long d=number_of_mac_bytes;

  return ((a)/(b+c+d));
}


/*checks whether the size of a pointer is 32 or 64 bits (typically distinguishes between 32 bit and 64 bit systems)*/
int get_ptr_size()
{
	return sizeof(void*);
}



/*Allocates <bytes_to_allocate> bytes into the secure stack. Practically just moves the stack pointer.
 * Returns the address of the stack pointer, before it was moved.
 * Allocates whole (integral) number of chunks!
*/
chunks_and_old_mem allocate_mem_into_secure_stack(long stack_bytes_to_allocate)
{
	
	long a=stack_bytes_to_allocate;
	long b=stack_bytes_used_for_keyshares;
	long c=stack_bytes_for_useful_data;
	long d=number_of_mac_bytes;
	long chunks_needed_to_allocate;
	chunks_and_old_mem ret;
	ret.old_mem=last_unused_stack_memory;
	
	if (stack_bytes_to_allocate==0)
	{
		ret.chunks_allocated=0;
		ret.old_mem=NULL;
		return ret;
	}
	
	chunks_needed_to_allocate=stack_bytes_to_allocate/c;
	
	if (chunks_needed_to_allocate*c<stack_bytes_to_allocate)
		chunks_needed_to_allocate++;
	
	ret.chunks_allocated=chunks_needed_to_allocate;
	
	//perform the allocation
	#if stack_should_grow_to_decreasing_numbers==0
		last_unused_stack_memory=((unsigned char*)last_unused_stack_memory) + (chunks_needed_to_allocate*(c+b+d));
	#else
		last_unused_stack_memory=((unsigned char*)last_unused_stack_memory) - (chunks_needed_to_allocate*(c+b+d));
	#endif
	
	#if check_for_secure_stack_allocation_overflow==1
		#if stack_should_grow_to_decreasing_numbers==0
			//stack overflow check
			//this way, allocating the last chunk results in the last_unused_stack_memory to reach out of the stack.
			if ((unsigned char*)last_unused_stack_memory > ((unsigned char*)GET_GLOBAL_PTR(globals.entire_stack_memory_chunk)) + total_stack_bytes_allocated)
			{
				//cancel last increase
				last_unused_stack_memory=((unsigned char*)last_unused_stack_memory) - (chunks_needed_to_allocate*(c+b+d));
				//return NULL
				ret.chunks_allocated=0;
				ret.old_mem=NULL;
				fprintf(stderr,"Error:Attempted to allocate more memory than the secure stack size.\n");
				return ret;
			}
		#else
			//stack overflow check
			//this way, allocating the last chunk results in the last_unused_stack_memory to reach out of the stack.
			if ((unsigned char*)last_unused_stack_memory < ((unsigned char*)GET_GLOBAL_PTR(globals.entire_stack_memory_chunk)))
			{
				//cancel last decrease
				last_unused_stack_memory=((unsigned char*)last_unused_stack_memory) + (chunks_needed_to_allocate*(c+b+d));
				//return NULL
				ret.chunks_allocated=0;
				ret.old_mem=NULL;
				fprintf(stderr,"Error:Attempted to allocate more memory than the secure stack size.\n");
				return ret;
			}
		#endif
	#endif
	
	return ret;
}


/*Allocates <bytes_to_allocate> bytes into the secure stack. Practically just moves the stack pointer.
 * Returns the address of the stack pointer, before it was moved.
 * Allocates whole (integral) number of chunks!
*/
unsigned char * allocate_mem_into_secure_stack_return_ptr_only(long stack_bytes_to_allocate)
{
	
	long a=stack_bytes_to_allocate;
	long b=stack_bytes_used_for_keyshares;
	long c=stack_bytes_for_useful_data;
	long d=number_of_mac_bytes;
	long chunks_needed_to_allocate;
	unsigned char * ret;
	ret=last_unused_stack_memory;
	
	if (stack_bytes_to_allocate==0)
	{
		ret=NULL;
		return ret;
	}
	
	chunks_needed_to_allocate=stack_bytes_to_allocate/c;
	
	if (chunks_needed_to_allocate*c<stack_bytes_to_allocate)
		chunks_needed_to_allocate++;
	
	//perform the allocation
	#if stack_should_grow_to_decreasing_numbers==0
		last_unused_stack_memory=((unsigned char*)last_unused_stack_memory) + (chunks_needed_to_allocate*(c+b+d));
	#else
		last_unused_stack_memory=((unsigned char*)last_unused_stack_memory) - (chunks_needed_to_allocate*(c+b+d));
	#endif
	
	#if check_for_secure_stack_allocation_overflow==1
		#if stack_should_grow_to_decreasing_numbers==0
			//stack overflow check
			//this way, allocating the last chunk results in the last_unused_stack_memory to reach out of the stack.
			if ((unsigned char*)last_unused_stack_memory > ((unsigned char*)GET_GLOBAL_PTR(globals.entire_stack_memory_chunk)) + total_stack_bytes_allocated)
			{
				//cancel last increase
				last_unused_stack_memory=((unsigned char*)last_unused_stack_memory) - (chunks_needed_to_allocate*(c+b+d));
				//return NULL
				ret=NULL;
				fprintf(stderr,"Error:Attempted to allocate more memory than the secure stack size.\n");
				return ret;
			}
		#else
			//stack overflow check
			//this way, allocating the last chunk results in the last_unused_stack_memory to reach out of the stack.
			if ((unsigned char*)last_unused_stack_memory < ((unsigned char*)GET_GLOBAL_PTR(globals.entire_stack_memory_chunk)))
			{
				//cancel last decrease
				last_unused_stack_memory=((unsigned char*)last_unused_stack_memory) + (chunks_needed_to_allocate*(c+b+d));
				//return NULL
				ret=NULL;
				fprintf(stderr,"Error:Attempted to allocate more memory than the secure stack size.\n");
				return ret;
			}
		#endif
	#endif
	
	return ret;
}


/*Allocates <bytes_to_allocate> bytes into the secure stack. Practically just moves the stack pointer.
 * Returns the address of the stack pointer, AFTER it is moved.
 * Allocates whole (integral) number of chunks!
*/
unsigned char * allocate_mem_into_secure_stack_return_ptr_only_after_alloc(long stack_bytes_to_allocate)
{
	
	long a=stack_bytes_to_allocate;
	long b=stack_bytes_used_for_keyshares;
	long c=stack_bytes_for_useful_data;
	long d=number_of_mac_bytes;
	long chunks_needed_to_allocate;
	unsigned char * ret;
	
	if (stack_bytes_to_allocate==0)
	{
		ret=NULL;
		return ret;
	}
	
	chunks_needed_to_allocate=stack_bytes_to_allocate/c;
	
	if (chunks_needed_to_allocate*c<stack_bytes_to_allocate)
		chunks_needed_to_allocate++;
	
	//perform the allocation
	#if stack_should_grow_to_decreasing_numbers==0
		last_unused_stack_memory=((unsigned char*)last_unused_stack_memory) + (chunks_needed_to_allocate*(c+b+d));
	#else
		last_unused_stack_memory=((unsigned char*)last_unused_stack_memory) - (chunks_needed_to_allocate*(c+b+d));
	#endif
	
	#if check_for_secure_stack_allocation_overflow==1
		#if stack_should_grow_to_decreasing_numbers==0
			//stack overflow check
			//this way, allocating the last chunk results in the last_unused_stack_memory to reach out of the stack.
			if ((unsigned char*)last_unused_stack_memory > ((unsigned char*)GET_GLOBAL_PTR(globals.entire_stack_memory_chunk)) + total_stack_bytes_allocated)
			{
				//cancel last increase
				last_unused_stack_memory=((unsigned char*)last_unused_stack_memory) - (chunks_needed_to_allocate*(c+b+d));
				//return NULL
				ret=NULL;
				fprintf(stderr,"Error:Attempted to allocate more memory than the secure stack size.\n");
				return ret;
			}
		#else
			//stack overflow check
			//this way, allocating the last chunk results in the last_unused_stack_memory to reach out of the stack.
			if ((unsigned char*)last_unused_stack_memory < ((unsigned char*)GET_GLOBAL_PTR(globals.entire_stack_memory_chunk)))
			{
				//cancel last decrease
				last_unused_stack_memory=((unsigned char*)last_unused_stack_memory) + (chunks_needed_to_allocate*(c+b+d));
				//return NULL
				ret=NULL;
				fprintf(stderr,"Error:Attempted to allocate more memory than the secure stack size.\n");
				return ret;
			}
		#endif
	#endif
	
	return last_unused_stack_memory;
}


/*Allocates <chunks_to_allocate> chunks into the secure stack. Practically just moves the stack pointer.
 * Returns the address of the stack pointer, before it was moved.
 * Allocates whole (integral) number of chunks!
*/
unsigned char * allocate_mem_into_secure_stack_in_chunks(long chunks_to_allocate)
{
	long b=stack_bytes_used_for_keyshares;
	long c=stack_bytes_for_useful_data;
	long d=number_of_mac_bytes;
	unsigned char * old_mem=last_unused_stack_memory;
	
	if (chunks_to_allocate==0)
	{
		old_mem=NULL;
		return old_mem;
	}
	
	//perform the allocation
	#if stack_should_grow_to_decreasing_numbers==0
		last_unused_stack_memory=((unsigned char*)last_unused_stack_memory) + (chunks_to_allocate)*(b+c+d);
	#else
		last_unused_stack_memory=((unsigned char*)last_unused_stack_memory) - (chunks_to_allocate)*(b+c+d);
	#endif
	
	#if check_for_secure_stack_allocation_overflow==1
		#if stack_should_grow_to_decreasing_numbers==0
			//stack overflow check
			//this way, allocating the last chunk results in the last_unused_stack_memory to reach out of the stack.
			if ((unsigned char*)last_unused_stack_memory > ((unsigned char*)GET_GLOBAL_PTR(globals.entire_stack_memory_chunk)) + total_stack_bytes_allocated)
			{
				//cancel last increase
				last_unused_stack_memory=((unsigned char*)last_unused_stack_memory) - (chunks_to_allocate)*(b+c+d);
				//return NULL
				old_mem=NULL;
				fprintf(stderr,"Error:Attempted to allocate more memory than the secure stack size.\n");
				return old_mem;
			}
		#else
			//stack overflow check
			//this way, allocating the last chunk results in the last_unused_stack_memory to reach out of the stack.
			if ((unsigned char*)last_unused_stack_memory < ((unsigned char*)GET_GLOBAL_PTR(globals.entire_stack_memory_chunk)))
			{
				//cancel last decrease
				last_unused_stack_memory=((unsigned char*)last_unused_stack_memory) + (chunks_to_allocate)*(b+c+d);
				//return NULL
				old_mem=NULL;
				fprintf(stderr,"Error:Attempted to allocate more memory than the secure stack size.\n");
				return old_mem;
			}
		#endif
	#endif
	
	return old_mem;
	
	
}



/*Allocates <chunks_to_allocate> chunks into the secure stack. Practically just moves the stack pointer.
 * Returns the address of the stack pointer, AFTER it is moved.
 * Allocates whole (integral) number of chunks!
*/
unsigned char * allocate_mem_into_secure_stack_in_chunks_return_ptr_after_alloc(long chunks_to_allocate)
{
	long b=stack_bytes_used_for_keyshares;
	long c=stack_bytes_for_useful_data;
	long d=number_of_mac_bytes;
	unsigned char * old_mem;
	
	if (chunks_to_allocate==0)
	{
		old_mem=NULL;
		return old_mem;
	}
	
	//perform the allocation
	#if stack_should_grow_to_decreasing_numbers==0
		last_unused_stack_memory=((unsigned char*)last_unused_stack_memory) + (chunks_to_allocate)*(b+c+d);
	#else
		last_unused_stack_memory=((unsigned char*)last_unused_stack_memory) - (chunks_to_allocate)*(b+c+d);
	#endif
	
	#if check_for_secure_stack_allocation_overflow==1
		#if stack_should_grow_to_decreasing_numbers==0
			//stack overflow check
			//this way, allocating the last chunk results in the last_unused_stack_memory to reach out of the stack.
			if ((unsigned char*)last_unused_stack_memory > ((unsigned char*)GET_GLOBAL_PTR(globals.entire_stack_memory_chunk)) + total_stack_bytes_allocated)
			{
				//cancel last increase
				last_unused_stack_memory=((unsigned char*)last_unused_stack_memory) - (chunks_to_allocate)*(b+c+d);
				//return NULL
				old_mem=NULL;
				fprintf(stderr,"Error:Attempted to allocate more memory than the secure stack size.\n");
				return old_mem;
			}
		#else
			//stack overflow check
			//this way, allocating the last chunk results in the last_unused_stack_memory to reach out of the stack.
			if ((unsigned char*)last_unused_stack_memory < ((unsigned char*)GET_GLOBAL_PTR(globals.entire_stack_memory_chunk)))
			{
				//cancel last decrease
				last_unused_stack_memory=((unsigned char*)last_unused_stack_memory) + (chunks_to_allocate)*(b+c+d);
				//return NULL
				old_mem=NULL;
				fprintf(stderr,"Error:Attempted to allocate more memory than the secure stack size.\n");
				return old_mem;
			}
		#endif
	#endif
	
	return last_unused_stack_memory;
}


/*Frees <chunks_to_free> chunks from the secure stack. Practically just moves the stack pointer.
 * Frees whole (integral) number of chunks!
*/
void free_mem_from_secure_stack_in_chunks(long chunks_to_free)
{
	long b=stack_bytes_used_for_keyshares;
	long c=stack_bytes_for_useful_data;
	long d=number_of_mac_bytes;
	
	//perform the deallocation
	#if stack_should_grow_to_decreasing_numbers==0
		last_unused_stack_memory=((unsigned char*)last_unused_stack_memory) - (chunks_to_free)*(b+c+d);
	#else
		last_unused_stack_memory=((unsigned char*)last_unused_stack_memory) + (chunks_to_free)*(b+c+d);
	#endif
}


/*Frees <stack_bytes_to_free> bytes from the secure stack. Practically just moves the stack pointer.
 * Frees whole (integral) number of chunks!
*/
void free_mem_from_secure_stack(long stack_bytes_to_free)
{
	long a=stack_bytes_to_free;
	long b=stack_bytes_used_for_keyshares;
	long c=stack_bytes_for_useful_data;
	long d=number_of_mac_bytes;
	long chunks_needed_to_free;
	
	chunks_needed_to_free=stack_bytes_to_free/c;
	
	if (chunks_needed_to_free*c<stack_bytes_to_free)
		chunks_needed_to_free++;
	
	//perform the deallocation
	#if stack_should_grow_to_decreasing_numbers==0
		last_unused_stack_memory=((unsigned char*)last_unused_stack_memory) - (chunks_needed_to_free*(c+b+d));
	#else
		last_unused_stack_memory=((unsigned char*)last_unused_stack_memory) + (chunks_needed_to_free*(c+b+d));
	#endif
	
}


/*Frees <chunks_to_free> chunks from the secure stack. Practically just moves the stack pointer.
*/
void free_chunks_from_secure_stack(long chunks_to_free)
{
	long b=stack_bytes_used_for_keyshares;
	long c=stack_bytes_for_useful_data;
	long d=number_of_mac_bytes;
	long chunks_needed_to_free=chunks_to_free;
	
	//perform the deallocation
	#if stack_should_grow_to_decreasing_numbers==0
		last_unused_stack_memory=((unsigned char*)last_unused_stack_memory) - (chunks_needed_to_free*(c+b+d));
	#else
		last_unused_stack_memory=((unsigned char*)last_unused_stack_memory) + (chunks_needed_to_free*(c+b+d));
	#endif
}


