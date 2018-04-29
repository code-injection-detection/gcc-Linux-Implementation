#include "headers_needed.h"

extern long total_bytes_allocated; /*total bytes allocated for the secure heap (perhaps different than the amount asked)*/
extern long total_sheap_bytes_allocated;
extern unsigned char * entire_memory_chunk; /*points to the start of the secure heap*/
extern unsigned char * secure_heap;
extern unsigned char* last_unused_memory; /*old, use memory manager functions instead*/


extern long total_stack_bytes_allocated; /*total bytes allocated for the secure stack (perhaps different than the amount asked)*/
extern unsigned char * entire_stack_memory_chunk; /*points to the start of the secure stack*/
extern unsigned char* last_unused_stack_memory; /*practically the stack pointer*/

extern unsigned char get_next_keyshare();
extern unsigned char get_next_stack_keyshare();
extern void calc_and_set_mac_of_data_sha256(char * input, long length, char * output);



int pointer_offset_from_start_of_block(unsigned long ptr)
{
#if all_getter_setter_arguments_point_at_start_of_blocks
	return 0;
#else
	//Here since it's a function that is implemented in hardware, We do not get the secure heap/stack start woth a secure global fetch
	//We assume that the CPU has their limits somewhere
	if ((unsigned long)secure_heap<=ptr && (unsigned long)(secure_heap+total_sheap_bytes_allocated)>ptr)
	{
		//in secure heap
		return ((ptr-(unsigned long)secure_heap) % (bytes_for_useful_data + bytes_used_for_keyshares+ number_of_mac_bytes));
	}
	else if ((unsigned long)entire_stack_memory_chunk<=ptr && (unsigned long)(entire_stack_memory_chunk+total_stack_bytes_allocated)>ptr)
	{
		//in secure_stack
		return ((ptr-(unsigned long)entire_stack_memory_chunk) % (stack_bytes_for_useful_data + stack_bytes_used_for_keyshares+ number_of_mac_bytes));
	}
	if (((unsigned long)&globals)<=ptr && (unsigned long)(((unsigned char*)&globals)+sizeof(globals))>ptr)
	{
		//in globals
		return ((ptr-(unsigned long)&globals) % (bytes_for_useful_data + bytes_used_for_keyshares+ number_of_mac_bytes));
	}

	return 0; //leave that as default for backwards compatibility
#endif
	
}



/************************************************************************************************/
/************************************************************************************************/
/********************************** HEAP FUNCTIONS **********************************************/
/************************************************************************************************/
/************************************************************************************************/



/*Inserts the keyshares into the big chunk of memory, leaving gaps for useful data*/
/*Called in the memory initialization phase*/
void insert_keys_into_mem(unsigned char * mem)
{
  long i,j;
  unsigned char * p;
  int type_of_bytes=0; //0->useful bytes, 1-> keyshares, 2->mac bytes
  
  p=&(mem[0]);
  

  //insert keyshares
  for (i=0;i<total_bytes_allocated;)
  {

    if (type_of_bytes==1)
    {
		for (j=0;j<bytes_used_for_keyshares;j++)
		{
			//inserting keys
			p[i]=get_next_keyshare();
			//printf("got keyshare:0x%02x\n",p[i]);
			i++;
		}
		type_of_bytes=2;
    }
    else if (type_of_bytes==0)
    {
		//for printing purposes, insert NULLs
		for (j=0;j<bytes_for_useful_data;j++)
		{
			p[i]='\0';
			i++;
		}
		type_of_bytes=1;
    }
    else if (type_of_bytes==2)
    {
		//for printing purposes, insert NULLs
		/*for (j=0;j<number_of_mac_bytes;j++)
		{
			p[i]='\0';
			i++;
		}
		*/
		//Insert the truncated mac of the previous bytes
		if (!ignore_macs_even_if_there_are_mac_bytes)
		{
			update_mac_when_setting_data(&p[i]-bytes_for_useful_data-bytes_used_for_keyshares,
										 bytes_for_useful_data+bytes_used_for_keyshares,
										 bytes_for_useful_data,
										 &p[i]);
		}
		i+=number_of_mac_bytes;
		type_of_bytes=0;
	}
  }

}




/*Receives "data_size" bytes of data, and inserts them into memory. Insertion starts at "mem_where_to_insert".
Returns how many groups (chunks) of useful data have actually been used.*/
/*Obsolete. Use set_secure_data() instead*/
long insert_data_into_mem(long data_size,unsigned char * data, unsigned char * mem_where_to_insert)
{
  long i,j;
  unsigned char * p;
  long chunks=0;
  long total_data_inserted=0;
  long data_remaining;

	
  p=&mem_where_to_insert[0];
  i=0;  


  while(total_data_inserted<data_size)
  {
	//actual insertion
	chunks++;
	data_remaining=data_size-total_data_inserted;
	//actual insertion
	if (data_remaining<=bytes_for_useful_data)
	{
		memcpy(&p[i],&data[total_data_inserted],data_remaining);
		total_data_inserted=data_size;
		//update mac
		if (!ignore_macs_even_if_there_are_mac_bytes)
		{
			update_mac_when_setting_data(&p[i],
										 bytes_for_useful_data+bytes_used_for_keyshares,
										 bytes_for_useful_data,
										 &p[i]+bytes_for_useful_data+bytes_used_for_keyshares);
		}
	}
	else
	{
		memcpy(&p[i],&data[total_data_inserted],bytes_for_useful_data);
		total_data_inserted+=bytes_for_useful_data;
		//update mac
		if (!ignore_macs_even_if_there_are_mac_bytes)
		{
			update_mac_when_setting_data(&p[i],
										 bytes_for_useful_data+bytes_used_for_keyshares,
										 bytes_for_useful_data,
										 &p[i]+bytes_for_useful_data+bytes_used_for_keyshares);
		}
	}
	i+=bytes_for_useful_data+bytes_used_for_keyshares+number_of_mac_bytes;
  }

  return chunks;

}

