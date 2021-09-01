/*This file contains the functions found in heap_manager_new_secure_template.c, but implemented in a way that they use the secure stack and globals*/

/*
int number_of_full_chunks_taken_by_sheap_metadata() //full chunks! important!
{
	if (bytes_for_useful_data<sizeof(sheap_metadata))
		{
			if (sizeof(sheap_metadata)%bytes_for_useful_data==0)
				return (sizeof(sheap_metadata)/bytes_for_useful_data);
			else
				return (sizeof(sheap_metadata)/bytes_for_useful_data + 1);
		}
	else
		return 1;
}
}
*/


#ifdef size_in_bytes_for_sheap_metadata
#undef size_in_bytes_for_sheap_metadata
#endif

#ifdef size_of_sheap_chunk
#undef size_of_sheap_chunk
#endif 

#define size_in_bytes_for_sheap_metadata (GET_GLOBAL_INT(globals.size_of_sheap_metadata_in_chunks)*(bytes_for_useful_data+bytes_used_for_keyshares+number_of_mac_bytes))
#define size_of_sheap_chunk (bytes_for_useful_data+bytes_used_for_keyshares+number_of_mac_bytes)

//PLEASE PYTHON INIT A FUNCTION HERE
	NAME_OF_FUNCTION: number_of_full_chunks_taken_by_sheap_metadata
	RETURN_VALUE_SIZE: int
	//^FOR THE ABOVE: none/int/char etc
	NUM_OF_PARAMETERS: 0
		chars: 0 
		ints: 0 
		longs: 0
		floats: 0
		doubles: 0
		pointers: 0 
		arb_pointers: 0 
	END_OF_PARAMETERS
	NUM_OF_LOCAL_VARIABLES: 1
		chars: 0 
		ints: 1 | names:retval
		longs: 0
		floats: 0
		doubles: 0
		pointers: 0
		arb_pointers: 0
	END_OF_LOCAL_VARIABLES
	RETURN_EXPRESSION: GET_STACK_INT(retval)
	START_OF_FUNCTION : number_of_full_chunks_taken_by_sheap_metadata
	
	
			if (bytes_for_useful_data<size_in_bytes_for_sheap_metadata)
			{
				if (size_in_bytes_for_sheap_metadata%bytes_for_useful_data==0)
					SET_STACK_INT(retval,(size_in_bytes_for_sheap_metadata/bytes_for_useful_data));
				else
					SET_STACK_INT(retval,(size_in_bytes_for_sheap_metadata/bytes_for_useful_data + 1));
			}
			else
				SET_STACK_INT(retval,1);
		RETURN_POINT_OF_FUNCTION: number_of_full_chunks_taken_by_sheap_metadata
		
	END_OF_FUNCTION: number_of_full_chunks_taken_by_sheap_metadata




/*
void init_sheap_memory_manager()
{
	sheap_metadata meta;
	
	total_chunks_in_secure_heap=sfind_number_of_useful_chunks(total_sheap_bytes_allocated);
	
	//init metadata of free block
	meta.size=total_chunks_in_secure_heap-number_of_full_chunks_taken_by_sheap_metadata() -1; //the first chunks is/are taken by metadata , as well as the last one
	size_of_sheap_metadata_in_chunks=number_of_full_chunks_taken_by_sheap_metadata();
	meta.previous=NULL;
	meta.next=NULL;
	meta.in_use=0;
	set_sheap_meta_size((sheap_metadata*)secure_heap,meta.size);
	set_sheap_meta_in_use((sheap_metadata*)secure_heap,meta.in_use);
	set_sheap_meta_previous((sheap_metadata*)secure_heap,meta.previous);
	set_sheap_meta_next((sheap_metadata*)secure_heap,meta.next);
	//set the long of the size in the end, securely
	set_long_int(((unsigned char*) secure_heap + (size_of_sheap_metadata_in_chunks + meta.size)*(bytes_for_useful_data+bytes_used_for_keyshares+number_of_mac_bytes) ),meta.size );
	//init the pointers and numbers
	sfree_chunks_list=(sheap_metadata*) &secure_heap[0];
	salloc_chunks_list=NULL;
	sfree_chunks_num=1;
	salloc_chunks_num=0;
	
}
*/


	//PLEASE PYTHON INIT A FUNCTION HERE
	NAME_OF_FUNCTION: init_sheap_memory_manager
	RETURN_VALUE_SIZE: none
	//^FOR THE ABOVE: none/int/char etc
	NUM_OF_PARAMETERS: 0
		chars: 0 
		ints: 0
		longs: 0
		floats: 0
		doubles: 0
		pointers: 0
		arb_pointers: 0
	END_OF_PARAMETERS
	NUM_OF_LOCAL_VARIABLES: 1
		chars: 0 
		ints: 0
		longs: 0
		floats: 0
		doubles: 0
		pointers: 0
		arb_pointers: 1 | names: meta | size_of_objects:32 
		//PYTHON IGNORE: 32= sizeof(sheap_metadata)
	END_OF_LOCAL_VARIABLES
	RETURN_EXPRESSION: NULL
	START_OF_FUNCTION : init_sheap_memory_manager
	
	//this does not need securing, done by the cpu
	total_chunks_in_secure_heap=sfind_number_of_useful_chunks(total_sheap_bytes_allocated);
	
	//HEY PYTHON CALLING FUNCTION : number_of_full_chunks_taken_by_sheap_metadata | WRITE RESULT TO: globals.size_of_sheap_metadata_in_chunks__securevar_UPDATE_GLOBAL_VAR
	set_stack_long_int_array_element(meta,0,total_chunks_in_secure_heap -1 - GET_GLOBAL_INT(globals.size_of_sheap_metadata_in_chunks));
	set_stack_pointer_array_element(meta,1,NULL);
	set_stack_pointer_array_element(meta,2,NULL);
	set_stack_long_int_array_element(meta,3,0);
	
	set_sheap_meta_size((sheap_metadata*)GET_GLOBAL_PTR(globals.secure_heap),get_stack_long_int_array_element(meta,0));
	set_sheap_meta_in_use((sheap_metadata*)GET_GLOBAL_PTR(globals.secure_heap),get_stack_long_int_array_element(meta,3));
	set_sheap_meta_previous((sheap_metadata*)GET_GLOBAL_PTR(globals.secure_heap),get_stack_pointer_array_element(meta,1));
	set_sheap_meta_next((sheap_metadata*)GET_GLOBAL_PTR(globals.secure_heap),get_stack_pointer_array_element(meta,2));
	//set the long of the size in the end, securely
	set_long_int(((unsigned char*) GET_GLOBAL_PTR(globals.secure_heap) + (GET_GLOBAL_INT(globals.size_of_sheap_metadata_in_chunks) + get_stack_long_int_array_element(meta,0))*(bytes_for_useful_data+bytes_used_for_keyshares+number_of_mac_bytes) ),get_stack_long_int_array_element(meta,0) );
	//init the pointers and numbers
	
	UPDATE_GLOBAL_VAR(globals.sfree_chunks_list,(sheap_metadata*)GET_GLOBAL_PTR(globals.secure_heap));
	UPDATE_GLOBAL_VAR(globals.salloc_chunks_list,NULL);
	UPDATE_GLOBAL_VAR(globals.sfree_chunks_num,1);
	UPDATE_GLOBAL_VAR(globals.salloc_chunks_num,0);
	
	
	END_OF_FUNCTION: init_sheap_memory_manager
	
	
	
