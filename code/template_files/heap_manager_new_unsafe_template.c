#include "headers_needed.h"

/*This is a custom-made heap manager, based on http://g.oswego.edu/dl/html/malloc.html.
 *Its goal is not to make something necessarily efficient, but functional.
 * It is unsecure, but its performance will be compared to the secure version.
 */
 
/*Wherever you see "u" in a variable/function name, it means unsafe/unsecure*/

#define uminimum_free_chunk_size (16)  //bytes 
 
unsigned char * unsecure_heap;
long total_uheap_bytes_allocated; /*total bytes allocated for the unsecure heap (multiple of 16)*/

/*The start of each used AND unused block has the following info. Notice that is has 32 bytes for 64-bit x86*/
typedef struct uheap_metadata_struct{
	long size; //the size of the USEFUL data. Metadata at the start and end are not counted.
	struct uheap_metadata_struct * previous;
	struct uheap_metadata_struct * next;
	long in_use;  //basically a boolean. We reserve more space because of possible future extra functionality.
} uheap_metadata;

uheap_metadata * ufree_chunks_list;
uheap_metadata * ualloc_chunks_list;
long ufree_chunks_num;
long ualloc_chunks_num;


void ucheck_free_list_consistency(int type);
void ucheck_alloc_list_consistency(int type);
int ucheck_chunk(uheap_metadata *chunk,int type);
void uprint_chunk(uheap_metadata *chunk);

void init_unsecure_heap()
{
	uheap_metadata meta;
	
	//let's make it a multiple of 16. If it is, add 16 more. Why not.
	total_uheap_bytes_allocated=bytes_to_allocate_on_start+(16-bytes_to_allocate_on_start%16);
	unsecure_heap=error_checking_malloc(total_uheap_bytes_allocated,__func__,__LINE__);
	memset(unsecure_heap,0,total_uheap_bytes_allocated); //set them 0 for convenience
	//init metadata of free block
	meta.size=total_uheap_bytes_allocated-sizeof(uheap_metadata) -sizeof(long); //count the size at the end too
	meta.previous=NULL;
	meta.next=NULL;
	meta.in_use=0;
	memcpy(unsecure_heap,&meta,sizeof(meta));
	*((long*)(((unsigned char*) unsecure_heap +total_uheap_bytes_allocated - sizeof(long))))=meta.size; //write the size at the end of the chunk
	//init the pointers and numbers
	ufree_chunks_list=(uheap_metadata*) &unsecure_heap[0];
	ualloc_chunks_list=NULL;
	ufree_chunks_num=1;
	ualloc_chunks_num=0;
}

void free_unsecure_heap()
{
	free(unsecure_heap);
}


void print_unsecure_heap(unsigned char * mem)
{
	/*Memory printing, for testing purposes*/
	long i;
	unsigned char * p;
	p=&mem[0];
	printf("Printing uheap memory. Address of uheap %ld, address to print from %ld\n",(long)unsecure_heap,(long)mem);
	for (i=0;i<((unsigned char*)unsecure_heap+total_uheap_bytes_allocated)-mem;i++)
	{
		printf("0x%02x ",p[i]);
	}
	printf("\n");

}

void print_unsecure_heap_range(unsigned char * mem,long size_to_print)
{
	/*Memory printing, for testing purposes*/
	long i;
	unsigned char * p;
	p=&mem[0];
	printf("Printing uheap memory. Address of uheap %ld, address to print from %ld, print %ld bytes total\n",(long)unsecure_heap,(long)mem,size_to_print);
	for (i=0;i<size_to_print;i++)
	{
		printf("0x%02x ",p[i]);
	}
	printf("\n");

}

void print_ulist(uheap_metadata * head,long fd)
{
	uheap_metadata * temp;
	long i=0;
	FILE *fp;
	
	if (fd==1)
		fp=stdout;
	else
		fp=stderr;
	
	if (head==NULL)
	{
		fprintf(fp,"List is empty.\n");
		return;
	}
	
	for (temp=head;temp!=NULL;temp=temp->next)
	{
		fprintf(fp,"Node %ld: In_use=%ld, Size in bytes=%ld, position in mem=%ld , previous: %ld, next: %ld\n",i,temp->in_use,temp->size,(long)temp,(long)temp->previous,(long)temp->next);
		i++;
	}
}