/*Gets data from the secure heap*/
/*res is a pointer to where the retrieved secure data will be written. The last two arguments are useful if called for an array element.*/
/*Set data_size to the size of the element you want to retrieve. For example "sizeof(int)" */
/*If seeking an array element, set isarray = 1. Set data_start to the start of the array*/
/*If not seeking an array element, set isarray to 0. Then arrayindex will be ignored*/
/*If isarray = 2, then this means that we want a block of data from *data_start, with offset <arrayindex> *BYTES*!*/
/*Works only for 1-d arrays, 2 index conversion to 1 index should be done beforehand. Of course in a next implementation ->*/
/*-> the function can be extended to support multiple dimension arrays*/
/*res must have been pre-allocated.*/
void get_secure_data(void * res,long data_size, unsigned char * data_start, int isarray, long arrayindex)
{
  
  unsigned char* result;
  long i,j,k;
  unsigned char * p;
  long total_data_retrieved=0;
  long chunks_forward;
  long data_size_for_offset;
  long data_remaining;
  long data_remaining_till_end_of_chunk;

  result=res;

  p=data_start;

  if (isarray==2)
	data_size_for_offset=1;
  else
    data_size_for_offset=data_size;

  i=0;
  if (isarray)
  {
	
	chunks_forward=(arrayindex*data_size_for_offset)/(bytes_for_useful_data);
	if (chunks_forward*bytes_for_useful_data==(arrayindex*data_size_for_offset))
	{
		p+=chunks_forward*(bytes_for_useful_data + bytes_used_for_keyshares+ number_of_mac_bytes); //We set p to point to the next useful area
	}
	else
	{
		//Well that's a problem. We have to start in the middle of a chunk.
		//What we'll do is that we will retrieve the part up to the end of the chunk.
		p+=chunks_forward*(bytes_for_useful_data + bytes_used_for_keyshares+number_of_mac_bytes);
		j=(arrayindex*data_size_for_offset)-(chunks_forward*bytes_for_useful_data);


		if(data_size<=bytes_for_useful_data-j)
		{
			data_remaining_till_end_of_chunk=data_size;
		}
		else
		{
			data_remaining_till_end_of_chunk=bytes_for_useful_data-j;
		}
		
		if (!ignore_macs_even_if_there_are_mac_bytes)
		{
			verify_mac_on_the_fly(p,bytes_for_useful_data+bytes_used_for_keyshares,bytes_for_useful_data);
		}
		memcpy(&result[total_data_retrieved],&p[j],data_remaining_till_end_of_chunk);

		total_data_retrieved+=data_remaining_till_end_of_chunk;
		p+=bytes_for_useful_data + bytes_used_for_keyshares+number_of_mac_bytes;
		
	}
  }


  while(total_data_retrieved<data_size)
  {
	//actual retrieval
	data_remaining=data_size-total_data_retrieved;
	if (data_remaining<=bytes_for_useful_data)
	{
		if (!ignore_macs_even_if_there_are_mac_bytes)
		{
			verify_mac_on_the_fly(&(p[i]),bytes_for_useful_data+bytes_used_for_keyshares,bytes_for_useful_data);
		}
		memcpy(&result[total_data_retrieved],&p[i],data_remaining);
		total_data_retrieved=data_size;
	}
	else
	{
		if (!ignore_macs_even_if_there_are_mac_bytes)
		{
			verify_mac_on_the_fly(&(p[i]),bytes_for_useful_data+bytes_used_for_keyshares,bytes_for_useful_data);
		}
		memcpy(&result[total_data_retrieved],&p[i],bytes_for_useful_data);
		total_data_retrieved+=bytes_for_useful_data;
	}
	i+=bytes_for_useful_data+bytes_used_for_keyshares+number_of_mac_bytes;
  }

}

/*Cousin function of insert_data_into_mem(), but works with array elements as well. */
/*Structure similar to get_secure_data(), reading data from *source*/
void * set_secure_data(void * source,long data_size, unsigned char * data_start, int isarray, long arrayindex)
{

  unsigned char* src;
  long i,j,k;
  unsigned char * p;
  unsigned char * retval;
  long total_data_set=0;
  long chunks_forward;
  long data_size_for_offset;
  long data_remaining;
  long data_remaining_till_end_of_chunk;

  p=data_start;
  src=source;

  if (isarray==2)
	data_size_for_offset=1;
  else
    data_size_for_offset=data_size;

  i=0;
  if (isarray)
  {
	chunks_forward=(arrayindex*data_size_for_offset)/(bytes_for_useful_data);
	if (chunks_forward*bytes_for_useful_data==(arrayindex*data_size_for_offset))
	{
		p+=chunks_forward*(bytes_for_useful_data + bytes_used_for_keyshares+number_of_mac_bytes); //We set p to point to the next useful area
		retval=&p[0];
	}
	else
	{
		//Well that's a problem. We have to start in the middle of a chunk.
		//What we'll do is that we will set the part up to the end of the chunk.
		p+=chunks_forward*(bytes_for_useful_data + bytes_used_for_keyshares+number_of_mac_bytes);
		j=(arrayindex*data_size_for_offset)-(chunks_forward*bytes_for_useful_data);

		if(data_size<=bytes_for_useful_data-j)
		{
			data_remaining_till_end_of_chunk=data_size;
		}
		else
		{
			data_remaining_till_end_of_chunk=bytes_for_useful_data-j;
		}
		
		retval=&p[j];
		memcpy(&p[j],&src[total_data_set],data_remaining_till_end_of_chunk);
		//update macs
		if (!ignore_macs_even_if_there_are_mac_bytes)
		{
			update_mac_when_setting_data(p,
										 bytes_for_useful_data+bytes_used_for_keyshares,
										 bytes_for_useful_data,
										 p+bytes_for_useful_data+bytes_used_for_keyshares);
		}

		total_data_set+=data_remaining_till_end_of_chunk;
		p+=bytes_for_useful_data + bytes_used_for_keyshares+number_of_mac_bytes;
		
	}
  }
  else
  {
	  retval=&p[0];
  }


  while(total_data_set<data_size)
  {
	//actual set
	data_remaining=data_size-total_data_set;
	if (data_remaining<=bytes_for_useful_data)
	{
		memcpy(&p[i],&src[total_data_set],data_remaining);
		//update macs
		if (!ignore_macs_even_if_there_are_mac_bytes)
		{
			update_mac_when_setting_data(&p[i],
										 bytes_for_useful_data+bytes_used_for_keyshares,
										 bytes_for_useful_data,
										 &p[i]+bytes_for_useful_data+bytes_used_for_keyshares);
		}
		total_data_set=data_size;
	}
	else
	{
		memcpy(&p[i],&src[total_data_set],bytes_for_useful_data);
		//update macs
		if (!ignore_macs_even_if_there_are_mac_bytes)
		{
			update_mac_when_setting_data(&p[i],
										 bytes_for_useful_data+bytes_used_for_keyshares,
										 bytes_for_useful_data,
										 &p[i]+bytes_for_useful_data+bytes_used_for_keyshares);
		}
		total_data_set+=bytes_for_useful_data;
	}
	i+=bytes_for_useful_data+bytes_used_for_keyshares+number_of_mac_bytes;

  }
  return retval;

}