/*
int sout_of_bounds_ptr(void * ptr)
{
	if ((unsigned char *) ptr < (unsigned char*) secure_heap)
		return 1;
	if ((unsigned char *) ptr >= (unsigned char*) secure_heap+ total_sheap_bytes_allocated)
		return 1;
	
	return 0;
	
}
*/


	//PLEASE PYTHON INIT A FUNCTION HERE
	NAME_OF_FUNCTION: sout_of_bounds_ptr
	RETURN_VALUE_SIZE: int
	//^FOR THE ABOVE: none/int/char etc
	NUM_OF_PARAMETERS: 1
		chars: 0 
		ints: 0
		longs: 0
		floats: 0
		doubles: 0
		pointers: 1 | names: ptr
		arb_pointers: 0
	END_OF_PARAMETERS
	NUM_OF_LOCAL_VARIABLES: 1
		chars: 0 
		ints: 1 | names:retval
		longs: 0
		floats: 0
		doubles: 0
		pointers: 0
		arb_pointers: 0
	END_OF_LOCAL_VARIABLES
	RETURN_EXPRESSION: GET_STACK_INT(retval)
	START_OF_FUNCTION : sout_of_bounds_ptr
	
	SET_STACK_INT(retval,0);
	if ((unsigned char*)GET_STACK_PTR(ptr) < (unsigned char*) GET_GLOBAL_PTR(globals.secure_heap))
		SET_STACK_INT(retval,1);
	if ((unsigned char*)GET_STACK_PTR(ptr) >= (unsigned char*) GET_GLOBAL_PTR(globals.secure_heap) + total_sheap_bytes_allocated)
		SET_STACK_INT(retval,1);
	
	RETURN_POINT_OF_FUNCTION: sout_of_bounds_ptr
		
	END_OF_FUNCTION: sout_of_bounds_ptr
	
	
/*
sheap_metadata * sfind_large_enough_free_group(long bytes_needed)
{
	sheap_metadata * temp;
	
	if (sfree_chunks_list==NULL)
		return NULL;
	
	for(temp=sfree_chunks_list;temp!=NULL;temp=get_sheap_meta_next(temp))
	{
		if(get_sheap_meta_size(temp)*bytes_for_useful_data >= bytes_needed)
			return temp;
	}
	
	//nothing found
	return NULL;
}
*/


	//PLEASE PYTHON INIT A FUNCTION HERE
	NAME_OF_FUNCTION: sfind_large_enough_free_group
	RETURN_VALUE_SIZE: ptr
	//^FOR THE ABOVE: none/int/char etc
	NUM_OF_PARAMETERS: 1
		chars: 0 
		ints: 0
		longs: 1 | names: bytes_needed
		floats: 0
		doubles: 0
		pointers: 0
		arb_pointers: 0
	END_OF_PARAMETERS
	NUM_OF_LOCAL_VARIABLES: 1
		chars: 0 
		ints: 0
		longs: 0
		floats: 0
		doubles: 0
		pointers: 1 | names: temp
		arb_pointers: 0
	END_OF_LOCAL_VARIABLES
	RETURN_EXPRESSION: GET_STACK_PTR(temp)
	START_OF_FUNCTION : sfind_large_enough_free_group
	
	if (GET_GLOBAL_PTR(globals.sfree_chunks_list)==NULL)
	{
		SET_STACK_PTR(temp,NULL);
		RETURN_POINT_OF_FUNCTION: sfind_large_enough_free_group	
	}

	for(SET_STACK_PTR(temp,GET_GLOBAL_PTR(globals.sfree_chunks_list));
		GET_STACK_PTR(temp)!=NULL;
		SET_STACK_PTR(temp,get_sheap_meta_next(GET_STACK_PTR(temp)))
		)
	{
		if(get_sheap_meta_size(GET_STACK_PTR(temp))*bytes_for_useful_data >= GET_STACK_LONG(bytes_needed))
		{
			RETURN_POINT_OF_FUNCTION: sfind_large_enough_free_group	
		}
	}
	
	SET_STACK_PTR(temp,NULL);
	RETURN_POINT_OF_FUNCTION: sfind_large_enough_free_group	

	END_OF_FUNCTION: sfind_large_enough_free_group
	




