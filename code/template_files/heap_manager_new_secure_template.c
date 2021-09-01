#include "headers_needed.h"

extern long get_sheap_meta_size(void* meta);
extern sheap_metadata* get_sheap_meta_previous(void* meta);
extern sheap_metadata* get_sheap_meta_next(void* meta);
extern long get_sheap_meta_in_use(void* meta);
extern void set_sheap_meta_size(void* meta,long value);
extern sheap_metadata* set_sheap_meta_previous(void* meta,void* value);
extern sheap_metadata* set_sheap_meta_next(void* meta,void* value);
extern void set_sheap_meta_in_use(void* meta,long value);


/* The heap memory image should be like ('o'=useful data, 'x'=keyshares ,'m'= MAC bytes):
oooxxxxxxmmmooo.....xxxxxxmmmoooxxxxxxmmm
Which means: n times useful data, n times keyshares, n times mac bytes
Let's call these groups of bytes as chunks (of useful data, and of keyshares+macs)
Allocation is done as allocation of a whole number of useful chunks. A chunk is not broken between different allocations.
The heap memory manager uses two lists: One for free consecutive chunks (which are grouped together  whenever they don't have data among them),
and one for allocated groups of chunks, one group for every smalloc() call.


The idea behind the heap manager is here: based on http://g.oswego.edu/dl/html/malloc.html
However this is a custom-made one, and a direct port to a "secure" version of the one implemented in heap_manager_new_unsafe_template.c
Its goal is not to make something necessarily efficient, but functional.
It is the equivalent of heap_manager_new_unsafe_template.c (copied line by line), but uses a "secure" heap with keys and macs.
*/

/*Wherever you see "s" in a variable/function name, it means safe/secure*/

/* The functions are implemented in 2 ways:
 * One that uses the secure structures BUT does not use the secure stack/globals (therefore it is not "secure"). It is used for testing and code correctness.
 * And one that uses the secure stack/globals, which means that can be used in a "secure" environment.
 * 
 * The global variables have their corresponding equivalents in the global declaration in main_program_template.c
*/

/*Important note: The metadata AND the size at the end of an allocated space take their own chunks. Inside these chunks THERE IS NO DATA FOR THE USER*/


#define sminimum_free_chunk_size (bytes_for_useful_data)  //one block of bytes 

unsigned char * secure_heap;
long total_sheap_bytes_allocated; /*total bytes allocated for the secure heap (multiple of 16), not secured since it is considered fixed*/
long total_chunks_in_secure_heap; /*again, not secured since the size of the heap is considered fixed*/

/*The start of each used AND unused block has the following info. Notice that is has 32 bytes for 64-bit x86*/
/*It is defined in headers_needed_template.h, since we need it to declare the globals*/
/*
typedef struct sheap_metadata_struct{
	long size; //the size of the USEFUL data, IN CHUNKS, NOT IN BYTES (like the unsecure version). Metadata at the start and end are not counted.
	struct sheap_metadata_struct * previous;
	struct sheap_metadata_struct * next;
	long in_use;  //basically a boolean. We reserve more space because of possible future extra functionality.
} sheap_metadata;
*/
//Now one may ask: How, with a minimum chunk size of 16 we will be able to fit a larger struct in the secure heap. Well, we are forced to split it in multiple chunks.


//the pointers to the lists that we hold
sheap_metadata* sfree_chunks_list;
sheap_metadata* salloc_chunks_list;
long sfree_chunks_num;
long salloc_chunks_num;
int size_of_sheap_metadata_in_chunks;
 

void scheck_free_list_consistency(int type);
void scheck_alloc_list_consistency(int type);
int scheck_chunk(sheap_metadata *chunk,int type);

/*Other global variables that do not need to be secured*/
FILE *sheap_keyshare_input_file;