/************************************************************************************************/
/********************************SECURE HEAP GETTERS START***************************************/
/************************************************************************************************/

/* Calculates how many bytes are needed in the secure structures for an equivalent offset in the normal memory*/
long secure_bytes_to_move_forward_for_unsecure_byte_offset(long offset_from_chunk_start_in_secure_mem,long unsecure_byte_offset)
{
	long remove_bytes_till_end_of_block=unsecure_byte_offset -(bytes_for_useful_data-offset_from_chunk_start_in_secure_mem);
	long bytes_in_many_blocks=(remove_bytes_till_end_of_block/(bytes_for_useful_data))*
							  (bytes_used_for_keyshares+number_of_mac_bytes+bytes_for_useful_data);
	long bytes_left=remove_bytes_till_end_of_block%(bytes_for_useful_data);
	return (remove_bytes_till_end_of_block+bytes_in_many_blocks+bytes_left);
}


//Macros for simple variable heap getters
/*Return the value of a securely allocated variable. Of course secure_malloc must have been called before*/
#define create_heap_getter( vartype, ourtype) \
                   vartype get_##ourtype (void * start_of_secure_data) \
                   { \
                    vartype res[1]; \
                    get_secure_data(res,sizeof( vartype ),start_of_secure_data,0,0);\
                    return (res[0]);\
                   }
                   
#define LOOP_ACROSS_HEAP_GETTERS create_heap_getter( char,char );\
                                   create_heap_getter( int,int );\
                                   create_heap_getter( long int,long_int );\
                                   /*pay attention to the type of the pointer when calling*/ \
                                   create_heap_getter( void*,pointer );\
                                   create_heap_getter( float,float );\
                                   create_heap_getter( double,double );\
                                   
LOOP_ACROSS_HEAP_GETTERS
;

/*Generic get array element. Writes result to *res, which must have been preallocated*/
void get_array_element(long data_size, void * start_of_array, long index, void * res)
{
	get_secure_data(res,data_size,start_of_array,1,index);
}

/*Gets an array element up to 128 bits*/
unsigned __int128 get_array_element_no_prealloc_up_to_128bits(long data_size, void * start_of_array, long index)
{
	unsigned __int128 res[1];
	res[0]=0;
	get_secure_data(res,data_size,start_of_array,1,index);
	return res[0];
}

//Macro for the simple variable heap array getters
#define create_heap_array_getter( vartype, ourtype) \
                   vartype get_##ourtype##_array_element (void * start_of_array, long index) \
                   { \
                    vartype res[1]; \
                    get_secure_data(res,sizeof( vartype ),start_of_array,1,index);\
                    return (res[0]);\
                   }
                   
#define LOOP_ACROSS_HEAP_ARRAY_GETTERS create_heap_array_getter( char,char );\
                                   create_heap_array_getter( int,int );\
                                   create_heap_array_getter( long int,long_int );\
                                   /*pay attention to the type of the pointer when calling*/ \
                                   create_heap_array_getter( void*,pointer );\
                                   create_heap_array_getter( float,float );\
                                   create_heap_array_getter( double,double );\
                                   
LOOP_ACROSS_HEAP_ARRAY_GETTERS
;                                   

//gets a block of data from the secure heap. Writes to *res, which must have been preallocated
void get_arbitrary_block_in_heap(long data_size,void * start_of_block,void * res)
{
	get_secure_data(res,data_size, start_of_block,0,0);
}


//gets a block of data from the secure heap, using offset bytes. Writes to *res, which must have been preallocated
void get_arbitrary_block_in_heap_with_offset(long data_size,void * start,long offset,void * res)
{
	get_secure_data(res,data_size, start,2,offset);
}


#define create_heap_getter_from_arb_place( vartype, ourtype) \
                vartype get_##ourtype##_from_arb_memory_position(void * start,long offset_bytes) \
                {\
                vartype res[1];\
                get_arbitrary_block_in_heap_with_offset(sizeof( vartype ),start,offset_bytes,&res[0]);\
                return res[0];\
                }


#define LOOP_ACROSS_HEAP_ARB_ACCESS_GET create_heap_getter_from_arb_place( char,char );\
                                   create_heap_getter_from_arb_place( int,int );\
                                   create_heap_getter_from_arb_place( long int,long_int );\
                                   /*pay attention to the type of the pointer when calling*/ \
                                   create_heap_getter_from_arb_place( void*,pointer );\
                                   create_heap_getter_from_arb_place( float,float );\
                                   create_heap_getter_from_arb_place( double,double );\





