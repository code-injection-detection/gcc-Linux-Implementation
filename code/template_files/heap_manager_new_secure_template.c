#include "headers_needed.h"

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
*/

/*Wherever you see "s" in a variable/function name, it means safe/secure*/

/* The functions are implemented in 2 ways:
 * One that uses the secure structures BUT does not use the secure stack/globals (therefore it is not "secure"). It is used for testing and code correctness.
 * And one that uses the secure stack/globals, which means that can be used in a "secure" environment.
 * 
 * The global variables have their corresponding equivalents in the global declaration in main_program_template.c
*/


#define sminimum_free_chunk_size (16)  //bytes 

unsigned char * secure_heap;
long total_sheap_bytes_allocated; /*total bytes allocated for the secure heap (multiple of 16)*/

/*The start of each used AND unused block has the following info. Notice that is has 32 bytes for 64-bit x86*/
/*It is defined in headers_needed_template.h, since we need it to declare the globals*/
/*
typedef struct sheap_metadata_struct{
	long size; //the size of the USEFUL data. Metadata at the start and end are not counted.
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
 
 
void scheck_free_list_consistency(int type);
void scheck_alloc_list_consistency(int type);
int scheck_chunk(uheap_metadata *chunk,int type);
void sprint_chunk(uheap_metadata *chunk);

/*Other global variables that do not need to be secured*/
FILE *sheap_keyshare_input_file;



/*Returns the number of the useful chunks in memory*/
/*This number (let it be "n") satisfies the equation <useful_bytes_chunk_length>*(n) + <keyshare_bytes_chunk_length>*(n) + <mac_bytes_chunk_length)*(n)= total_allocated_bytes */
long sfind_number_of_useful_chunks(long allocated_bytes) //most often allocated bytes == total_sheap_bytes_allocated
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


void init_sheap_memory_manager()
{
	//IMPLEMENT!
	
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
  fclose(sheap_keyshare_input_file);
  
  init_sheap_memory_manager();
  
  return mem;
}



//normally frees the memory (and the memory manager structures), not anything fancy.
void free_secure_heap(unsigned char * mem)
{
  free(mem);

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