#if 0==1 
//^ that begins a comment
//safe malloc
unsigned char * smalloc(long bytes_asked_to_allocate)
{
	sheap_metadata * chunk_found;
	sheap_metadata * prev_free;
	sheap_metadata * next_free;
	sheap_metadata * new_meta;
	long bytes_to_allocate_by_smalloc;
	char give_entire_chunk;
	long chunks_to_allocate;
	
	if (bytes_asked_to_allocate==0)
		return NULL;
	
	//optional. Should we?
	if (bytes_asked_to_allocate%bytes_for_useful_data==0)
		bytes_to_allocate_by_smalloc= bytes_asked_to_allocate;
	else
		bytes_to_allocate_by_smalloc= bytes_asked_to_allocate+(bytes_for_useful_data-bytes_asked_to_allocate%bytes_for_useful_data); //let's make it a multiple of bytes_for_useful_data
	
	chunks_to_allocate=bytes_to_allocate_by_smalloc/bytes_for_useful_data;
	
	//find, using linear search, the group that can hold the needed bytes
	chunk_found=sfind_large_enough_free_group(bytes_to_allocate_by_smalloc);
	
	if (chunk_found==NULL)
		return NULL;

	//do we need just a part of the chunk, or are we going to give it all?
	give_entire_chunk=1;
	//check if the remaining is large enough (at least one useful chunk). We count chunks:
	if (get_sheap_meta_size(chunk_found) - chunks_to_allocate >= 1 /*sizeof(long), for new chunk*/ + size_of_sheap_metadata_in_chunks /*for old, cut chunk*/ + 1) /*bytes_for_useful_data, for old, cut chunk*/ //there is enough
		give_entire_chunk=0;
		
	if (give_entire_chunk==1)
	{
		//chunk_found->in_use=1; //that's only what should change in the chunk in this case
		set_sheap_meta_in_use(chunk_found,1);
		sfree_chunks_num--;
		//prev_free=chunk_found->previous;
		prev_free=get_sheap_meta_previous(chunk_found);
		//next_free=chunk_found->next;
		next_free=get_sheap_meta_next(chunk_found);
		
		if (prev_free==NULL && next_free==NULL)
		{
			sfree_chunks_list=NULL;
		}
		
		
		if (prev_free!=NULL)
		{
			//prev_free->next=next_free;
			set_sheap_meta_next(prev_free,next_free);
			if (sfree_chunks_list==chunk_found) //sfree_chunks_list should always point to the FIRST free chunk
			{
				sfree_chunks_list=prev_free;
			}
		}
		
		if (next_free!=NULL)
		{
			//next_free->previous=prev_free;
			set_sheap_meta_previous(next_free,prev_free);
			if (sfree_chunks_list==chunk_found) //sfree_chunks_list should always point to the FIRST free chunk
			{
				sfree_chunks_list=next_free;	//notice it does not happen now if both are !=NULL
			}
		}
			
	}
	else //give_entire_chunk==0
	{
		//prev_free=chunk_found->previous;
		prev_free=get_sheap_meta_previous(chunk_found);
		//next_free=chunk_found->next;
		next_free=get_sheap_meta_next(chunk_found);
		
		//set the new metadata in the newly created chunk
		//new_meta=(sheap_metadata*) ((unsigned char*) chunk_found + sizeof(sheap_metadata) + bytes_to_allocate_by_smalloc + sizeof(long));
		new_meta=(sheap_metadata*)  ((unsigned char*) chunk_found + (size_of_sheap_metadata_in_chunks + chunks_to_allocate + 1)*size_of_sheap_chunk);
		//new_meta->in_use=0;
		set_sheap_meta_in_use(new_meta,0);
		//new_meta->previous=prev_free;
		set_sheap_meta_previous(new_meta,prev_free);
		//new_meta->next=next_free;
		set_sheap_meta_next(new_meta,next_free);
		//new_meta->size=chunk_found->size - (bytes_to_allocate_by_smalloc+sizeof(long)+sizeof(uheap_metadata));
		set_sheap_meta_size(new_meta, get_sheap_meta_size(chunk_found)-(chunks_to_allocate+1+size_of_sheap_metadata_in_chunks) );
		//*((long*)((unsigned char*)new_meta + sizeof(uheap_metadata) + new_meta->size)) = new_meta->size;		
		set_long_int((unsigned char*) new_meta + size_in_bytes_for_sheap_metadata+get_sheap_meta_size(new_meta)*size_of_sheap_chunk,get_sheap_meta_size(new_meta));
		
		//now set the neigbors of the new
		if (sfree_chunks_list==chunk_found)
		{
			sfree_chunks_list=new_meta;
		}
		if (prev_free!=NULL)
		{
			//prev_free->next=new_meta;
			set_sheap_meta_next(prev_free,new_meta);
		}
		if (next_free!=NULL)
		{
			//next_free->previous=new_meta;
			set_sheap_meta_previous(next_free,new_meta);
		}
		
		//set the metadata in the chunk found
		//chunk_found->in_use=1;
		set_sheap_meta_in_use(chunk_found,1);
		//*((long*)((unsigned char*)new_meta -sizeof(long)))=bytes_to_allocate_by_smalloc; //write the new size
		set_long_int((unsigned char*) new_meta -1*size_of_sheap_chunk,chunks_to_allocate);
		//chunk_found->size=bytes_to_allocate_by_smalloc;
		set_sheap_meta_size(chunk_found,chunks_to_allocate);
		//will set the pointers in the end
					
	}

	//and now lets put it in the start of the allocated chunks list
	salloc_chunks_num++;
	if (salloc_chunks_list!=NULL)
	{
		//salloc_chunks_list->previous=chunk_found;
		set_sheap_meta_previous(salloc_chunks_list,chunk_found);
	}
	//chunk_found->next=salloc_chunks_list;
	set_sheap_meta_next(chunk_found,salloc_chunks_list);
	salloc_chunks_list=chunk_found;
	//chunk_found->previous=NULL;
	set_sheap_meta_previous(chunk_found,NULL);
	
	#if 0
		//checking calls
		if (give_entire_chunk==0)
		{
			printf("Checking chunk..\n");
			sprint_chunk(new_meta);
			scheck_chunk(new_meta,1);
		}
		printf("Checking chunk..\n");
		sprint_chunk(chunk_found);
		scheck_chunk(chunk_found,2);
		*/
		scheck_free_list_consistency(2);
		scheck_alloc_list_consistency(2);
	#endif
	//return the start of the useful data
	//return ((unsigned char*) chunk_found + sizeof(uheap_metadata));
	return ((unsigned char*) chunk_found + size_in_bytes_for_sheap_metadata);
	
} //end of smalloc()
#endif


	//PLEASE PYTHON INIT A FUNCTION HERE
	NAME_OF_FUNCTION: smalloc
	RETURN_VALUE_SIZE: ptr
	//^FOR THE ABOVE: none/int/char etc
	NUM_OF_PARAMETERS: 1
		chars: 0 
		ints: 0
		longs: 1 | names: bytes_asked_to_allocate
		floats: 0
		doubles: 0
		pointers: 0
		arb_pointers: 0
	END_OF_PARAMETERS
	NUM_OF_LOCAL_VARIABLES: 7
		chars: 1  | names: give_entire_chunk
		ints: 0
		longs: 2 | names: bytes_to_allocate_by_smalloc,chunks_to_allocate
		floats: 0
		doubles: 0
		pointers: 4 | names: chunk_found,prev_free,next_free,new_meta
		arb_pointers: 0
	END_OF_LOCAL_VARIABLES
	RETURN_EXPRESSION: ((unsigned char*) GET_STACK_PTR(chunk_found) + size_in_bytes_for_sheap_metadata)
	START_OF_FUNCTION : smalloc
	
	if (GET_STACK_LONG(bytes_asked_to_allocate)==0)
	{
		RETURN_POINT_OF_FUNCTION: smalloc | PYTHON PLEASE USE THIS RETURN EXPRESSION: NULL
	}
	
	//optional. Should we?
	if (GET_STACK_LONG(bytes_asked_to_allocate)%bytes_for_useful_data==0)
		SET_STACK_LONG(bytes_to_allocate_by_smalloc,GET_STACK_LONG(bytes_asked_to_allocate));
	else
		SET_STACK_LONG(bytes_to_allocate_by_smalloc,GET_STACK_LONG(bytes_asked_to_allocate)+(bytes_for_useful_data-GET_STACK_LONG(bytes_asked_to_allocate)%bytes_for_useful_data)); //let's make it a multiple of bytes_for_useful_data
	
	SET_STACK_LONG(chunks_to_allocate,GET_STACK_LONG(bytes_to_allocate_by_smalloc)/bytes_for_useful_data);
	
	//find, using linear search, the group that can hold the needed bytes
	//chunk_found=sfind_large_enough_free_group(bytes_to_allocate_by_smalloc);
	//HEY PYTHON CALLING FUNCTION : sfind_large_enough_free_group | WRITE RESULT TO: chunk_found__securevar_SET_STACK_PTR | PARAMETERS TO CALL WITH: GET_STACK_LONG(bytes_to_allocate_by_smalloc)
	
	if (GET_STACK_PTR(chunk_found)==NULL)
	{
		RETURN_POINT_OF_FUNCTION: smalloc | PYTHON PLEASE USE THIS RETURN EXPRESSION: NULL
	}
	//do we need just a part of the chunk, or are we going to give it all?
	SET_STACK_CHAR(give_entire_chunk,1);
	//check if the remaining is large enough (at least one useful chunk). We count chunks:
	if (get_sheap_meta_size(GET_STACK_PTR(chunk_found)) - GET_STACK_LONG(chunks_to_allocate) >= 1 /*sizeof(long), for new chunk*/ + GET_GLOBAL_INT(globals.size_of_sheap_metadata_in_chunks) /*for old, cut chunk*/ + 1) /*bytes_for_useful_data, for old, cut chunk*/ //there is enough
		SET_STACK_CHAR(give_entire_chunk,0);
	
	
	
	if (GET_STACK_CHAR(give_entire_chunk)==1)
	{
		//chunk_found->in_use=1; //that's only what should change in the chunk in this case
		set_sheap_meta_in_use(GET_STACK_PTR(chunk_found),1);
		UPDATE_GLOBAL_VAR(globals.sfree_chunks_num,GET_GLOBAL_LONG(globals.sfree_chunks_num)-1);
		//prev_free=chunk_found->previous;
		SET_STACK_PTR(prev_free,get_sheap_meta_previous(GET_STACK_PTR(chunk_found)));
		//next_free=chunk_found->next;
		SET_STACK_PTR(next_free,get_sheap_meta_next(GET_STACK_PTR(chunk_found)));
		
		if (GET_STACK_PTR(prev_free)==NULL && GET_STACK_PTR(next_free)==NULL)
		{
			UPDATE_GLOBAL_VAR(globals.sfree_chunks_list,NULL);
		}
		
		
		if (GET_STACK_PTR(prev_free)!=NULL)
		{
			//prev_free->next=next_free;
			set_sheap_meta_next(GET_STACK_PTR(prev_free),GET_STACK_PTR(next_free));
			if (GET_GLOBAL_PTR(globals.sfree_chunks_list)==GET_STACK_PTR(chunk_found)) //sfree_chunks_list should always point to the FIRST free chunk
			{
				UPDATE_GLOBAL_VAR(globals.sfree_chunks_list,GET_STACK_PTR(prev_free));
			}
		}
		
		if (GET_STACK_PTR(next_free)!=NULL)
		{
			//next_free->previous=prev_free;
			set_sheap_meta_previous(GET_STACK_PTR(next_free),GET_STACK_PTR(prev_free));
			if (GET_GLOBAL_PTR(globals.sfree_chunks_list)==GET_STACK_PTR(chunk_found)) //sfree_chunks_list should always point to the FIRST free chunk
			{
				UPDATE_GLOBAL_VAR(globals.sfree_chunks_list,GET_STACK_PTR(next_free));	//notice it does not happen now if both are !=NULL
			}
		}
			
	}
	else //give_entire_chunk==0
	{
		//prev_free=chunk_found->previous;
		SET_STACK_PTR(prev_free,get_sheap_meta_previous(GET_STACK_PTR(chunk_found)));
		//next_free=chunk_found->next;
		SET_STACK_PTR(next_free,get_sheap_meta_next(GET_STACK_PTR(chunk_found)));
		
		//set the new metadata in the newly created chunk
		//new_meta=(sheap_metadata*) ((unsigned char*) chunk_found + sizeof(sheap_metadata) + bytes_to_allocate_by_smalloc + sizeof(long));
		SET_STACK_PTR(new_meta,(sheap_metadata*)  ((unsigned char*) GET_STACK_PTR(chunk_found) + (GET_GLOBAL_INT(globals.size_of_sheap_metadata_in_chunks) + GET_STACK_LONG(chunks_to_allocate) + 1)*size_of_sheap_chunk));
		//new_meta->in_use=0;
		set_sheap_meta_in_use(GET_STACK_PTR(new_meta),0);
		//new_meta->previous=prev_free;
		set_sheap_meta_previous(GET_STACK_PTR(new_meta),GET_STACK_PTR(prev_free));
		//new_meta->next=next_free;
		set_sheap_meta_next(GET_STACK_PTR(new_meta),GET_STACK_PTR(next_free));
		//new_meta->size=chunk_found->size - (bytes_to_allocate_by_smalloc+sizeof(long)+sizeof(uheap_metadata));
		set_sheap_meta_size(GET_STACK_PTR(new_meta), get_sheap_meta_size(GET_STACK_PTR(chunk_found))-(GET_STACK_LONG(chunks_to_allocate)+1+GET_GLOBAL_INT(globals.size_of_sheap_metadata_in_chunks)) );
		//*((long*)((unsigned char*)new_meta + sizeof(uheap_metadata) + new_meta->size)) = new_meta->size;		
		set_long_int((unsigned char*) GET_STACK_PTR(new_meta) + size_in_bytes_for_sheap_metadata+get_sheap_meta_size(GET_STACK_PTR(new_meta))*size_of_sheap_chunk,get_sheap_meta_size(GET_STACK_PTR(new_meta)));
		
		//now set the neigbors of the new
		if (GET_GLOBAL_PTR(globals.sfree_chunks_list)==GET_STACK_PTR(chunk_found))
		{
			UPDATE_GLOBAL_VAR(globals.sfree_chunks_list,GET_STACK_PTR(new_meta));
		}
		if (GET_STACK_PTR(prev_free)!=NULL)
		{
			//prev_free->next=new_meta;
			set_sheap_meta_next(GET_STACK_PTR(prev_free),GET_STACK_PTR(new_meta));
		}
		if (GET_STACK_PTR(next_free)!=NULL)
		{
			//next_free->previous=new_meta;
			set_sheap_meta_previous(GET_STACK_PTR(next_free),GET_STACK_PTR(new_meta));
		}
		
		//set the metadata in the chunk found
		//chunk_found->in_use=1;
		set_sheap_meta_in_use(GET_STACK_PTR(chunk_found),1);
		//*((long*)((unsigned char*)new_meta -sizeof(long)))=bytes_to_allocate_by_smalloc; //write the new size
		set_long_int((unsigned char*) GET_STACK_PTR(new_meta) -1*size_of_sheap_chunk,GET_STACK_LONG(chunks_to_allocate));
		//chunk_found->size=bytes_to_allocate_by_smalloc;
		set_sheap_meta_size(GET_STACK_PTR(chunk_found),GET_STACK_LONG(chunks_to_allocate));
		//will set the pointers in the end
					
	}
	
	
	
	//and now lets put it in the start of the allocated chunks list
	UPDATE_GLOBAL_VAR(globals.salloc_chunks_num,GET_GLOBAL_LONG(globals.salloc_chunks_num)+1);
	if (GET_GLOBAL_PTR(globals.salloc_chunks_list)!=NULL)
	{
		//salloc_chunks_list->previous=chunk_found;
		set_sheap_meta_previous(GET_GLOBAL_PTR(globals.salloc_chunks_list),GET_STACK_PTR(chunk_found));
	}
	//chunk_found->next=salloc_chunks_list;
	set_sheap_meta_next(GET_STACK_PTR(chunk_found),GET_GLOBAL_PTR(globals.salloc_chunks_list));
	UPDATE_GLOBAL_VAR(globals.salloc_chunks_list,GET_STACK_PTR(chunk_found));
	//chunk_found->previous=NULL;
	set_sheap_meta_previous(GET_STACK_PTR(chunk_found),NULL);
	
	
	#if 0
		//checking calls
		//before that, let's set the unsecure globals with the secure values since the checking functions work with them
		
		sfree_chunks_list=GET_GLOBAL_PTR(globals.sfree_chunks_list);
		salloc_chunks_list=GET_GLOBAL_PTR(globals.salloc_chunks_list);
		sfree_chunks_num=GET_GLOBAL_LONG(globals.sfree_chunks_num);
		salloc_chunks_num=GET_GLOBAL_LONG(globals.salloc_chunks_num);
		/*
		if (GET_STACK_CHAR(give_entire_chunk)==0)
		{
			printf("Checking chunk..\n");
			sprint_chunk(GET_STACK_PTR(new_meta));
			scheck_chunk(GET_STACK_PTR(new_meta),1);
		}
		printf("Checking chunk..\n");
		sprint_chunk(GET_STACK_PTR(chunk_found));
		scheck_chunk(GET_STACK_PTR(chunk_found),2);
		*/
		scheck_free_list_consistency(2);
		scheck_alloc_list_consistency(2);
	#endif
	//return the start of the useful data
	//return ((unsigned char*) chunk_found + size_in_bytes_for_sheap_metadata);
	RETURN_POINT_OF_FUNCTION: smalloc

	END_OF_FUNCTION: smalloc