//Functions that get a simple variable from an arbitraty position from the memory
LOOP_ACROSS_HEAP_ARB_ACCESS_GET
;


#define create_heap_getter_from_arb_address_no_offset( vartype, ourtype) \
                vartype get_##ourtype##_from_arb_address_no_offset(void * address) \
                {\
		            vartype res[1];\
					int offset;\
					if (all_getter_setter_arguments_point_at_start_of_blocks) \
					{ \
						return get_##ourtype (address);\
					}\
					else\
					{\
						offset=pointer_offset_from_start_of_block((unsigned long)address);\
						get_arbitrary_block_in_heap_with_offset(sizeof( vartype ),(unsigned char*) address-offset, offset,&res[0]);\
						return res[0];\
					}\
                }


#define LOOP_ACROSS_HEAP_ARB_ACCESS_ADDR_NO_OFFSET_GET create_heap_getter_from_arb_address_no_offset( char,char );\
                                   create_heap_getter_from_arb_address_no_offset( int,int );\
                                   create_heap_getter_from_arb_address_no_offset( long int,long_int );\
                                   /*pay attention to the type of the pointer when calling*/ \
                                   create_heap_getter_from_arb_address_no_offset( void*,pointer );\
                                   create_heap_getter_from_arb_address_no_offset( float,float );\
                                   create_heap_getter_from_arb_address_no_offset( double,double );\





//Functions that get a simple variable from an arbitraty address, with only the address given
LOOP_ACROSS_HEAP_ARB_ACCESS_ADDR_NO_OFFSET_GET
;

unsigned char* get_address_of_sheap_array_element(long data_size, void * start_of_array, long index)
{
	unsigned char *retval;
	int ptr_off;
	long bytes_to_cover;
	long chunks_to_go_forward;
	
	retval=start_of_array;
	ptr_off=pointer_offset_from_start_of_block((unsigned long)retval);
	
	bytes_to_cover=data_size*index;
	
	if (bytes_to_cover>=bytes_for_useful_data-ptr_off)
	{
		retval+=(bytes_for_useful_data-ptr_off); 
		retval+=bytes_used_for_keyshares+number_of_mac_bytes; //next block
	}
	else
	{
		retval+=bytes_to_cover;
		return retval;
	}
	
	bytes_to_cover-=(bytes_for_useful_data-ptr_off);
	chunks_to_go_forward=bytes_to_cover/bytes_for_useful_data;
	retval+=chunks_to_go_forward*(bytes_for_useful_data+bytes_used_for_keyshares+number_of_mac_bytes);
	retval+=bytes_to_cover%(bytes_for_useful_data);
	return retval;
}

//getters of secure heap metadata
long get_sheap_meta_size(void * meta)
{
	return get_long_int((sheap_metadata*)meta);
}

sheap_metadata* get_sheap_meta_previous(void * meta)
{
	return ((sheap_metadata*) get_long_int_array_element((sheap_metadata*)meta,1));
}

sheap_metadata* get_sheap_meta_next(void * meta)
{
	return ((sheap_metadata*) get_long_int_array_element((sheap_metadata*)meta,2));
}

long get_sheap_meta_in_use(void * meta)
{
	return get_long_int_array_element((sheap_metadata*)meta,3);
}


/************************************************************************************************/
/********************************SECURE HEAP GETTERS END*****************************************/
/************************************************************************************************/


/************************************************************************************************/
/********************************SECURE HEAP SETTERS START***************************************/
/************************************************************************************************/

/*Set a securely allocated variable. Of course secure_malloc must have been called before*/
/*These functions reads from source */

#define create_heap_setter( vartype, ourtype) \
                   vartype set_##ourtype (void * start_of_secure_data,vartype source) \
                   { \
                    insert_data_into_mem(sizeof( vartype ),(unsigned char *)&source,(unsigned char *)start_of_secure_data);\
                    return source;\
                   }
                   
#define LOOP_ACROSS_HEAP_SETTERS create_heap_setter( char,char );\
                                   create_heap_setter( int,int );\
                                   create_heap_setter( long int,long_int );\
                                   /*pay attention to the type of the pointer when calling*/ \
                                   create_heap_setter( void*,pointer );\
                                   create_heap_setter( float,float );\
                                   create_heap_setter( double,double );\
                                   
LOOP_ACROSS_HEAP_SETTERS
;

/*Generic set_array_element.Reads data from *source*/
void* set_array_element(long data_size, void * start_of_array, long index, void * source)
{
	return set_secure_data(source,data_size,start_of_array,1,index);
}

#define create_heap_array_setter( vartype, ourtype) \
                   vartype set_##ourtype##_array_element (void * start_of_array, long index, vartype source) \
                   { \
                    vartype src=source;\
                    set_secure_data(&src,sizeof( vartype ),start_of_array,1,index); \
                    return source; \
                   }
                   
#define LOOP_ACROSS_HEAP_ARRAY_SETTERS create_heap_array_setter( char,char );\
                                   create_heap_array_setter( int,int );\
                                   create_heap_array_setter( long int,long_int );\
                                   /*pay attention to the type of the pointer when calling*/ \
                                   create_heap_array_setter( void*,pointer );\
                                   create_heap_array_setter( float,float );\
                                   create_heap_array_setter( double,double );\
                                   
LOOP_ACROSS_HEAP_ARRAY_SETTERS
;                                   

//sets a block of data to the secure heap. reads from *src, which must have been preallocated
void* set_arbitrary_block_in_heap(long data_size,void * start_of_block,void * src)
{
	set_secure_data(src,data_size, start_of_block,0,0);
    return src;
}

//sets a block of data to the secure heap,using offset bytes. reads from *src, which must have been preallocated
void* set_arbitrary_block_in_heap_with_offset(long data_size,void * start,long offset,void * src)
{
	set_secure_data(src,data_size, start,2,offset);
    return src;
}

