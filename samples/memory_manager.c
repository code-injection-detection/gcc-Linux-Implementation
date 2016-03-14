#include <stdio.h>
#include <stdlib.h>
#include <time.h>
#include <errno.h>

#define bytes_used_for_keyshares (5)
#define bytes_to_allocate_on_start (1024)
#define bytes_between_keyshares (1) //practically the "useful" bytes. Important: It is not (currently) possible to split this bytegroup into multiple parts.

long total_bytes_allocated;
unsigned char * memory_chunk;
unsigned char* last_unused_memory;




/*Allocates the entire chunck of memory.*/
/*The goal is to allocate a space where we can have useful("o") bytes with keyshare bytes("x"). The memory image should be like:
oooxxxxxxooo.....xxxxxxoooxxxxxxooo
Which means: n times useful data, (n-1) times keyshares
*/
unsigned char * allocate_mem()
{
  long bytes_to_allocate;
  unsigned char * mem;
  long a=bytes_to_allocate_on_start;
  long b=bytes_used_for_keyshares;
  long c=bytes_between_keyshares;
  long element_appearances_in_mem;

  element_appearances_in_mem=(a+b)/(b+c); //this should be an integer, If not, we should allocate a bit more. 

  if (element_appearances_in_mem*c + (element_appearances_in_mem-1)*b == a) 
  {
	printf("Great!. No need to allocate more than the defined amount.\n");
	bytes_to_allocate=a;
  }
  else
  {
	printf("Whoops. We need to allocate a bit more space.\n");
	element_appearances_in_mem++;
        bytes_to_allocate=element_appearances_in_mem*c + (element_appearances_in_mem-1)*b;
  }
 
  mem = malloc(bytes_to_allocate);
  if (mem==NULL)
  {
	perror("allocate_mem:malloc failed.\n");
	exit(42);
  }

  total_bytes_allocated=bytes_to_allocate;
  return mem;
}


/*Allocates secured space for future use*/
void * secure_malloc(long bytes_for_allocation)
{
  unsigned char* last_unused_mem=last_unused_memory;
  long ttl_bts_alloc=total_bytes_allocated;
  long b=bytes_used_for_keyshares;
  long c=bytes_between_keyshares;
  unsigned char * memstart=memory_chunk;
  long useful_chunks;
  long chunks_needed;
  long total_bytes_left_free;
  void * start_of_allocated_data;
 

  total_bytes_left_free=ttl_bts_alloc-(last_unused_mem-memstart);

  useful_chunks=(total_bytes_left_free+b)/(b+c);

  if (useful_chunks*c<bytes_for_allocation)
  {
	errno=ENOMEM;
	return NULL;
  }

  //else allocate
  chunks_needed=(bytes_for_allocation/c);

  if (chunks_needed*c!=bytes_for_allocation) chunks_needed++;
  
  //practically move unused memory pointer
  start_of_allocated_data=last_unused_mem;
  last_unused_memory+=(chunks_needed)*c+(chunks_needed-1)*b + b; //the last b is added because we want last_unused_memory to point to a useful area
  return start_of_allocated_data;  

}


/*magically gets/produces the next keyshare*/
unsigned char get_next_keyshare()
{
  return ((unsigned char)rand()%256); //use random values for testing
}


/*Inserts the keyshares into the big chunk of memory, leaving gaps for useful data*/
/*Called in the memory initialization phase*/
void insert_keys_into_mem(unsigned char * mem)
{
  long i,j;
  unsigned char * p;
  long keyshare_bytecounter;
  int counting_key_bytes=0; //used as boolean

  //temporary, random init
  srand(time(NULL));
  
  p=&(mem[0]);
  
  keyshare_bytecounter=0;

  //insert keyshares
  for (i=0;i<total_bytes_allocated;)
  {

    if (counting_key_bytes)
    {
	
    	p[i]=get_next_keyshare();
	//printf("got keyshare:0x%02x\n",p[i]);
        keyshare_bytecounter++;
	i++;
    }
    else
    {
	//for printing purposes
	for (j=0;j<bytes_between_keyshares;j++)
		p[i+j]='\0';

	i+=bytes_between_keyshares;
	counting_key_bytes=1;
    }

    if(keyshare_bytecounter==bytes_used_for_keyshares)
    {
	counting_key_bytes=0;
	keyshare_bytecounter=0;
    }
     
  }

}

/*Memory printing, for testing purposes*/
void print_mem(unsigned char * mem)
{
  long i;
  unsigned char * p;
  p=&mem[0];
  for (i=0;i<total_bytes_allocated;i++)
  {
	//printf("%#04x ",p[i]);
	printf("0x%02x ",p[i]);
  }
  printf("\n");

}


/*Receives "data_size" bytes of data, and inserts them into memory. Insertion starts at "last_unused_mem".
Returns how many groups (chunks) of useful data have actually been used.*/
long insert_data_into_mem(long data_size,unsigned char * data, unsigned char * mem_where_to_insert)
{
  long i,j;
  unsigned char * p;
  long chunks=0;
  int counting_key_bytes=0; //used as boolean
  long total_data_inserted=0;


  p=&mem_where_to_insert[0];
  i=0;  


  while(total_data_inserted<data_size)
  {
    if (counting_key_bytes)
    {
	i+=bytes_used_for_keyshares;
	counting_key_bytes=0;
    }
    else
    {
	//actual insertion
	for (j=0;j<bytes_between_keyshares && (total_data_inserted + j < data_size );j++)
	{
		p[i+j]=data[total_data_inserted+j];
	}
	
	total_data_inserted+=j;
	chunks++;

	i+=bytes_between_keyshares;
	counting_key_bytes=1;	
    }  

  }

  return chunks;

}