/*Wrapper for smalloc(). Checks for NULL return value and exits if this is true*/
/*
void * error_checking_smalloc_memory(long bytes_for_allocation,const char * fun_name, int line)
{
	void * ret;
	if (bytes_for_allocation==0) return NULL;
	ret=smalloc(bytes_for_allocation);
	if (ret==NULL)
	{
		fprintf(stderr,"Smalloc() in function %s, line %d. Requested %ld bytes. Perhaps not enough memory?\n",fun_name,line,bytes_for_allocation);
		exit(52);
	}
	return ret;	
}
*/

	//PLEASE PYTHON INIT A FUNCTION HERE
	NAME_OF_FUNCTION: error_checking_smalloc_memory
	RETURN_VALUE_SIZE: ptr
	//^FOR THE ABOVE: none/int/char etc
	NUM_OF_PARAMETERS: 1
		chars: 0 
		ints: 0
		longs: 1 | names: bytes_for_allocation
		floats: 0
		doubles: 0
		pointers: 0
		arb_pointers: 0
	END_OF_PARAMETERS
	NUM_OF_LOCAL_VARIABLES: 1
		chars: 0
		ints: 0
		longs: 0
		floats: 0
		doubles: 0
		pointers: 1 | names: ret
		arb_pointers: 0
	END_OF_LOCAL_VARIABLES
	RETURN_EXPRESSION: GET_STACK_PTR(ret)
	START_OF_FUNCTION : error_checking_smalloc_memory
	
	if (GET_STACK_LONG(bytes_for_allocation)==0)
	{
		RETURN_POINT_OF_FUNCTION: error_checking_smalloc_memory | PYTHON PLEASE USE THIS RETURN EXPRESSION: NULL
	}
	
	//ret=smalloc(bytes_for_allocation);
	//HEY PYTHON CALLING FUNCTION: smalloc | WRITE RESULT TO: ret__securevar_SET_STACK_PTR | PARAMETERS TO CALL WITH: GET_STACK_LONG(bytes_for_allocation)
	if (GET_STACK_PTR(ret)==NULL)
	{
		fprintf(stderr,"Smalloc() , Requested %ld bytes. Perhaps not enough memory?\n",GET_STACK_LONG(bytes_for_allocation));
		exit(52);
	}

	RETURN_POINT_OF_FUNCTION: error_checking_smalloc_memory

	END_OF_FUNCTION: error_checking_smalloc_memory