void print_uheap_lists(long fd)
{
	FILE *fp;
	if (fd==1)
		fp=stdout;
	else
		fp=stderr;
	fprintf(fp,"Printing lists in unsafe heap\n");
	fprintf(fp,"uFree chunks list:\n");
	fprintf(fp,"Number of nodes:%ld\n",ufree_chunks_num);
	print_ulist(ufree_chunks_list,fd);
	
	fprintf(fp,"uAllocated chunks list:\n");
	fprintf(fp,"Number of nodes:%ld\n",ualloc_chunks_num);
	print_ulist(ualloc_chunks_list,fd);
	
}



//sees if the pointer points outside of the unsecure heap. Returns 1 for yes, 0 for no.
int uout_of_bounds_ptr(void * ptr)
{
	if ((unsigned char *) ptr < (unsigned char*) unsecure_heap)
		return 1;
	if ((unsigned char *) ptr >= (unsigned char*) unsecure_heap+ total_uheap_bytes_allocated)
		return 1;
	
	return 0;
	
}


/*Frees the memory pointed to by the pointer in the argument*/
void ufree_memory(void * ptr)
{
	uheap_metadata * chunk_meta;
	uheap_metadata * prev_alloc;
	uheap_metadata * next_alloc;
	uheap_metadata * prev_in_heap;
	uheap_metadata * next_in_heap;
	char merge_prev=0;
	char merge_next=0;
	
	//the metadata are going to be some bytes behind
	chunk_meta=(uheap_metadata*)((unsigned char*) ptr - sizeof(uheap_metadata));
	
	if (chunk_meta->in_use==0)
	{
		fprintf(stderr,"ERROR. Attempted to free an already free position in the unsecure heap. position: %ld\n",(long)ptr);
		print_uheap_lists(2);
		exit(12);
	}
	
	chunk_meta->in_use=0;
	prev_alloc=chunk_meta->previous;
	next_alloc=chunk_meta->next;
	
	ualloc_chunks_num--;
	if (prev_alloc==NULL && next_alloc==NULL)
	//the list is empty
	{
		assert(ualloc_chunks_num==0);
		ualloc_chunks_list=NULL;
	}
	if (prev_alloc!=NULL)
	{
		prev_alloc->next=next_alloc;
		if (ualloc_chunks_list==chunk_meta) //they point to the same address
		{
			ualloc_chunks_list=prev_alloc;
		}
	}
	if (next_alloc!=NULL)
	{
		next_alloc->previous=prev_alloc;
		if (ualloc_chunks_list==chunk_meta) //they point to the same address
		{
			ualloc_chunks_list=next_alloc; //notice that if the same was activated for prev_alloc, it is not done now
		}
	}
	
	//now it's time to try to merge the free chunks, if possible
	if ((unsigned char*) chunk_meta!=(unsigned char*)unsecure_heap) //if we free the first chunk, there is no previous one
	{
		prev_in_heap=(uheap_metadata *)( (unsigned char*) chunk_meta    -  *((long*)((unsigned char*) chunk_meta - sizeof(long))) -sizeof(uheap_metadata) -sizeof(long) );
	}
	else
	{
		prev_in_heap=NULL;
	}
	next_in_heap=(uheap_metadata *)( (unsigned char*) chunk_meta    + sizeof(uheap_metadata)+ chunk_meta->size + sizeof(long)  );
	
	//IMPORTANT! We do not know if prev_in_heap and next_in_heap point to each other at all!
	
	
	//should we merge the next one?
	if (!uout_of_bounds_ptr(next_in_heap))
	{
		if (next_in_heap->in_use==0)
		{
			merge_next=1;
		}
	}
	
	//should we merge the previous one?
	if (!uout_of_bounds_ptr(prev_in_heap))
	{
		if (prev_in_heap->in_use==0)
		{
			merge_prev=1;
		}
	}
	
	if (merge_next && merge_prev) //merge both
	{
		//ok we have 2 , possibly independent nodes into the list and we want to merge them. We erase the <next_in_heap> node.
		
		if (next_in_heap->next!=NULL)
		{
			(next_in_heap->next)->previous=next_in_heap->previous;
		}
		if (next_in_heap->previous!=NULL)
		{
			(next_in_heap->previous)->next=next_in_heap->next;
		}
		
		if (ufree_chunks_list==next_in_heap)
		{
			if(next_in_heap->next==prev_in_heap)
			{
				; //prefect, everything is set, just:
				ufree_chunks_list=prev_in_heap;
				prev_in_heap->previous=NULL;
			}	
			else
			{
				//lift prev_in_heap from its place and put it in the start
				if (prev_in_heap->next!=NULL)
				{
					(prev_in_heap->next)->previous=prev_in_heap->previous;
				}
				if (prev_in_heap->previous!=NULL)
				{
					(prev_in_heap->previous)->next=prev_in_heap->next;
				}
				
				if (next_in_heap->next!=NULL)
				{
					(next_in_heap->next)->previous=prev_in_heap; //make the second in the list point to the first
				}
				prev_in_heap->next=next_in_heap->next;
				prev_in_heap->previous=NULL;
				ufree_chunks_list=prev_in_heap; 
			}
		}
		
		
		prev_in_heap->size= prev_in_heap->size+ sizeof(long) + 2*sizeof(uheap_metadata) + chunk_meta->size+sizeof(long)  + next_in_heap->size;
		*((long*)((unsigned char*) next_in_heap + sizeof(uheap_metadata) + next_in_heap->size))=prev_in_heap->size;
		ufree_chunks_num--;
	}
	
	if (merge_next && !merge_prev) //merge the next one only
	{
		if (ufree_chunks_list==next_in_heap) //we need to change where the start of the list points to
		{
			ufree_chunks_list=chunk_meta;
		}
		chunk_meta->next=next_in_heap->next;
		chunk_meta->previous=next_in_heap->previous; //set the correct previous!
		if (next_in_heap->previous!=NULL)
		{
			(next_in_heap->previous)->next=chunk_meta;
		}
		if (next_in_heap->next!=NULL)
		{
			(next_in_heap->next)->previous=chunk_meta;
		}
		chunk_meta->size=chunk_meta->size+sizeof(long)+sizeof(uheap_metadata) + next_in_heap->size;
		*((long*)((unsigned char*) chunk_meta + sizeof(uheap_metadata) + chunk_meta->size))=chunk_meta->size;
	}
	
	if (!merge_next && merge_prev) //merge the previous one only
	{
		//just change the size of this one
		prev_in_heap->size= prev_in_heap->size+ sizeof(long) + sizeof(uheap_metadata) + chunk_meta->size;
		*((long*)((unsigned char*) chunk_meta + sizeof(uheap_metadata) + chunk_meta->size))=prev_in_heap->size;
	}
	if (!merge_next && !merge_prev) //merge none, i.e. create a new node and put it at the start of the free nodes list
	{
		ufree_chunks_num++;
		if  (ufree_chunks_list!=NULL)
		{
			ufree_chunks_list->previous=chunk_meta;
			chunk_meta->next=ufree_chunks_list;
			ufree_chunks_list=chunk_meta;
			chunk_meta->previous=NULL;
		}
		else
		{
			ufree_chunks_list=chunk_meta;
			chunk_meta->next=NULL;
			chunk_meta->previous=NULL;
		}
	}
	
	/*
	//checking calls
	if (merge_next && !merge_prev)
	{
	printf("Checking chunk..\n");
	uprint_chunk(chunk_meta);
	ucheck_chunk(chunk_meta,1);
	printf("checked chunk.\n");
	}
	*/
	//printf("merge next=%d,merge prev=%d\n",merge_next,merge_prev);
	//ucheck_free_list_consistency(1);
	//ucheck_alloc_list_consistency(1);
	
} //end of ufree_memory()