#define create_heap_setter_from_arb_place( vartype, ourtype) \
                vartype set_##ourtype##_from_arb_memory_position(void * start,long offset_bytes, vartype source) \
                {\
                vartype src=source;\
                set_arbitrary_block_in_heap_with_offset(sizeof( vartype ),start,offset_bytes ,&src); \
                return src;\
                }


#define LOOP_ACROSS_HEAP_ARB_ACCESS_SET create_heap_setter_from_arb_place( char,char );\
                                   create_heap_setter_from_arb_place( int,int );\
                                   create_heap_setter_from_arb_place( long int,long_int );\
                                   /*pay attention to the type of the pointer when calling*/ \
                                   create_heap_setter_from_arb_place( void*,pointer );\
                                   create_heap_setter_from_arb_place( float,float );\
                                   create_heap_setter_from_arb_place( double,double );\





//Functions that set a simple variable in an arbitraty position from the memory
LOOP_ACROSS_HEAP_ARB_ACCESS_SET
;



#define create_heap_setter_from_arb_address_no_offset( vartype, ourtype) \
                vartype set_##ourtype##_from_arb_address_no_offset(void * address, vartype source) \
                {\
                vartype src=source;\
				int offset;\
				if (all_getter_setter_arguments_point_at_start_of_blocks) \
					{ \
						return set_##ourtype (address,source);\
					}\
					else\
					{\
						offset=pointer_offset_from_start_of_block((unsigned long)address);\
						set_arbitrary_block_in_heap_with_offset(sizeof( vartype ),(unsigned char*) address-offset, offset,&src);\
						return src;\
					}\
                }


#define LOOP_ACROSS_HEAP_ARB_ACCESS_ADDR_NO_OFFSET_SET create_heap_setter_from_arb_address_no_offset( char,char );\
                                   create_heap_setter_from_arb_address_no_offset( int,int );\
                                   create_heap_setter_from_arb_address_no_offset( long int,long_int );\
                                   /*pay attention to the type of the pointer when calling*/ \
                                   create_heap_setter_from_arb_address_no_offset( void*,pointer );\
                                   create_heap_setter_from_arb_address_no_offset( float,float );\
                                   create_heap_setter_from_arb_address_no_offset( double,double );\





//Functions that set a simple variable in an arbitraty address, with only the address given
LOOP_ACROSS_HEAP_ARB_ACCESS_ADDR_NO_OFFSET_SET
;


//setters of secure heap metadata
void set_sheap_meta_size(void * meta,long value)
{
	set_long_int((sheap_metadata*)meta,value);
}

void set_sheap_meta_previous(void * meta,void * value)
{
	set_long_int_array_element((sheap_metadata*)meta,1,(long)value);
}

void set_sheap_meta_next(void * meta,void * value)
{
	set_long_int_array_element((sheap_metadata*)meta,2,(long)value);
}

void set_sheap_meta_in_use(void * meta,long value)
{
	set_long_int_array_element((sheap_metadata*)meta,3,value);
}

/************************************************************************************************/
/********************************SECURE HEAP SETTERS END*****************************************/
/************************************************************************************************/








/************************************************************************************************/
/************************************************************************************************/
/******************************* SECURE STACK FUNCTIONS *****************************************/
/************************************************************************************************/
/************************************************************************************************/



/*Inserts the keyshares into the big chunk of stack memory, leaving gaps for useful data*/
/*Called in the stack memory initialization phase*/
void insert_keys_into_stack_mem(unsigned char * stack_mem)
{
  long i,j;
  unsigned char * p;
  int type_of_bytes=0; //0->useful bytes, 1-> keyshares, 2->mac bytes
  
  p=&(stack_mem[0]);
  
  //insert keyshares
  for (i=0;i<total_stack_bytes_allocated;)
  {

    if (type_of_bytes==1)
    {
		for (j=0;j<stack_bytes_used_for_keyshares;j++)
		{
			//inserting keys
			p[i]=get_next_stack_keyshare();
			//printf("got keyshare:0x%02x\n",p[i]);
			i++;
		}
		type_of_bytes=2;
    }
    else if (type_of_bytes==0)
    {
		//for printing purposes, insert NULLs
		for (j=0;j<stack_bytes_for_useful_data;j++)
		{
			p[i]='\0';
			i++;
		}
		type_of_bytes=1;
    }
    else if (type_of_bytes==2)
    {
		/*for (j=0;j<number_of_mac_bytes;j++)
		{
			p[i]='\0';
			i++;
		}*/
		//Insert the truncated mac of the previous bytes
		if (!ignore_macs_even_if_there_are_mac_bytes)
		{
			update_mac_when_setting_data(&p[i]-stack_bytes_for_useful_data-stack_bytes_used_for_keyshares,
										 stack_bytes_for_useful_data+stack_bytes_used_for_keyshares,
										 stack_bytes_for_useful_data,
										 &p[i]);
		}
		i+=number_of_mac_bytes;
		type_of_bytes=0;
	}
     
  }

}





/*Receives "data_size" bytes of data, and inserts them into stack memory. Insertion starts at "stack_mem_where_to_insert".
Returns how many groups (chunks) of useful data have actually been used.*/
long insert_data_into_stack_mem(long data_size,unsigned char * data, unsigned char * stack_mem_where_to_insert)
{
  long i,j;
  unsigned char * p;
  long chunks=0;
  long total_data_inserted=0;
  long data_remaining;


  p=&stack_mem_where_to_insert[0];
  i=0;  


  
  while(total_data_inserted<data_size)
  {
	chunks++;
	data_remaining=data_size-total_data_inserted;
	//actual insertion
	if (data_remaining<=stack_bytes_for_useful_data)
	{
		memcpy(&p[i],&data[total_data_inserted],data_remaining);
		total_data_inserted=data_size;
		//update mac
		if (!ignore_macs_even_if_there_are_mac_bytes)
		{
			update_mac_when_setting_data(&p[i],
										 stack_bytes_for_useful_data+stack_bytes_used_for_keyshares,
										 stack_bytes_for_useful_data,
										 &p[i]+stack_bytes_for_useful_data+stack_bytes_used_for_keyshares);
		}
	}
	else
	{
		memcpy(&p[i],&data[total_data_inserted],stack_bytes_for_useful_data);
		total_data_inserted+=stack_bytes_for_useful_data;
		//update mac
		if (!ignore_macs_even_if_there_are_mac_bytes)
		{
			update_mac_when_setting_data(&p[i],
										 stack_bytes_for_useful_data+stack_bytes_used_for_keyshares,
										 stack_bytes_for_useful_data,
										 &p[i]+stack_bytes_for_useful_data+stack_bytes_used_for_keyshares);
		}
	}
	i+=stack_bytes_for_useful_data+stack_bytes_used_for_keyshares+number_of_mac_bytes;
	
  }

  return chunks;
}