#if 0
//^That begins a comment

/*Frees the memory pointed to by the pointer in the argument*/
void sfree_memory(void * ptr)
{
	sheap_metadata * chunk_meta;
	sheap_metadata * prev_alloc;
	sheap_metadata * next_alloc;
	sheap_metadata * prev_in_heap;
	sheap_metadata * next_in_heap;
	char merge_prev=0;
	char merge_next=0;
	
	//the metadata are going to be some bytes behind
	chunk_meta=(sheap_metadata*)((unsigned char*) ptr - size_in_bytes_for_sheap_metadata);
	
	if (get_sheap_meta_in_use(chunk_meta)==0)
	{
		fprintf(stderr,"ERROR. Attempted to free an already free position in the unsecure heap. position: %ld\n",(long)ptr);
		print_sheap_lists(2);
		exit(12);
	}
	
	set_sheap_meta_in_use(chunk_meta,0);
	prev_alloc=get_sheap_meta_previous(chunk_meta);
	next_alloc=get_sheap_meta_next(chunk_meta);
	
	salloc_chunks_num--;
	if (prev_alloc==NULL && next_alloc==NULL)
	//the list is empty
	{
		assert(salloc_chunks_num==0);
		salloc_chunks_list=NULL;
	}
	if (prev_alloc!=NULL)
	{
		set_sheap_meta_next(prev_alloc,next_alloc);
		if (salloc_chunks_list==chunk_meta) //they point to the same address
		{
			salloc_chunks_list=prev_alloc;
		}
	}
	if (next_alloc!=NULL)
	{
		set_sheap_meta_previous(next_alloc,prev_alloc);
		if (salloc_chunks_list==chunk_meta) //they point to the same address
		{
			salloc_chunks_list=next_alloc; //notice that if the same was activated for prev_alloc, it is not done now
		}
	}
	
	
	//now it's time to try to merge the free chunks, if possible
	if ((unsigned char*) chunk_meta!=(unsigned char*)secure_heap) //if we free the first chunk, there is no previous one
	{
		prev_in_heap=(sheap_metadata *)( (unsigned char*) chunk_meta    -  get_long_int((unsigned char*) chunk_meta - size_of_sheap_chunk)*size_of_sheap_chunk -size_in_bytes_for_sheap_metadata -size_of_sheap_chunk) ;
	}
	else
	{
		prev_in_heap=NULL;
	}
	next_in_heap=(sheap_metadata *)( (unsigned char*) chunk_meta    + size_in_bytes_for_sheap_metadata+ get_sheap_meta_size(chunk_meta)*size_of_sheap_chunk + size_of_sheap_chunk  );
	
	//IMPORTANT! We do not know if prev_in_heap and next_in_heap point to each other at all!
	
	
	//should we merge the next one?
	if (!sout_of_bounds_ptr(next_in_heap))
	{
		if (get_sheap_meta_in_use(next_in_heap)==0)
		{
			merge_next=1;
		}
	}
	
	//should we merge the previous one?
	if (!sout_of_bounds_ptr(prev_in_heap))
	{
		if (get_sheap_meta_in_use(prev_in_heap)==0)
		{
			merge_prev=1;
		}
	}
	
	if (merge_next && merge_prev) //merge both
	{
		//ok we have 2 , possibly independent nodes into the list and we want to merge them. We erase the <next_in_heap> node.
		
		if (get_sheap_meta_next(next_in_heap)!=NULL)
		{
			//(next_in_heap->next)->previous=next_in_heap->previous;
			set_sheap_meta_previous(get_sheap_meta_next(next_in_heap),get_sheap_meta_previous(next_in_heap));
		}
		if (get_sheap_meta_previous(next_in_heap)!=NULL)
		{
			//(next_in_heap->previous)->next=next_in_heap->next;
			set_sheap_meta_next(get_sheap_meta_previous(next_in_heap),get_sheap_meta_next(next_in_heap));
		}
		
		if (sfree_chunks_list==next_in_heap)
		{
			if(get_sheap_meta_next(next_in_heap)==prev_in_heap)
			{
				; //prefect, everything is set, just:
				sfree_chunks_list=prev_in_heap;
				//prev_in_heap->previous=NULL;
				set_sheap_meta_previous(prev_in_heap,NULL);
			}	
			else
			{
				//lift prev_in_heap from its place and put it in the start
				if (get_sheap_meta_next(prev_in_heap)!=NULL)
				{
					//(prev_in_heap->next)->previous=prev_in_heap->previous;
					set_sheap_meta_previous(get_sheap_meta_next(prev_in_heap),get_sheap_meta_previous(prev_in_heap));
				}
				if (get_sheap_meta_previous(prev_in_heap)!=NULL)
				{
					//(prev_in_heap->previous)->next=prev_in_heap->next;
					set_sheap_meta_next(get_sheap_meta_previous(prev_in_heap),get_sheap_meta_next(prev_in_heap));
				}
				
				if (get_sheap_meta_next(next_in_heap)!=NULL)
				{
					//(next_in_heap->next)->previous=prev_in_heap; //make the second in the list point to the first
					set_sheap_meta_previous(get_sheap_meta_next(next_in_heap),prev_in_heap);
				}
				//prev_in_heap->next=next_in_heap->next;
				//prev_in_heap->previous=NULL;
				set_sheap_meta_next(prev_in_heap,get_sheap_meta_next(next_in_heap));
				set_sheap_meta_previous(prev_in_heap,NULL);
				sfree_chunks_list=prev_in_heap; 
			}
		}
		
		
		//prev_in_heap->size= prev_in_heap->size+ sizeof(long) + sizeof(sheap_metadata) + chunk_meta->size+sizeof(long) + sizeof(sheap_metadata) + next_in_heap->size;
		//be careful! in chunks!
		set_sheap_meta_size(prev_in_heap,get_sheap_meta_size(prev_in_heap) + 1 + size_of_sheap_metadata_in_chunks + get_sheap_meta_size(chunk_meta) + 1 + size_of_sheap_metadata_in_chunks + get_sheap_meta_size(next_in_heap) );
		//*((long*)((unsigned char*) next_in_heap + sizeof(uheap_metadata) + next_in_heap->size))=prev_in_heap->size;
		set_long_int((unsigned char*) next_in_heap+size_in_bytes_for_sheap_metadata + get_sheap_meta_size(next_in_heap)*size_of_sheap_chunk, get_sheap_meta_size(prev_in_heap) );
		sfree_chunks_num--;
	}
	
	if (merge_next && !merge_prev) //merge the next one only
	{
		if (sfree_chunks_list==next_in_heap) //we need to change where the start of the list points to
		{
			sfree_chunks_list=chunk_meta;
		}
		//chunk_meta->next=next_in_heap->next;
		set_sheap_meta_next(chunk_meta,get_sheap_meta_next(next_in_heap));
		//chunk_meta->previous=next_in_heap->previous; //set the correct previous!
		set_sheap_meta_previous(chunk_meta,get_sheap_meta_previous(next_in_heap));
		if (get_sheap_meta_previous(next_in_heap)!=NULL)
		{
			//(next_in_heap->previous)->next=chunk_meta;
			set_sheap_meta_next(get_sheap_meta_previous(next_in_heap),chunk_meta);
		}
		if (get_sheap_meta_next(next_in_heap)!=NULL)
		{
			//(next_in_heap->next)->previous=chunk_meta;
			set_sheap_meta_previous(get_sheap_meta_next(next_in_heap),chunk_meta);
		}
		
		//chunk_meta->size=chunk_meta->size+sizeof(long)+sizeof(uheap_metadata) + next_in_heap->size;
		//be careful! in chunks!
		set_sheap_meta_size(chunk_meta,get_sheap_meta_size(chunk_meta) + 1 + size_of_sheap_metadata_in_chunks + get_sheap_meta_size(next_in_heap) );
		//*((long*)((unsigned char*) chunk_meta + sizeof(sheap_metadata) + chunk_meta->size))=chunk_meta->size;
		set_long_int((unsigned char*) chunk_meta + size_in_bytes_for_sheap_metadata+get_sheap_meta_size(chunk_meta)*size_of_sheap_chunk,get_sheap_meta_size(chunk_meta));
	}
	
	if (!merge_next && merge_prev) //merge the previous one only
	{
		//just change the size of this one
		//prev_in_heap->size= prev_in_heap->size+ sizeof(long) + sizeof(uheap_metadata) + chunk_meta->size;
		set_sheap_meta_size(prev_in_heap, get_sheap_meta_size(prev_in_heap)+1+ size_of_sheap_metadata_in_chunks + get_sheap_meta_size(chunk_meta) );
		//*((long*)((unsigned char*) chunk_meta + sizeof(uheap_metadata) + chunk_meta->size))=prev_in_heap->size;
		set_long_int((unsigned char*) chunk_meta + size_in_bytes_for_sheap_metadata+get_sheap_meta_size(chunk_meta)*size_of_sheap_chunk,get_sheap_meta_size(prev_in_heap));
	}
	if (!merge_next && !merge_prev) //merge none, i.e. create a new node and put it at the start of the free nodes list
	{
		sfree_chunks_num++;
		if  (sfree_chunks_list!=NULL)
		{
			//sfree_chunks_list->previous=chunk_meta;
			set_sheap_meta_previous(sfree_chunks_list,chunk_meta);
			//chunk_meta->next=sfree_chunks_list;
			set_sheap_meta_next(chunk_meta,sfree_chunks_list);
			sfree_chunks_list=chunk_meta;
			//chunk_meta->previous=NULL;
			set_sheap_meta_previous(chunk_meta,NULL);
		}
		else
		{
			sfree_chunks_list=chunk_meta;
			//chunk_meta->next=NULL;
			set_sheap_meta_next(chunk_meta,NULL);
			//chunk_meta->previous=NULL;
			set_sheap_meta_previous(chunk_meta,NULL);
		}
	}
	

	//checking calls
	if (merge_next && !merge_prev)
	{
	printf("Checking chunk..\n");
	sprint_chunk(chunk_meta);
	scheck_chunk(chunk_meta,1);
	printf("checked chunk.\n");
	}
	
	//printf("merge next=%d,merge prev=%d\n",merge_next,merge_prev);
	//scheck_free_list_consistency(1);
	//scheck_alloc_list_consistency(1);
	
} //end of sfree_memory()