/*Finds, if it exists, a group of <bytes_needed> free bytes. Returns the pointer in the unsecured heap in which the metadata of that free chunk start*/
/*If not, returns NULL*/
uheap_metadata * ufind_large_enough_free_group(long bytes_needed)
{
	uheap_metadata * temp;
	
	if (ufree_chunks_list==NULL)
		return NULL;
	
	for(temp=ufree_chunks_list;temp!=NULL;temp=temp->next)
	{
		if(temp->size >= bytes_needed)
			return temp;
	}
	
	//nothing found
	return NULL;
}


//unsafe malloc
unsigned char * umalloc(long bytes_asked_to_allocate)
{
	uheap_metadata * chunk_found;
	uheap_metadata * prev_free;
	uheap_metadata * next_free;
	uheap_metadata * new_meta;
	long bytes_to_allocate;
	char give_entire_chunk;
	
	if (bytes_asked_to_allocate==0)
		return NULL;
	
	if (bytes_asked_to_allocate%16==0)
		bytes_to_allocate= bytes_asked_to_allocate;
	else
		bytes_to_allocate= bytes_asked_to_allocate+(16-bytes_asked_to_allocate%16); //let's make it a multiple of 16
	
	//find, using linear search, the group that can hold the needed bytes
	chunk_found=ufind_large_enough_free_group(bytes_to_allocate);
	
	if (chunk_found==NULL)
		return NULL;

	//do we need just a part of the chunk, or are we going to give it all?
	give_entire_chunk=1;
	//check if the remaining is large enough
	if (chunk_found->size - bytes_to_allocate >= sizeof(long) /*for new chunk*/ + sizeof(uheap_metadata) /*for old, cut chunk*/ + uminimum_free_chunk_size) /*for old, cut chunk*/ //there is enough
		give_entire_chunk=0;
		
	if (give_entire_chunk==1)
	{
		chunk_found->in_use=1; //that's only what should change in the chunk in this case
		ufree_chunks_num--;
		prev_free=chunk_found->previous;
		next_free=chunk_found->next;
		
		if (prev_free==NULL && next_free==NULL)
		{
			ufree_chunks_list=NULL;
		}
		
		
		if (prev_free!=NULL)
		{
			prev_free->next=next_free;
			if (ufree_chunks_list==chunk_found) //ufree_chunks_list should always point to the FIRST free chunk
			{
				ufree_chunks_list=prev_free;
			}
		}
		
		if (next_free!=NULL)
		{
			next_free->previous=prev_free;
			if (ufree_chunks_list==chunk_found) //ufree_chunks_list should always point to the FIRST free chunk
			{
				ufree_chunks_list=next_free;	//notice it does not happen now if both are !=NULL
			}
		}
			
	}
	else //give_entire_chunk==0
	{
		prev_free=chunk_found->previous;
		next_free=chunk_found->next;
		
		//set the new metadata in the newly created chunk
		new_meta=(uheap_metadata*) ((unsigned char*) chunk_found + sizeof(uheap_metadata) + bytes_to_allocate + sizeof(long));
		new_meta->in_use=0;
		new_meta->previous=prev_free;
		new_meta->next=next_free;
		new_meta->size=chunk_found->size - (bytes_to_allocate+sizeof(long)+sizeof(uheap_metadata));
		*((long*)((unsigned char*)new_meta + sizeof(uheap_metadata) + new_meta->size)) = new_meta->size;		
		
		//now set the neigbors of the new
		if (ufree_chunks_list==chunk_found)
		{
			ufree_chunks_list=new_meta;
		}
		if (prev_free!=NULL)
		{
			prev_free->next=new_meta;
		}
		if (next_free!=NULL)
		{
			next_free->previous=new_meta;
		}
		
		//set the metadata in the chunk found
		chunk_found->in_use=1;
		*((long*)((unsigned char*)new_meta -sizeof(long)))=bytes_to_allocate; //write the new size
		chunk_found->size=bytes_to_allocate;
		//will set the pointers in the end
					
	}

	//and now lets put it in the start of the allocated chunks list
	ualloc_chunks_num++;
	if (ualloc_chunks_list!=NULL)
	{
		ualloc_chunks_list->previous=chunk_found;
	}
	chunk_found->next=ualloc_chunks_list;
	ualloc_chunks_list=chunk_found;
	chunk_found->previous=NULL;
	
	/*
	//checking calls
	if (give_entire_chunk==0)
	{
		printf("Checking chunk..\n");
		uprint_chunk(new_meta);
		ucheck_chunk(new_meta,1);
	}
	printf("Checking chunk..\n");
	uprint_chunk(chunk_found);
	ucheck_chunk(chunk_found,2);
	*/
	//ucheck_free_list_consistency(2);
	//ucheck_alloc_list_consistency(2);
	
	//return the start of the useful data
	return ((unsigned char*) chunk_found + sizeof(uheap_metadata));

} //end of umalloc()