/*Gets data from the secure stack*/
/*res is a pointer to where the retrieved secure data will be written. The last two arguments are useful if called for an array element.*/
/*Set data_size to the size of the element you want to retrieve. For example "sizeof(int)" */
/*If seeking an array element, set isarray = 1. Set data_start to the start of the array*/
/*If not seeking an array element, set isarray to 0. Then arrayindex will be ignored*/
/*If isarray = 2, then this means that we want a block of data from *data_start, with offset <arrayindex> *BYTES*!*/
/*Works only for 1-d arrays, 2 index conversion to 1 index should be done beforehand. Of course in a next implementation ->*/
/*-> the function can be extended to support multiple dimension arrays*/
/*res must have been pre-allocated.*/
void get_secure_stack_data(void * res,long data_size, unsigned char * data_start, int isarray, long arrayindex)
{
  
  unsigned char* result;
  long i,j,k;
  unsigned char * p;
  long total_data_retrieved=0;
  long chunks_forward;
  long data_size_for_offset;
  long data_remaining;
  long data_remaining_till_end_of_chunk;

  result=res;

  p=data_start;

 
  if (isarray==2)
	data_size_for_offset=1;
  else
    data_size_for_offset=data_size;

  i=0;
  if (isarray)
  {
	
	chunks_forward=(arrayindex*data_size_for_offset)/(stack_bytes_for_useful_data);
	if (chunks_forward*stack_bytes_for_useful_data==(arrayindex*data_size_for_offset))
	{
		p+=chunks_forward*(stack_bytes_for_useful_data +stack_bytes_used_for_keyshares+number_of_mac_bytes); //We set p to point to the next useful area
	}
	else
	{
		//Well that's a problem. We have to start in the middle of a chunk.
		//What we'll do is that we will retrieve the part up to the end of the chunk.
		p+=chunks_forward*(stack_bytes_for_useful_data +stack_bytes_used_for_keyshares+number_of_mac_bytes);
		j=(arrayindex*data_size_for_offset)-(chunks_forward*stack_bytes_for_useful_data);
		
		if(data_size<=stack_bytes_for_useful_data-j)
		{
			data_remaining_till_end_of_chunk=data_size;
		}
		else
		{
			data_remaining_till_end_of_chunk=stack_bytes_for_useful_data-j;
		}
		
		if (!ignore_macs_even_if_there_are_mac_bytes)
		{
			verify_mac_on_the_fly(p,stack_bytes_for_useful_data+stack_bytes_used_for_keyshares,stack_bytes_for_useful_data);
		}
		memcpy(&result[total_data_retrieved],&p[j],data_remaining_till_end_of_chunk);

		total_data_retrieved+=data_remaining_till_end_of_chunk;
		p+=stack_bytes_for_useful_data + stack_bytes_used_for_keyshares+number_of_mac_bytes;
	}
  }


  while(total_data_retrieved<data_size)
  {
	  
	//actual retrieval
	data_remaining=data_size-total_data_retrieved;
	if (data_remaining<=stack_bytes_for_useful_data)
	{
		if (!ignore_macs_even_if_there_are_mac_bytes)
		{
			verify_mac_on_the_fly(&(p[i]),stack_bytes_for_useful_data+stack_bytes_used_for_keyshares,stack_bytes_for_useful_data);
		}
		memcpy(&result[total_data_retrieved],&p[i],data_remaining);
		total_data_retrieved=data_size;
	}
	else
	{
		if (!ignore_macs_even_if_there_are_mac_bytes)
		{
			verify_mac_on_the_fly(&(p[i]),stack_bytes_for_useful_data+stack_bytes_used_for_keyshares,stack_bytes_for_useful_data);
		}
		memcpy(&result[total_data_retrieved],&p[i],stack_bytes_for_useful_data);
		total_data_retrieved+=stack_bytes_for_useful_data;
	}
	i+=stack_bytes_for_useful_data+stack_bytes_used_for_keyshares+number_of_mac_bytes;
	
  }

}