/*Returns the number of the useful chunks in memory*/
/*This number (let it be "n") satisfies the equation <useful_bytes_chunk_length>*(n) + <keyshare_bytes_chunk_length>*(n) + <mac_bytes_chunk_length)*(n)= total_allocated_bytes */
/*This function has to be secured?? (Probably not, as we only called it with a fixed size). If not , optimize with gcc!*/
long sfind_number_of_useful_chunks(long allocated_bytes) 
{
  long a=allocated_bytes;
  long b=bytes_used_for_keyshares;
  long c=bytes_for_useful_data;
  long d=number_of_mac_bytes;

  return ((a)/(b+c+d));
}




/*Allocates the entire chunck of heap memory.*/
/*The goal is to allocate a space where we can have useful("o") bytes with keyshare bytes("x"), and with mac bytes("m"). The memory image should be like:
oooxxxxxxmmmooo.....xxxxxxmmmoooxxxxxxmmm
Which means: n times useful data, n times keyshares, n times mac bytes
*/
/*This function does not need to be secured, as it is done by the hardware*/
unsigned char * allocate_sheap()
{
  long bytes_to_allocate;
  unsigned char * mem;
  long a=bytes_to_allocate_on_start;
  long b=bytes_used_for_keyshares;
  long c=bytes_for_useful_data;
  long d=number_of_mac_bytes;
  long element_appearances_in_mem;

  element_appearances_in_mem=(a)/(b+c+d); //this should be an integer, If not, we should allocate a bit more. 

  if (element_appearances_in_mem*c + (element_appearances_in_mem)*b +(element_appearances_in_mem)*d == a) 
  {
	printf("Great!. No need to allocate more than the defined amount.\n");
	bytes_to_allocate=a;
  }
  else
  {
	printf("Whoops. We need to allocate a bit more space.\n");
	element_appearances_in_mem++;
	bytes_to_allocate=element_appearances_in_mem*c + (element_appearances_in_mem)*b+(element_appearances_in_mem)*d;
  }
 
  mem = error_checking_malloc(bytes_to_allocate,__func__,__LINE__);

  total_sheap_bytes_allocated=bytes_to_allocate;
  return mem;
}


/*magically gets/produces the next keyshare*/
/*Does not have to be secured*/
unsigned char get_next_sheap_keyshare()
{
  unsigned char ret;
  if (feof(sheap_keyshare_input_file))
  {
	perror("Attempted to read more keyshares that the ones stored\n");
	exit(44);
  }
  //reads one byte
  if( fread(&ret,1,1,sheap_keyshare_input_file) != 1 )
  {
	perror("Did not read byte in get_next_sheap_keyshare()\n");
	exit(47);
  }
  return ret;

  //return ((unsigned char)rand()%256); //use random values for testing
}


//This function HAS to be secured
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


#ifdef size_in_bytes_for_sheap_metadata
#undef size_in_bytes_for_sheap_metadata
#endif

#ifdef size_of_sheap_chunk
#undef size_of_sheap_chunk
#endif 


#define size_in_bytes_for_sheap_metadata (size_of_sheap_metadata_in_chunks*(bytes_for_useful_data+bytes_used_for_keyshares+number_of_mac_bytes))
#define size_of_sheap_chunk (bytes_for_useful_data+bytes_used_for_keyshares+number_of_mac_bytes)

//this function HAS to be secured
void init_sheap_memory_manager()
{
	sheap_metadata meta;
	
	
	total_chunks_in_secure_heap=sfind_number_of_useful_chunks(total_sheap_bytes_allocated);
	
	//init metadata of free block
	meta.size=total_chunks_in_secure_heap-number_of_full_chunks_taken_by_sheap_metadata() -1; //the first chunks is/are taken by metadata , as well as the last one
	size_of_sheap_metadata_in_chunks=number_of_full_chunks_taken_by_sheap_metadata();
	UPDATE_GLOBAL_VAR(globals.size_of_sheap_metadata_in_chunks,size_of_sheap_metadata_in_chunks);
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
	//let's set the secure vars too, for the secure functions to use them
	UPDATE_GLOBAL_VAR(globals.sfree_chunks_list,sfree_chunks_list);
	UPDATE_GLOBAL_VAR(globals.salloc_chunks_list,salloc_chunks_list);
	UPDATE_GLOBAL_VAR(globals.sfree_chunks_num,sfree_chunks_num);
	UPDATE_GLOBAL_VAR(globals.salloc_chunks_num,salloc_chunks_num);
	
}