/*Wrapper for umalloc(). Checks for NULL return value and exits if this is true*/
void * error_checking_umalloc_memory(long bytes_for_allocation,const char * fun_name, int line)
{
	void * ret;
	if (bytes_for_allocation==0) return NULL;
	ret=umalloc(bytes_for_allocation);
	if (ret==NULL)
	{
		fprintf(stderr,"Umalloc() in function %s, line %d. Requested %ld bytes. Perhaps not enough memory?\n",fun_name,line,bytes_for_allocation);
		exit(52);
	}
	return ret;	
}

#define max_total_blocks (10000)


void uprint_chunk(uheap_metadata *chunk)
{
	printf("Chunk at position %ld, in_use:%ld, previous:%ld,next:%ld,size:%ld\n",(long)chunk,chunk->in_use,(long)chunk->previous,(long)chunk->next,chunk->size);
}


int ucheck_chunk(uheap_metadata *chunk,int type) //type=1- > free, type=2->alloc
{
	int retval=1;
	long chunk_size;
	
	if (type==1 && chunk->in_use==1)
	{
		fprintf(stderr,"chunk at position %ld is marked as allocated but is in the free list\n",(long)chunk);
		printf("\n\n");
		uheap_metadata * temp;
		printf("Free list:\n");
		for (temp=ufree_chunks_list;temp!=NULL;temp=temp->next)
			uprint_chunk(temp);
		printf("Alloc list:\n");
		for (temp=ualloc_chunks_list;temp!=NULL;temp=temp->next)
			uprint_chunk(temp);
		printf("\n\n");
		retval=0;
	}
	if (type==2 && chunk->in_use==0)
	{
		fprintf(stderr,"chunk at position %ld is marked as freed but is in the alloc list\n",(long)chunk);
		printf("\n\n");
		uheap_metadata * temp;
		printf("Free list:\n");
		for (temp=ufree_chunks_list;temp!=NULL;temp=temp->next)
			uprint_chunk(temp);
		printf("Alloc list:\n");
		for (temp=ualloc_chunks_list;temp!=NULL;temp=temp->next)
			uprint_chunk(temp);
		printf("\n\n");
		retval=0;
	}
	
	chunk_size=chunk->size;
	if (*((long*)((unsigned char*) chunk + sizeof(uheap_metadata) + chunk_size))!=chunk_size)
	{
		fprintf(stderr,"chunk at position %ld (in %s list) does not have its size properly set in its end\n",(long)chunk,type==1?"free":"alloc");
		fprintf(stderr,"Size at that position (%ld) should be %ld but it is %ld.\n",(long)((unsigned char*) chunk + sizeof(uheap_metadata) + chunk_size),chunk_size,*((long*)((unsigned char*) chunk + sizeof(uheap_metadata) + chunk_size)));
		uprint_chunk(chunk);
		
		printf("\n\n");
		uheap_metadata * temp;
		if (type==1)
		{
			for (temp=ufree_chunks_list;temp!=NULL;temp=temp->next)
				uprint_chunk(temp);
		}
		if (type==2)
		{
			for (temp=ualloc_chunks_list;temp!=NULL;temp=temp->next)
				uprint_chunk(temp);
		}
		printf("\n\n");
		retval=0;
	}
	if (chunk->next!=NULL && (chunk->next)->previous!=chunk)
	{
		fprintf(stderr,"chunk at position %ld (in %s list) does not have good pointer with its next neighbor\n",(long)chunk,type==1?"free":"alloc");
		uprint_chunk(chunk);
		uprint_chunk(chunk->next);
		retval=0;
	}
	if (chunk->previous!=NULL && (chunk->previous)->next!=chunk)
	{
		fprintf(stderr,"chunk at position %ld (in %s list) does not have good pointer with its previous neighbor\n",(long)chunk,type==1?"free":"alloc");
		uprint_chunk(chunk);
		uprint_chunk(chunk->previous);
		retval=0;
	}
	
	return retval;
}