/*Cousin function of insert_data_into_stack_mem(), but works with array elements as well. */
/*Structure similar to get_secure_stack_data(), reading data from *source*/
void* set_secure_stack_data(void * source,long data_size, unsigned char * data_start, int isarray, long arrayindex)
{

  unsigned char* src;
  long i,j,k;
  unsigned char * p;
  unsigned char * retval;
  long total_data_set=0;
  long chunks_forward;
  long data_size_for_offset;
  long data_remaining;
  long data_remaining_till_end_of_chunk;
  
  p=data_start;
  src=source;

  if (isarray==2)
	data_size_for_offset=1;
  else
    data_size_for_offset=data_size;
    
  i=0;
  if (isarray)
  {
	chunks_forward=(arrayindex*data_size_for_offset)/(stack_bytes_for_useful_data);
	if (chunks_forward*stack_bytes_for_useful_data==(arrayindex*data_size_for_offset))
	{
		p+=chunks_forward*(stack_bytes_for_useful_data +  stack_bytes_used_for_keyshares+number_of_mac_bytes); //We set p to point to the next useful area
		retval=&p[0];
	}
	else
	{
		//Well that's a problem. We have to start in the middle of a chunk.
		//What we'll do is that we will set the part up to the end of the chunk.
		p+=chunks_forward*(stack_bytes_for_useful_data +  stack_bytes_used_for_keyshares+number_of_mac_bytes);
		j=(arrayindex*data_size_for_offset)-(chunks_forward*stack_bytes_for_useful_data);

		if(data_size<=stack_bytes_for_useful_data-j)
		{
			data_remaining_till_end_of_chunk=data_size;
		}
		else
		{
			data_remaining_till_end_of_chunk=stack_bytes_for_useful_data-j;
		}
		
		retval=&p[j];
		memcpy(&p[j],&src[total_data_set],data_remaining_till_end_of_chunk);
		//update macs
		if (!ignore_macs_even_if_there_are_mac_bytes)
		{
			update_mac_when_setting_data(p,
										 stack_bytes_for_useful_data+stack_bytes_used_for_keyshares,
										 stack_bytes_for_useful_data,
										 p+stack_bytes_for_useful_data+stack_bytes_used_for_keyshares);
		}

		total_data_set+=data_remaining_till_end_of_chunk;
		p+=stack_bytes_for_useful_data + stack_bytes_used_for_keyshares+number_of_mac_bytes;

	}
  }
  else
  {
	  retval=&p[0];
  }


  while(total_data_set<data_size)
  {
	//actual set
	data_remaining=data_size-total_data_set;
	if (data_remaining<=stack_bytes_for_useful_data)
	{
		memcpy(&p[i],&src[total_data_set],data_remaining);
		//update macs
		if (!ignore_macs_even_if_there_are_mac_bytes)
		{
			update_mac_when_setting_data(&p[i],
										 stack_bytes_for_useful_data+stack_bytes_used_for_keyshares,
										 stack_bytes_for_useful_data,
										 &p[i]+stack_bytes_for_useful_data+stack_bytes_used_for_keyshares);
		}
		total_data_set=data_size;
	}
	else
	{
		memcpy(&p[i],&src[total_data_set],stack_bytes_for_useful_data);
		//update macs
		if (!ignore_macs_even_if_there_are_mac_bytes)
		{
			update_mac_when_setting_data(&p[i],
										 stack_bytes_for_useful_data+stack_bytes_used_for_keyshares,
										 stack_bytes_for_useful_data,
										 &p[i]+stack_bytes_for_useful_data+stack_bytes_used_for_keyshares);
		}
		total_data_set+=stack_bytes_for_useful_data;
	}
	i+=stack_bytes_for_useful_data+stack_bytes_used_for_keyshares+number_of_mac_bytes;
	
  }

	return retval;
}





/************************************************************************************************/
/********************************SECURE STACK GETTERS START**************************************/
/************************************************************************************************/

#define create_stack_getter( vartype, ourtype) \
                   vartype get_stack_##ourtype (void * start_of_secure_data) \
                   { \
                    vartype res[1]; \
                    get_secure_stack_data(res,sizeof( vartype ),start_of_secure_data,0,0);\
                    return (res[0]);\
                   }
                   
#define LOOP_ACROSS_STACK_GETTERS create_stack_getter( char,char );\
                                   create_stack_getter( int,int );\
                                   create_stack_getter( long int,long_int );\
                                   /*pay attention to the type of the pointer when calling*/ \
                                   create_stack_getter( void*,pointer );\
                                   create_stack_getter( float,float );\
                                   create_stack_getter( double,double );\
                                   
                                   
LOOP_ACROSS_STACK_GETTERS
;                                                     

/*Generic get array element. Writes result to *res, which must have been preallocated*/
void get_stack_array_element(long data_size, void * start_of_array, long index, void * res)
{
	get_secure_stack_data(res,data_size,start_of_array,1,index);
}

/*Gets an array element up to 128 bits*/
unsigned __int128 get_stack_array_element_no_prealloc_up_to_128bits(long data_size, void * start_of_array, long index)
{
	unsigned __int128 res[1];
	res[0]=0;
	get_secure_stack_data(res,data_size,start_of_array,1,index);
	return res[0];
}

#define create_stack_array_getter( vartype, ourtype) \
                   vartype get_stack_##ourtype##_array_element (void * start_of_array, long index) \
                   { \
                    vartype res[1]; \
                    get_secure_stack_data(res,sizeof( vartype ),start_of_array,1,index);\
                    return (res[0]);\
                   }
                   
                   
                   
#define LOOP_ACROSS_STACK_ARRAY_GETTERS create_stack_array_getter( char,char );\
                                   create_stack_array_getter( int,int );\
                                   create_stack_array_getter( long int,long_int );\
                                   /*pay attention to the type of the pointer when calling*/ \
                                   create_stack_array_getter( void*,pointer );\
                                   create_stack_array_getter( float,float );\
                                   create_stack_array_getter( double,double );\



LOOP_ACROSS_STACK_ARRAY_GETTERS
;

//gets a block of data from the secure stack. Writes to *res, which must have been preallocated
void get_arbitrary_block_in_stack(long data_size,void * start_of_block,void * res)
{
	get_secure_stack_data(res,data_size, start_of_block,0,0);
}


//gets a block of data from the secure stack, using offset bytes. Writes to *res, which must have been preallocated
void get_arbitrary_block_in_stack_with_offset(long data_size,void * start,long offset,void * res)
{
	get_secure_stack_data(res,data_size, start,2,offset);
}

