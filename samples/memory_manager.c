#include <stdio.h>
#include <stdlib.h>
#include <time.h>

#define bytes_used_for_keyshares (5)
#define bytes_to_allocate_on_start (1024)
#define bytes_between_keyshares (1) //practically the "useful" bytes. Important: It is not (currently) possible to split this bytegroup into multiple parts.

long total_bytes_allocated;
unsigned char * memory_chunk;




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
	fprintf(stderr,"malloc failed.\n");

  total_bytes_allocated=bytes_to_allocate;
  return mem;
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

    //printf("i=%ld\n",i);
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
	//printf("%c ",p[i]);
  }
  printf("\n");

}


/*Receives "data_size" bytes of data, and inserts them into memory. Insertion starts at "last_unused_mem".
Returns how many groups (chunks) of useful data have actually been used.*/
long insert_data_into_mem(long data_size,unsigned char * data, unsigned char * last_unused_mem)
{
  long i,j;
  unsigned char * p;
  long chunks=0;
  int counting_key_bytes=0; //used as boolean
  long total_data_inserted=0;


  p=&last_unused_mem[0];
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
	unsigned char * data;
	unsigned char * data2;
	long i,j;
	long size=50;
	long t1;


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

	printf("After print,try to insert some data\n");
	data=malloc(size);
	data2=malloc(size);

	/*
	t1=time(NULL);
	for (j=1;j<=1000000000;j++)
		for (i=0;i<size;i++)
			data[i]=i;
	printf("time1:%ld\n",time(NULL)-t1);

	t1=time(NULL);
	for (j=1;j<=1000000000;j++)
		insert_data_into_normal_array(size, data,data2);
	printf("time3:%ld\n",time(NULL)-t1);
	
	t1=time(NULL);
	for (j=1;j<=1000000000;j++)
		insert_data_into_mem(size,data,mem);

	printf("time3:%ld\n",time(NULL)-t1);
	*/
	
	printf("After data insertion, print mem\n");
	print_mem(mem);

	printf("Mem test done\n");
}