void ucheck_free_list_consistency(int type)//type=1- > coming from ufree, type=2-> coming form umalloc
{
	int total_blocks;
	uheap_metadata * temp;
	int temp_retval;
	
	total_blocks=0;
	for (temp=ufree_chunks_list;temp!=NULL;temp=temp->next)
	{
		total_blocks++;
		temp_retval=ucheck_chunk(temp,1);
		if (temp_retval==0)
		{
			fprintf(stderr,"ERROR. Coming from %s\n",type==1?"ufree":"umalloc");
			fprintf(stderr,"problem in chunk of free list.\n");
			exit(13);
		}
		if (total_blocks> max_total_blocks)
		{
			fprintf(stderr,"ERROR. Coming from %s\n",type==1?"ufree":"umalloc");
			fprintf(stderr,"Total free blocks exceeded the max number.\n");
			exit(14);
		}
		if (total_blocks>1 && temp->previous==NULL)
		{
			fprintf(stderr,"ERROR. Coming from %s\n",type==1?"ufree":"umalloc");
			fprintf(stderr,"A chunk in the middle of a list has NULL previous.\n");
			fprintf(stderr,"Printing free list\n");
			print_ulist(ufree_chunks_list,1);
			exit(15);
		}
	}
	if ((long)total_blocks!=(long)ufree_chunks_num)
	{
			fprintf(stderr,"ERROR. Coming from %s\n",type==1?"ufree":"umalloc");
			fprintf(stderr,"Different size of free list (%ld) and ufree_chunks_num(%ld).\n",(long)total_blocks,ufree_chunks_num);
			for (temp=ufree_chunks_list;temp!=NULL;temp=temp->next)
				uprint_chunk(temp);
			exit(14);
	}
		
}