unsigned char* get_address_of_stack_array_element(long data_size, void * start_of_array, long index)
{
	unsigned char *retval;
	int ptr_off;
	long bytes_to_cover;
	long chunks_to_go_forward;
	
	retval=start_of_array;
	ptr_off=pointer_offset_from_start_of_block((unsigned long)retval);
	
	bytes_to_cover=data_size*index;
	
	if (bytes_to_cover>=stack_bytes_for_useful_data-ptr_off)
	{
		retval+=(stack_bytes_for_useful_data-ptr_off); 
		retval+=stack_bytes_used_for_keyshares+number_of_mac_bytes; //next block
	}
	else
	{
		retval+=bytes_to_cover;
		return retval;
	}
	
	bytes_to_cover-=(stack_bytes_for_useful_data-ptr_off);
	chunks_to_go_forward=bytes_to_cover/(stack_bytes_for_useful_data);
	retval+=chunks_to_go_forward*(stack_bytes_for_useful_data+stack_bytes_used_for_keyshares+number_of_mac_bytes);
	retval+=bytes_to_cover%(stack_bytes_for_useful_data);
	return retval;
}


/************************************************************************************************/
/********************************SECURE STACK GETTERS END****************************************/
/************************************************************************************************/


/************************************************************************************************/
/********************************SECURE STACK SETTERS START**************************************/
/************************************************************************************************/

#define create_stack_setter( vartype, ourtype) \
                   vartype set_stack_##ourtype (void * start_of_secure_data, vartype source) \
                   { \
                    insert_data_into_stack_mem(sizeof( vartype ),(unsigned char *)&source,(unsigned char *)start_of_secure_data);\
                    return source;\
                   }
                   
                   
#define LOOP_ACROSS_STACK_SETTERS create_stack_setter( char,char );\
                                   create_stack_setter( int,int );\
                                   create_stack_setter( long int,long_int );\
                                   /*pay attention to the type of the pointer when calling*/ \
                                   /*Attention! We set the value of a pointer allocated in the secure stack here! */ \
                                   /*We do not change the pointer which points to the top of the stack (stack pointer)! */ \
                                   create_stack_setter( void*,pointer );\
                                   create_stack_setter( float,float );\
                                   create_stack_setter( double,double );\
                                   
                                   
LOOP_ACROSS_STACK_SETTERS
;

/*Generic set_array_element.Reads data from *source*/
void* set_stack_array_element(long data_size, void * start_of_array, long index, void * source)
{
	return set_secure_stack_data(source,data_size,start_of_array,1,index);
}

#define create_stack_array_setter( vartype, ourtype) \
                   vartype set_stack_##ourtype##_array_element (void * start_of_array, long index, vartype source) \
                   { \
	                vartype src=source; \
	                set_secure_stack_data(&src,sizeof( vartype ),start_of_array,1,index);\
                    return source;\
                   }
                   
#define LOOP_ACROSS_STACK_ARRAY_SETTERS create_stack_array_setter( char,char );\
                                   create_stack_array_setter( int,int );\
                                   create_stack_array_setter( long int,long_int );\
                                   /*pay attention to the type of the pointer when calling*/ \
                                   create_stack_array_setter( void*,pointer );\
                                   create_stack_array_setter( float,float );\
                                   create_stack_array_setter( double,double );\
                                   
LOOP_ACROSS_STACK_ARRAY_SETTERS
;                             

//sets a block of data to the secure stack. reads from *src, which must have been preallocated
void* set_arbitrary_block_in_stack(long data_size,void * start_of_block,void * src)
{
	set_secure_stack_data(src,data_size, start_of_block,0,0);
    return src;
}

//sets a block of data to the secure stack,using offset bytes. reads from *src, which must have been preallocated
void* set_arbitrary_block_in_stack_with_offset(long data_size,void * start,long offset,void * src)
{
	set_secure_stack_data(src,data_size, start,2,offset);
    return src;
}


/************************************************************************************************/
/********************************SECURE STACK SETTERS END****************************************/
/************************************************************************************************/


/************************************************************************************************/
/********************************SECURE GLOBAL SETTERS START*************************************/
/************************************************************************************************/


/*Inside secure_getters_setters_template.h file because they are defines*/

/************************************************************************************************/
/********************************SECURE GLOBAL SETTERS END***************************************/
/************************************************************************************************/



/************************************************************************************************/
/********************************SECURE GLOBAL GETTERS START*************************************/
/************************************************************************************************/


char get_global_char(char *global_var)
{
	if (!ignore_macs_even_if_there_are_mac_bytes)
	{
		verify_mac_on_the_fly(global_var,number_of_global_useful_bytes+number_of_interleaved_keys,number_of_global_useful_bytes);
	}
	return *global_var;
}

int get_global_int(int *global_var)
{
	if (!ignore_macs_even_if_there_are_mac_bytes)
	{
		verify_mac_on_the_fly(global_var,number_of_global_useful_bytes+number_of_interleaved_keys,number_of_global_useful_bytes);
	}
	return *global_var;
}

long int get_global_long_int(long *global_var)
{
	if (!ignore_macs_even_if_there_are_mac_bytes)
	{
		verify_mac_on_the_fly(global_var,number_of_global_useful_bytes+number_of_interleaved_keys,number_of_global_useful_bytes);
	}
	return *global_var;
}

float get_global_float(float *global_var)
{	
	if (!ignore_macs_even_if_there_are_mac_bytes)
	{
		verify_mac_on_the_fly(global_var,number_of_global_useful_bytes+number_of_interleaved_keys,number_of_global_useful_bytes);
	}
	return *global_var;
}


double get_global_double(double *global_var)
{
	if (!ignore_macs_even_if_there_are_mac_bytes)
	{
		verify_mac_on_the_fly(global_var,number_of_global_useful_bytes+number_of_interleaved_keys,number_of_global_useful_bytes);
	}
	return *global_var;
}

void * get_global_ptr(void* *global_var)
{
	if (!ignore_macs_even_if_there_are_mac_bytes)
	{
		verify_mac_on_the_fly(global_var,number_of_global_useful_bytes+number_of_interleaved_keys,number_of_global_useful_bytes);
	}
	return *global_var;
}

/************************************************************************************************/
/********************************SECURE GLOBAL GETTERS END***************************************/
/************************************************************************************************/