/*returns a pointer to the data needed. The last two arguments are useful if called for an array element.*/
/*Set data_size to the size of the element you want to retrieve. For example "sizeof(int)" */
/*If seeking an array element, set isarray !=0. Set data_start to the start of the array*/
/*If not seeking an array element, set isarray to 0. Then arrayindex will be ignored*/
/*Works only for 1-d arrays, 2 index conversion to 1 index should be done beforehand. Of course in a next implementation ->*/
/*-> the function can be extended to support multiple dimension arrays*/
/*After calling remember to free result*/
void * get_secure_data(long data_size, unsigned char * data_start, int isarray, long arrayindex)
{
  
  unsigned char* result;
  long i,j,k;
  unsigned char * p;
  long total_data_retrieved=0;
  int counting_key_bytes=0; //used as boolean
  long chunks_forward;

  result=malloc(data_size);
  if (result==NULL)
  {
	perror("get_secure_data:malloc failed.\n");
	exit(42);
  }

  p=data_start;

  i=0;
  if (isarray)
  {
	chunks_forward=(arrayindex*data_size)/(bytes_between_keyshares);
	if (chunks_forward*bytes_between_keyshares==(arrayindex*data_size))
	{
		p+=chunks_forward*bytes_between_keyshares + chunks_forward * bytes_used_for_keyshares; //We set p to point to the next useful area
	}
	else
	{
		//Well that's a problem. We have to start in the middle of a chunk.
		//What we'll do is that we will retrieve the part up to the end of the chunk.
		p+=chunks_forward*bytes_between_keyshares + chunks_forward * bytes_used_for_keyshares;
		j=(arrayindex*data_size)-chunks_forward*bytes_between_keyshares;

	
		for (k=0;k<bytes_between_keyshares && (total_data_retrieved + k < data_size );k++)
		{
			result[total_data_retrieved+k]=p[j+k];
		}
		total_data_retrieved+=k;
		p+=bytes_between_keyshares + bytes_used_for_keyshares;
	}
  }	 
    

  while(total_data_retrieved<data_size)
  {
    if (counting_key_bytes)
    {
	i+=bytes_used_for_keyshares;
	counting_key_bytes=0;
    }
    else
    {
	//actual retrieval
	for (j=0;j<bytes_between_keyshares && (total_data_retrieved + j < data_size );j++)
	{
		result[total_data_retrieved+j]=p[i+j];
	}

	total_data_retrieved+=j;

	i+=bytes_between_keyshares;
	counting_key_bytes=1;	
    } 
  }

  
  return (void*)result;
}



long find_useful_chunks( long allocated_bytes)
{
  long a=allocated_bytes;
  long b=bytes_used_for_keyshares;
  long c=bytes_between_keyshares;

  return ((a+b)/(b+c));
}

//initialises memory (allocation+ key insertion)
unsigned char * init_mem()
{
  unsigned char * mem;

  mem=allocate_mem();
  insert_keys_into_mem(mem);

  memory_chunk=mem;
  last_unused_memory=mem;
  return mem;
}

//for time testing
void insert_data_into_normal_array(long size, unsigned char* data,unsigned char * mem)
{
	int i;
	for (i=0;i<size;i++) data[i]=mem[i];
}


void mem_test()
{
	unsigned char * mem;
	long chunks;
	int * data;
	int * data2;
	long i,j;
	long size=20;
	long t1;
	unsigned char * start_of_secure_data;
	int * retrieved_int;


	printf("Zero hex test printing: 0x%02x \n",(unsigned char) 0);
	printf("Starting mem test\n");
	
	printf("bytes_to_allocate_on_start:%d\n",bytes_to_allocate_on_start);

        printf("Init_mem, alloc+key insertion\n");
	mem=init_mem();
	printf("If successful, total bytes allocated:%ld\n",total_bytes_allocated);
	
	chunks=find_useful_chunks(total_bytes_allocated);
	//size=chunks;
	printf("chunks:%ld\n",chunks);

	printf("After init, print mem\n");
	print_mem(mem);

	
	data=malloc(size*sizeof(int));
	data2=malloc(size*sizeof(int));

	for (i=0;i<size;i++)
			data[i]=i+2;

	printf("Trying to secure malloc\n");
	printf("Last_unused_memory before:%ld\n",(long)last_unused_memory);
	start_of_secure_data=secure_malloc(size*sizeof(int));
	printf("Last_unused_memory after:%ld\n",(long)last_unused_memory);
	
	printf("After malloc,try to insert some data\n");
	insert_data_into_mem(size*sizeof(int),(unsigned char *)data,start_of_secure_data);

	printf("Now let's retrieve the data and display them\n");
	
	for (j=0;j<size;j++)
	{
		retrieved_int=get_secure_data(sizeof(int),start_of_secure_data,1,j);
		printf("%d ",*retrieved_int);
		free(retrieved_int);
	}
	printf("\n");
	
	/*
	t1=time(NULL);
	for (j=1;j<=1000000000;j++)
		for (i=0;i<size;i++)
			data[i]=i;
	printf("time1:%ld\n",time(NULL)-t1);

	t1=time(NULL);
	for (j=1;j<=1000000000;j++)
		insert_data_into_normal_array(size*sizeof(int), data,data2);
	printf("time3:%ld\n",time(NULL)-t1);
	
	t1=time(NULL);
	for (j=1;j<=1000000000;j++)
		insert_data_into_mem(size,data,mem);

	printf("time3:%ld\n",time(NULL)-t1);
	*/
	
	
	printf("After data retrieval, print mem\n");
	print_mem(mem);

	printf("Mem test done\n");
}