void ucheck_alloc_list_consistency(int type)//type=1- > coming from ufree, type=2-> coming form umalloc
{
	int total_blocks;
	uheap_metadata * temp;
	int temp_retval;
	
	total_blocks=0;
	for (temp=ualloc_chunks_list;temp!=NULL;temp=temp->next)
	{
		total_blocks++;
		temp_retval=ucheck_chunk(temp,2);
		if (temp_retval==0)
		{
			fprintf(stderr,"ERROR. Coming from %s\n",type==1?"ufree":"umalloc");
			fprintf(stderr,"problem in chunk of alloc list.\n");
			exit(13);
		}
		if (total_blocks> max_total_blocks)
		{
			fprintf(stderr,"ERROR. Coming from %s\n",type==1?"ufree":"umalloc");
			fprintf(stderr,"Total alloc blocks exceeded the max number.\n");
			exit(14);
		}
		if (total_blocks>1 && temp->previous==NULL)
		{
			fprintf(stderr,"ERROR. Coming from %s\n",type==1?"ufree":"umalloc");
			fprintf(stderr,"A chunk in the middle of a list has NULL previous.\n");
			fprintf(stderr,"Printing alloc list\n");
			print_ulist(ualloc_chunks_list,1);
			exit(15);
		}
	}
	if ((long)total_blocks!=(long)ualloc_chunks_num)
	{
			fprintf(stderr,"ERROR. Coming from %s\n",type==1?"ufree":"umalloc");
			fprintf(stderr,"Different size of alloc list (%ld) and ualloc_chunks_num(%ld).\n",(long)total_blocks,ualloc_chunks_num);
			for (temp=ualloc_chunks_list;temp!=NULL;temp=temp->next)
				uprint_chunk(temp);
			exit(14);
	}
		
}