/*Inserts the keyshares into the secure heap, leaving gaps for useful data*/
/*Called in the memory initialization phase*/
/*This function does not need to be secured, as it is done by the hardware*/
void insert_keys_into_sheap(unsigned char * mem)
{
  long i,j;
  unsigned char * p;
  int type_of_bytes=0; //0->useful bytes, 1-> keyshares, 2->mac bytes
  
  p=&(mem[0]);
  

  //insert keyshares
  for (i=0;i<total_sheap_bytes_allocated;)
  {

    if (type_of_bytes==1)
    {
		for (j=0;j<bytes_used_for_keyshares;j++)
		{
			//inserting keys
			p[i]=get_next_sheap_keyshare();
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




//initialises heap memory (allocation+ key insertion)
/*This function does not need to be secured, as it is done by the hardware*/
unsigned char * init_sheap()
{
  unsigned char * mem;

  //init random seed, in case we need to produce random keyshares (now we read them from file)
  srand(time(NULL));

  mem=allocate_sheap();
  sheap_keyshare_input_file=fopen("heap_keyshares","rb");
  if(sheap_keyshare_input_file==NULL)
  {
	perror("init_mem:heap_keyshares file error\n");
	exit(43);
  }
  insert_keys_into_sheap(mem);


  secure_heap=mem;
  UPDATE_GLOBAL_VAR(globals.secure_heap,secure_heap);
  fclose(sheap_keyshare_input_file);
  
  init_sheap_memory_manager(); //this function probably has to be secured (use the secure stack). Still, there is no performance difference if it does not (since it is called only once).
  
  return mem;
}



//normally frees the memory, not anything fancy.
/*This function does not need to be secured*/
void free_secure_heap()
{
  free(secure_heap);
  //free(GET_GLOBAL_PTR(globals.secure_heap));
}



void print_secure_heap(unsigned char * mem)
{
	/*Memory printing, for testing purposes*/
	long i;
	unsigned char * p;
	p=&mem[0];
	printf("Printing sheap memory. Address of sheap %ld, address to print from %ld\n",(long)unsecure_heap,(long)mem);
	for (i=0;i<((unsigned char*)secure_heap+total_sheap_bytes_allocated)-mem;i++)
	{
		printf("0x%02x ",p[i]);
	}
	printf("\n");

}

void print_secure_heap_range(unsigned char * mem,long size_to_print)
{
	/*Memory printing, for testing purposes*/
	long i;
	unsigned char * p;
	p=&mem[0];
	printf("Printing sheap memory. Address of sheap %ld, address to print from %ld, print %ld bytes total\n",(long)secure_heap,(long)mem,size_to_print);
	for (i=0;i<size_to_print;i++)
	{
		printf("0x%02x ",p[i]);
	}
	printf("\n");

}


void print_slist(sheap_metadata * head,long fd)
{
	sheap_metadata * temp;
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
	
	for (temp=head;temp!=NULL;temp=get_sheap_meta_next(temp))
	{
		fprintf(fp,"Node %ld: In_use=%ld, Size in chunks=%ld, position in mem=%ld , previous: %ld, next: %ld\n",i,get_sheap_meta_in_use(temp),
																				 get_sheap_meta_size(temp),(long)temp,(long)get_sheap_meta_previous(temp),(long)get_sheap_meta_next(temp));
		i++;
	}
}

void print_sheap_lists(long fd)
{
	FILE *fp;
	if (fd==1)
		fp=stdout;
	else
		fp=stderr;
	fprintf(fp,"Printing lists in safe heap\n");
	fprintf(fp,"sFree chunks list:\n");
	fprintf(fp,"Number of nodes:%ld\n",sfree_chunks_num);
	print_slist(sfree_chunks_list,fd);
	
	fprintf(fp,"sAllocated chunks list:\n");
	fprintf(fp,"Number of nodes:%ld\n",salloc_chunks_num);
	print_slist(salloc_chunks_list,fd);
	
}


void sprint_chunk(sheap_metadata *chunk)
{
	printf("Chunk at position %ld, in_use:%ld, previous:%ld,next:%ld,size in chunks:%ld\n",(long)chunk,get_sheap_meta_in_use(chunk),(long)get_sheap_meta_previous(chunk),(long)get_sheap_meta_next(chunk),get_sheap_meta_size(chunk));
}



//sees if the pointer points outside of the secure heap. Returns 1 for yes, 0 for no.
int sout_of_bounds_ptr(void * ptr)
{
	if ((unsigned char *) ptr < (unsigned char*) secure_heap)
		return 1;
	if ((unsigned char *) ptr >= (unsigned char*) secure_heap+ total_sheap_bytes_allocated)
		return 1;
	
	return 0;
	
}


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
		set_sheap_meta_size(prev_in_heap,get_sheap_meta_size(prev_in_heap) + 1 + 2*size_of_sheap_metadata_in_chunks + get_sheap_meta_size(chunk_meta) + 1  + get_sheap_meta_size(next_in_heap) );
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
	
	/*
	//checking calls
	if (merge_next && !merge_prev)
	{
	printf("Checking chunk..\n");
	sprint_chunk(chunk_meta);
	scheck_chunk(chunk_meta,1);
	printf("checked chunk.\n");
	}
	*/
	//printf("merge next=%d,merge prev=%d\n",merge_next,merge_prev);
	scheck_free_list_consistency(1);
	scheck_alloc_list_consistency(1);
	
} //end of sfree_memory()


/*Finds, if it exists, a group of <bytes_needed> free bytes. Returns the pointer in the secured heap in which the metadata of that free chunk start*/
/*If not, returns NULL*/
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


//safe malloc
unsigned char * smalloc(long bytes_asked_to_allocate)
{
	sheap_metadata * chunk_found;
	sheap_metadata * prev_free;
	sheap_metadata * next_free;
	sheap_metadata * new_meta;
	long bytes_to_allocate;
	char give_entire_chunk;
	long chunks_to_allocate;
	
	if (bytes_asked_to_allocate==0)
		return NULL;
	
	//optional. Should we?
	if (bytes_asked_to_allocate%bytes_for_useful_data==0)
		bytes_to_allocate= bytes_asked_to_allocate;
	else
		bytes_to_allocate= bytes_asked_to_allocate+(bytes_for_useful_data-bytes_asked_to_allocate%bytes_for_useful_data); //let's make it a multiple of bytes_for_useful_data
	
	chunks_to_allocate=bytes_to_allocate/bytes_for_useful_data;
	
	//find, using linear search, the group that can hold the needed bytes
	chunk_found=sfind_large_enough_free_group(bytes_to_allocate);
	
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
		//new_meta=(sheap_metadata*) ((unsigned char*) chunk_found + sizeof(sheap_metadata) + bytes_to_allocate + sizeof(long));
		new_meta=(sheap_metadata*)  ((unsigned char*) chunk_found + (size_of_sheap_metadata_in_chunks + chunks_to_allocate + 1)*size_of_sheap_chunk);
		//new_meta->in_use=0;
		set_sheap_meta_in_use(new_meta,0);
		//new_meta->previous=prev_free;
		set_sheap_meta_previous(new_meta,prev_free);
		//new_meta->next=next_free;
		set_sheap_meta_next(new_meta,next_free);
		//new_meta->size=chunk_found->size - (bytes_to_allocate+sizeof(long)+sizeof(uheap_metadata));
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
		//*((long*)((unsigned char*)new_meta -sizeof(long)))=bytes_to_allocate; //write the new size
		set_long_int((unsigned char*) new_meta -1*size_of_sheap_chunk,chunks_to_allocate);
		//chunk_found->size=bytes_to_allocate;
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
	
	/*
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
	
	//return the start of the useful data
	//return ((unsigned char*) chunk_found + sizeof(uheap_metadata));
	return ((unsigned char*) chunk_found + size_in_bytes_for_sheap_metadata);
	
} //end of smalloc()


/*Wrapper for smalloc(). Checks for NULL return value and exits if this is true*/
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






int scheck_chunk(sheap_metadata *chunk,int type) //type=1- > free, type=2->alloc
{
	int retval=1;
	long chunk_size;
	
	if (type==1 && get_sheap_meta_in_use(chunk)==1)
	{
		fprintf(stderr,"chunk at position %ld is marked as allocated but is in the free list\n",(long)chunk);
		printf("\n\n");
		sheap_metadata * temp;
		printf("Free list:\n");
		for (temp=sfree_chunks_list;temp!=NULL;temp=get_sheap_meta_next(temp))
			sprint_chunk(temp);
		printf("Alloc list:\n");
		for (temp=salloc_chunks_list;temp!=NULL;temp=get_sheap_meta_next(temp))
			sprint_chunk(temp);
		printf("\n\n");
		retval=0;
	}
	if (type==2 && get_sheap_meta_in_use(chunk)==0)
	{
		fprintf(stderr,"chunk at position %ld is marked as freed but is in the alloc list\n",(long)chunk);
		printf("\n\n");
		sheap_metadata * temp;
		printf("Free list:\n");
		for (temp=sfree_chunks_list;temp!=NULL;temp=get_sheap_meta_next(temp))
			sprint_chunk(temp);
		printf("Alloc list:\n");
		for (temp=salloc_chunks_list;temp!=NULL;temp=get_sheap_meta_next(temp))
			sprint_chunk(temp);
		printf("\n\n");
		retval=0;
	}
	
	chunk_size=get_sheap_meta_size(chunk);
	if (get_long_int((unsigned char*) chunk + size_in_bytes_for_sheap_metadata + get_sheap_meta_size(chunk)*size_of_sheap_chunk)!=chunk_size)
	{
		fprintf(stderr,"chunk at position %ld (in %s list) does not have its size properly set in its end\n",(long)chunk,type==1?"free":"alloc");
		fprintf(stderr,"Size at that position (%ld) should be %ld but it is %ld.\n",(long)((unsigned char*) chunk + size_in_bytes_for_sheap_metadata + get_sheap_meta_size(chunk)*size_of_sheap_chunk) , chunk_size , get_long_int((unsigned char*) chunk + size_in_bytes_for_sheap_metadata + get_sheap_meta_size(chunk)*size_of_sheap_chunk));
		sprint_chunk(chunk);
		
		printf("\n\n");
		sheap_metadata * temp;
		if (type==1)
		{
			for (temp=sfree_chunks_list;temp!=NULL;temp=get_sheap_meta_next(temp))
				sprint_chunk(temp);
		}
		if (type==2)
		{
			for (temp=salloc_chunks_list;temp!=NULL;temp=get_sheap_meta_next(temp))
				sprint_chunk(temp);
		}
		printf("\n\n");
		retval=0;
	}
	if (get_sheap_meta_next(chunk)!=NULL && get_sheap_meta_previous(get_sheap_meta_next(chunk))!=chunk)
	{
		fprintf(stderr,"chunk at position %ld (in %s list) does not have good pointer with its next neighbor\n",(long)chunk,type==1?"free":"alloc");
		sprint_chunk(chunk);
		sprint_chunk(get_sheap_meta_next(chunk));
		retval=0;
	}
	if (get_sheap_meta_previous(chunk)!=NULL && get_sheap_meta_next(get_sheap_meta_previous(chunk))!=chunk)
	{
		fprintf(stderr,"chunk at position %ld (in %s list) does not have good pointer with its previous neighbor\n",(long)chunk,type==1?"free":"alloc");
		sprint_chunk(chunk);
		sprint_chunk(get_sheap_meta_previous(chunk));
		retval=0;
	}
	
	return retval;
}

#ifndef max_total_blocks 
#define max_total_blocks (10000)
#endif

void scheck_free_list_consistency(int type)//type=1- > coming from sfree, type=2-> coming form smalloc
{
	int total_blocks;
	sheap_metadata * temp;
	int temp_retval;
	
	total_blocks=0;
	for (temp=sfree_chunks_list;temp!=NULL;temp=get_sheap_meta_next(temp))
	{
		total_blocks++;
		temp_retval=scheck_chunk(temp,1);
		if (temp_retval==0)
		{
			fprintf(stderr,"ERROR. Coming from %s\n",type==1?"sfree":"smalloc");
			fprintf(stderr,"problem in chunk of free list.\n");
			exit(13);
		}
		if (total_blocks> max_total_blocks)
		{
			fprintf(stderr,"ERROR. Coming from %s\n",type==1?"sfree":"smalloc");
			fprintf(stderr,"Total free blocks exceeded the max number.\n");
			exit(14);
		}
		if (total_blocks>1 && get_sheap_meta_previous(temp)==NULL)
		{
			fprintf(stderr,"ERROR. Coming from %s\n",type==1?"sfree":"smalloc");
			fprintf(stderr,"A chunk in the middle of a list has NULL previous.\n");
			fprintf(stderr,"Printing free list\n");
			print_slist(sfree_chunks_list,1);
			exit(15);
		}
	}
	if ((long)total_blocks!=(long)sfree_chunks_num)
	{
			fprintf(stderr,"ERROR. Coming from %s\n",type==1?"sfree":"smalloc");
			fprintf(stderr,"Different size of free list (%ld) and sfree_chunks_num(%ld).\n",(long)total_blocks,sfree_chunks_num);
			for (temp=sfree_chunks_list;temp!=NULL;temp=get_sheap_meta_next(temp))
				sprint_chunk(temp);
			exit(14);
	}
		
}


void scheck_alloc_list_consistency(int type)//type=1- > coming from sfree, type=2-> coming from smalloc
{
	int total_blocks;
	sheap_metadata * temp;
	int temp_retval;
	
	total_blocks=0;
	for (temp=salloc_chunks_list;temp!=NULL;temp=get_sheap_meta_next(temp))
	{
		total_blocks++;
		temp_retval=scheck_chunk(temp,2);
		if (temp_retval==0)
		{
			fprintf(stderr,"ERROR. Coming from %s\n",type==1?"sfree":"smalloc");
			fprintf(stderr,"problem in chunk of alloc list.\n");
			exit(13);
		}
		if (total_blocks> max_total_blocks)
		{
			fprintf(stderr,"ERROR. Coming from %s\n",type==1?"sfree":"smalloc");
			fprintf(stderr,"Total alloc blocks exceeded the max number.\n");
			exit(14);
		}
		if (total_blocks>1 && get_sheap_meta_previous(temp)==NULL)
		{
			fprintf(stderr,"ERROR. Coming from %s\n",type==1?"sfree":"smalloc");
			fprintf(stderr,"A chunk in the middle of a list has NULL previous.\n");
			fprintf(stderr,"Printing alloc list\n");
			print_slist(salloc_chunks_list,1);
			exit(15);
		}
	}
	if ((long)total_blocks!=(long)salloc_chunks_num)
	{
			fprintf(stderr,"ERROR. Coming from %s\n",type==1?"sfree":"smalloc");
			fprintf(stderr,"Different size of alloc list (%ld) and salloc_chunks_num(%ld).\n",(long)total_blocks,salloc_chunks_num);
			for (temp=salloc_chunks_list;temp!=NULL;temp=get_sheap_meta_next(temp))
				sprint_chunk(temp);
			exit(14);
	}
		
}