#endif

	//PLEASE PYTHON INIT A FUNCTION HERE
	NAME_OF_FUNCTION: sfree_memory
	RETURN_VALUE_SIZE: none
	//^FOR THE ABOVE: none/int/char etc
	NUM_OF_PARAMETERS: 1
		chars: 0 
		ints: 0
		longs: 0
		floats: 0
		doubles: 0
		pointers: 1 | names: ptr
		arb_pointers: 0
	END_OF_PARAMETERS
	NUM_OF_LOCAL_VARIABLES: 8
		chars: 2  | names: merge_prev,merge_next
		ints: 1 | names: temp_retval
		longs: 0
		floats: 0
		doubles: 0
		pointers: 5 | names: chunk_meta,prev_alloc,next_alloc,prev_in_heap,next_in_heap
		arb_pointers: 0
	END_OF_LOCAL_VARIABLES
	RETURN_EXPRESSION: NULL
	START_OF_FUNCTION : sfree_memory
	
	SET_STACK_CHAR(merge_prev,0);
	SET_STACK_CHAR(merge_next,0);
	
	
	
	//the metadata are going to be some bytes behind
	SET_STACK_PTR(chunk_meta,(sheap_metadata*)((unsigned char*) GET_STACK_PTR(ptr) - size_in_bytes_for_sheap_metadata));
	
	if (get_sheap_meta_in_use(GET_STACK_PTR(chunk_meta))==0)
	{
		fprintf(stderr,"ERROR. Attempted to free an already free position in the unsecure heap. position: %ld\n",(long)GET_STACK_PTR(ptr));
		sfree_chunks_list=GET_GLOBAL_PTR(globals.sfree_chunks_list);
		salloc_chunks_list=GET_GLOBAL_PTR(globals.salloc_chunks_list);
		sfree_chunks_num=GET_GLOBAL_LONG(globals.sfree_chunks_num);
		salloc_chunks_num=GET_GLOBAL_LONG(globals.salloc_chunks_num);
		print_sheap_lists(2);
		exit(12);
	}
	
	set_sheap_meta_in_use(GET_STACK_PTR(chunk_meta),0);
	SET_STACK_PTR(prev_alloc,get_sheap_meta_previous(GET_STACK_PTR(chunk_meta)));
	SET_STACK_PTR(next_alloc,get_sheap_meta_next(GET_STACK_PTR(chunk_meta)));
	
	UPDATE_GLOBAL_VAR(globals.salloc_chunks_num,GET_GLOBAL_LONG(globals.salloc_chunks_num)-1);
	if (GET_STACK_PTR(prev_alloc)==NULL && GET_STACK_PTR(next_alloc)==NULL)
	//the list is empty
	{
		assert(GET_GLOBAL_LONG(globals.salloc_chunks_num)==0);
		UPDATE_GLOBAL_VAR(globals.salloc_chunks_list,NULL);
	}
	if (GET_STACK_PTR(prev_alloc)!=NULL)
	{
		set_sheap_meta_next(GET_STACK_PTR(prev_alloc),GET_STACK_PTR(next_alloc));
		if (GET_GLOBAL_PTR(globals.salloc_chunks_list)==GET_STACK_PTR(chunk_meta)) //they point to the same address
		{
			UPDATE_GLOBAL_VAR(globals.salloc_chunks_list,GET_STACK_PTR(prev_alloc));
		}
	}
	if (GET_STACK_PTR(next_alloc)!=NULL)
	{
		set_sheap_meta_previous(GET_STACK_PTR(next_alloc),GET_STACK_PTR(prev_alloc));
		if (GET_GLOBAL_PTR(globals.salloc_chunks_list)==GET_STACK_PTR(chunk_meta)) //they point to the same address
		{
			UPDATE_GLOBAL_VAR(globals.salloc_chunks_list,GET_STACK_PTR(next_alloc)); //notice that if the same was activated for prev_alloc, it is not done now
		}
	}
	
	
	
	//now it's time to try to merge the free chunks, if possible
	if ((unsigned char*) GET_STACK_PTR(chunk_meta)!=(unsigned char*)GET_GLOBAL_PTR(globals.secure_heap)) //if we free the first chunk, there is no previous one
	{
		SET_STACK_PTR(prev_in_heap,(sheap_metadata *)( (unsigned char*) GET_STACK_PTR(chunk_meta)    -  get_long_int((unsigned char*) GET_STACK_PTR(chunk_meta) - size_of_sheap_chunk)*size_of_sheap_chunk -size_in_bytes_for_sheap_metadata -size_of_sheap_chunk)) ;
	}
	else
	{
		SET_STACK_PTR(prev_in_heap,NULL);
	}
	SET_STACK_PTR(next_in_heap,(sheap_metadata *)( (unsigned char*) GET_STACK_PTR(chunk_meta)    + size_in_bytes_for_sheap_metadata+ get_sheap_meta_size(GET_STACK_PTR(chunk_meta))*size_of_sheap_chunk + size_of_sheap_chunk  ));
	
	//IMPORTANT! We do not know if prev_in_heap and next_in_heap point to each other at all!
	
	
	//should we merge the next one?
	//HEY PYTHON CALLING FUNCTION: sout_of_bounds_ptr | WRITE RESULT TO: temp_retval__securevar_SET_STACK_INT | PARAMETERS TO CALL WITH: GET_STACK_PTR(next_in_heap)
	if (!GET_STACK_INT(temp_retval))
	{
		if (get_sheap_meta_in_use(GET_STACK_PTR(next_in_heap))==0)
		{
			SET_STACK_CHAR(merge_next,1);
		}
	}
	
	//should we merge the previous one?
	//HEY PYTHON CALLING FUNCTION: sout_of_bounds_ptr | WRITE RESULT TO: temp_retval__securevar_SET_STACK_INT | PARAMETERS TO CALL WITH: GET_STACK_PTR(prev_in_heap)
	if (!GET_STACK_INT(temp_retval))
	{
		if (get_sheap_meta_in_use(GET_STACK_PTR(prev_in_heap))==0)
		{
			SET_STACK_CHAR(merge_prev,1);
		}
	}
	
	
	
	if (GET_STACK_CHAR(merge_next) && GET_STACK_CHAR(merge_prev)) //merge both
	{
		//ok we have 2 , possibly independent nodes into the list and we want to merge them. We erase the <next_in_heap> node.
		
		if (get_sheap_meta_next(GET_STACK_PTR(next_in_heap))!=NULL)
		{
			//(next_in_heap->next)->previous=next_in_heap->previous;
			set_sheap_meta_previous(   get_sheap_meta_next(GET_STACK_PTR(next_in_heap)),get_sheap_meta_previous(GET_STACK_PTR(next_in_heap)));
		}
		if (get_sheap_meta_previous(GET_STACK_PTR(next_in_heap))!=NULL)
		{
			//(next_in_heap->previous)->next=next_in_heap->next;
			set_sheap_meta_next(get_sheap_meta_previous(GET_STACK_PTR(next_in_heap)),get_sheap_meta_next(GET_STACK_PTR(next_in_heap)));
		}
		
		if (GET_GLOBAL_PTR(globals.sfree_chunks_list)==GET_STACK_PTR(next_in_heap))
		{
			if(get_sheap_meta_next(GET_STACK_PTR(next_in_heap))==GET_STACK_PTR(prev_in_heap))
			{
				; //prefect, everything is set, just:
				UPDATE_GLOBAL_VAR(globals.sfree_chunks_list,GET_STACK_PTR(prev_in_heap));
				//prev_in_heap->previous=NULL;
				set_sheap_meta_previous(GET_STACK_PTR(prev_in_heap),NULL);
			}	
			else
			{
				//lift prev_in_heap from its place and put it in the start
				if (get_sheap_meta_next(GET_STACK_PTR(prev_in_heap))!=NULL)
				{
					//(prev_in_heap->next)->previous=prev_in_heap->previous;
					set_sheap_meta_previous(get_sheap_meta_next(GET_STACK_PTR(prev_in_heap)),get_sheap_meta_previous(GET_STACK_PTR(prev_in_heap)));
				}
				if (get_sheap_meta_previous(GET_STACK_PTR(prev_in_heap))!=NULL)
				{
					//(prev_in_heap->previous)->next=prev_in_heap->next;
					set_sheap_meta_next(get_sheap_meta_previous(GET_STACK_PTR(prev_in_heap)),get_sheap_meta_next(GET_STACK_PTR(prev_in_heap)));
				}
				
				if (get_sheap_meta_next(GET_STACK_PTR(next_in_heap))!=NULL)
				{
					//(next_in_heap->next)->previous=prev_in_heap; //make the second in the list point to the first
					set_sheap_meta_previous(get_sheap_meta_next(GET_STACK_PTR(next_in_heap)),GET_STACK_PTR(prev_in_heap));
				}
				//prev_in_heap->next=next_in_heap->next;
				//prev_in_heap->previous=NULL;
				set_sheap_meta_next(GET_STACK_PTR(prev_in_heap),get_sheap_meta_next(GET_STACK_PTR(next_in_heap)));
				set_sheap_meta_previous(GET_STACK_PTR(prev_in_heap),NULL);
				UPDATE_GLOBAL_VAR(globals.sfree_chunks_list,GET_STACK_PTR(prev_in_heap)); 
			}
		}
		
		
		//prev_in_heap->size= prev_in_heap->size+ sizeof(long) + sizeof(sheap_metadata) + chunk_meta->size+sizeof(long) + sizeof(sheap_metadata) + next_in_heap->size;
		//be careful! in chunks!
		set_sheap_meta_size(GET_STACK_PTR(prev_in_heap),get_sheap_meta_size(GET_STACK_PTR(prev_in_heap)) + 1 + 2*GET_GLOBAL_INT(globals.size_of_sheap_metadata_in_chunks) + get_sheap_meta_size(GET_STACK_PTR(chunk_meta)) + 1 + get_sheap_meta_size(GET_STACK_PTR(next_in_heap)) );
		//*((long*)((unsigned char*) next_in_heap + sizeof(uheap_metadata) + next_in_heap->size))=prev_in_heap->size;
		set_long_int((unsigned char*) GET_STACK_PTR(next_in_heap)+size_in_bytes_for_sheap_metadata + get_sheap_meta_size(GET_STACK_PTR(next_in_heap))*size_of_sheap_chunk, get_sheap_meta_size(GET_STACK_PTR(prev_in_heap)) );
		UPDATE_GLOBAL_VAR(globals.sfree_chunks_num,GET_GLOBAL_LONG(globals.sfree_chunks_num)-1);
	}
	
	if (GET_STACK_CHAR(merge_next) && !GET_STACK_CHAR(merge_prev)) //merge the next one only
	{
		if (GET_GLOBAL_PTR(globals.sfree_chunks_list)==GET_STACK_PTR(next_in_heap)) //we need to change where the start of the list points to
		{
			UPDATE_GLOBAL_VAR(globals.sfree_chunks_list,GET_STACK_PTR(chunk_meta));
		}
		//chunk_meta->next=next_in_heap->next;
		set_sheap_meta_next(GET_STACK_PTR(chunk_meta),get_sheap_meta_next(GET_STACK_PTR(next_in_heap)));
		//chunk_meta->previous=next_in_heap->previous; //set the correct previous!
		set_sheap_meta_previous(GET_STACK_PTR(chunk_meta),get_sheap_meta_previous(GET_STACK_PTR(next_in_heap)));
		if (get_sheap_meta_previous(GET_STACK_PTR(next_in_heap))!=NULL)
		{
			//(next_in_heap->previous)->next=chunk_meta;
			set_sheap_meta_next(get_sheap_meta_previous(GET_STACK_PTR(next_in_heap)),GET_STACK_PTR(chunk_meta));
		}
		if (get_sheap_meta_next(GET_STACK_PTR(next_in_heap))!=NULL)
		{
			//(next_in_heap->next)->previous=chunk_meta;
			set_sheap_meta_previous(get_sheap_meta_next(GET_STACK_PTR(next_in_heap)),GET_STACK_PTR(chunk_meta));
		}
		
		//chunk_meta->size=chunk_meta->size+sizeof(long)+sizeof(uheap_metadata) + next_in_heap->size;
		//be careful! in chunks!
		set_sheap_meta_size(GET_STACK_PTR(chunk_meta),get_sheap_meta_size(GET_STACK_PTR(chunk_meta)) + 1 + size_of_sheap_metadata_in_chunks + get_sheap_meta_size(GET_STACK_PTR(next_in_heap)) );
		//*((long*)((unsigned char*) chunk_meta + sizeof(sheap_metadata) + chunk_meta->size))=chunk_meta->size;
		set_long_int((unsigned char*) GET_STACK_PTR(chunk_meta) + size_in_bytes_for_sheap_metadata+get_sheap_meta_size(GET_STACK_PTR(chunk_meta))*size_of_sheap_chunk,get_sheap_meta_size(GET_STACK_PTR(chunk_meta)));
	}
	
	if (!GET_STACK_CHAR(merge_next) && GET_STACK_CHAR(merge_prev)) //merge the previous one only
	{
		//just change the size of this one
		//prev_in_heap->size= prev_in_heap->size+ sizeof(long) + sizeof(uheap_metadata) + chunk_meta->size;
		set_sheap_meta_size(GET_STACK_PTR(prev_in_heap), get_sheap_meta_size(GET_STACK_PTR(prev_in_heap))+1+ size_of_sheap_metadata_in_chunks + get_sheap_meta_size(GET_STACK_PTR(chunk_meta)) );
		//*((long*)((unsigned char*) chunk_meta + sizeof(uheap_metadata) + chunk_meta->size))=prev_in_heap->size;
		set_long_int((unsigned char*) GET_STACK_PTR(chunk_meta) + size_in_bytes_for_sheap_metadata+get_sheap_meta_size(GET_STACK_PTR(chunk_meta))*size_of_sheap_chunk,get_sheap_meta_size(GET_STACK_PTR(prev_in_heap)));
	}
	if (!GET_STACK_CHAR(merge_next) && !GET_STACK_CHAR(merge_prev)) //merge none, i.e. create a new node and put it at the start of the free nodes list
	{
		UPDATE_GLOBAL_VAR(globals.sfree_chunks_num,GET_GLOBAL_LONG(globals.sfree_chunks_num)+1);
		if  (GET_GLOBAL_PTR(globals.sfree_chunks_list)!=NULL)
		{
			//sfree_chunks_list->previous=chunk_meta;
			set_sheap_meta_previous(GET_GLOBAL_PTR(globals.sfree_chunks_list),GET_STACK_PTR(chunk_meta));
			//chunk_meta->next=sfree_chunks_list;
			set_sheap_meta_next(GET_STACK_PTR(chunk_meta),GET_GLOBAL_PTR(globals.sfree_chunks_list));
			UPDATE_GLOBAL_VAR(globals.sfree_chunks_list,GET_STACK_PTR(chunk_meta));
			//chunk_meta->previous=NULL;
			set_sheap_meta_previous(GET_STACK_PTR(chunk_meta),NULL);
		}
		else
		{
			UPDATE_GLOBAL_VAR(globals.sfree_chunks_list,GET_STACK_PTR(chunk_meta));
			//chunk_meta->next=NULL;
			set_sheap_meta_next(GET_STACK_PTR(chunk_meta),NULL);
			//chunk_meta->previous=NULL;
			set_sheap_meta_previous(GET_STACK_PTR(chunk_meta),NULL);
		}
	}
	
	
	//checking calls
	//before that, let's set the unsecure globals with the secure values since the checking functions work with them
	#if 0
		sfree_chunks_list=GET_GLOBAL_PTR(globals.sfree_chunks_list);
		salloc_chunks_list=GET_GLOBAL_PTR(globals.salloc_chunks_list);
		sfree_chunks_num=GET_GLOBAL_LONG(globals.sfree_chunks_num);
		salloc_chunks_num=GET_GLOBAL_LONG(globals.salloc_chunks_num);
		/*
		if (GET_STACK_CHAR(merge_next) && !GET_STACK_CHAR(merge_prev))
		{
		printf("Checking chunk..\n");
		sprint_chunk(GET_STACK_PTR(chunk_meta));
		scheck_chunk(GET_STACK_PTR(chunk_meta),1);
		printf("checked chunk.\n");
		}
		*/
		//printf("merge next=%d,merge prev=%d\n",GET_STACK_CHAR(merge_next),GET_STACK_CHAR(merge_prev));
		scheck_free_list_consistency(1);
		scheck_alloc_list_consistency(1);
	#endif
	END_OF_FUNCTION: sfree_memory









