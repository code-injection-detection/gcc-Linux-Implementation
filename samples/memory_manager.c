#include "headers_needed.h"



long total_bytes_allocated;
unsigned char * memory_chunk;
unsigned char* last_unused_memory;
FILE *keyshare_input_file;



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
  unsigned char ret;
  if (feof(keyshare_input_file))
  {
	perror("Attempted to read more keyshares that the ones stored\n");
	exit(44);
  }
  fread(&ret,1,1,keyshare_input_file);
  return ret;

  //return ((unsigned char)rand()%256); //use random values for testing
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
/*res must have been pre-allocated.*/
void get_secure_data(void * res,long data_size, unsigned char * data_start, int isarray, long arrayindex)
{
  
  unsigned char* result;
  long i,j,k;
  unsigned char * p;
  long total_data_retrieved=0;
  int counting_key_bytes=0; //used as boolean
  long chunks_forward;


  result=res;

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
		j=(arrayindex*data_size)-(chunks_forward*bytes_between_keyshares);

		for (k=0;j+k<bytes_between_keyshares && (total_data_retrieved + k < data_size );k++)
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

}

/*Cousin function of insert_data_into_mem(), but works with array elements as well. */
/*Structure similar to get_secure_data(), reading data from *source*/
void set_secure_data(void * source,long data_size, unsigned char * data_start, int isarray, long arrayindex)
{

  unsigned char* src;
  long i,j,k;
  unsigned char * p;
  long total_data_set=0;
  int counting_key_bytes=0; //used as boolean
  long chunks_forward;

  p=data_start;
  src=source;

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
		//What we'll do is that we will set the part up to the end of the chunk.
		p+=chunks_forward*bytes_between_keyshares + chunks_forward * bytes_used_for_keyshares;
		j=(arrayindex*data_size)-(chunks_forward*bytes_between_keyshares);

		for (k=0;j+k<bytes_between_keyshares && (total_data_set + k < data_size );k++)
		{
			p[j+k]=src[total_data_set+k];
		}
		total_data_set+=k;
		p+=bytes_between_keyshares + bytes_used_for_keyshares;
	}
  }


  while(total_data_set<data_size)
  {
    if (counting_key_bytes)
    {
	i+=bytes_used_for_keyshares;
	counting_key_bytes=0;
    }
    else
    {
	//actual set
	for (j=0;j<bytes_between_keyshares && (total_data_set + j < data_size );j++)
	{
		p[i+j]=src[total_data_set+j];
	}

	total_data_set+=j;

	i+=bytes_between_keyshares;
	counting_key_bytes=1;	
    } 
  }

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
  keyshare_input_file=fopen("heap_keyshares","rb");
  if(keyshare_input_file==NULL)
  {
	perror("init_mem:heap_keyshares file error\n");
	exit(43);
  }
  insert_keys_into_mem(mem);

  memory_chunk=mem;
  last_unused_memory=mem;
  fclose(keyshare_input_file);
  return mem;
}

//normally frees the memory, not anything fancy. Secure_free() needs to be written as well.
void free_secure_mem(unsigned char * mem)
{
  free(mem);
}


/*Returns the value of a securely allocated char. Of course secure_malloc must have been called before*/
/*The function writes to *res, which must have been preallocated. */
void get_char( void * start_of_secure_data,char * res)
{
  get_secure_data(res,sizeof(char),start_of_secure_data,0,0);
}

void get_int( void * start_of_secure_data,int * res)
{
  get_secure_data(res,sizeof(int),start_of_secure_data,0,0);
}

void get_long_int( void * start_of_secure_data,long int * res)
{
  get_secure_data(res,sizeof(long int),start_of_secure_data,0,0);
}


void get_float( void * start_of_secure_data,float * res)
{
  get_secure_data(res,sizeof(float),start_of_secure_data,0,0);
}

void get_double( void * start_of_secure_data,double * res)
{
  get_secure_data(res,sizeof(double),start_of_secure_data,0,0);
}


void get_array_element(long data_size, void * start_of_array, long index, void * res)
{
  get_secure_data(res,data_size,start_of_array,1,index);
}



/*Sets a securely allocated char. Of course secure_malloc must have been called before*/
/*The function reads from source */
void set_char( void * start_of_secure_data,char source)
{
  insert_data_into_mem(sizeof(char),(unsigned char *)&source,(unsigned char *)start_of_secure_data);
}

void set_int( void * start_of_secure_data,int source)
{
  insert_data_into_mem(sizeof(int),(unsigned char *)&source,(unsigned char *)start_of_secure_data);
}

void set_long_int( void * start_of_secure_data,long int source)
{
  insert_data_into_mem(sizeof(long int),(unsigned char *)&source,(unsigned char *)start_of_secure_data);
}

void set_float( void * start_of_secure_data,float source)
{
  insert_data_into_mem(sizeof(float),(unsigned char *)&source,(unsigned char *)start_of_secure_data);
}

void set_double( void * start_of_secure_data,double source)
{
  insert_data_into_mem(sizeof(double),(unsigned char *)&source,(unsigned char *)start_of_secure_data);
}

//reads data from *source
void set_array_element(long data_size, void * start_of_array, long index, void * source)
{
  set_secure_data(source,data_size,start_of_array,1,index);
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
	int * temp;
	long i,j;
	long size=20;
	long t1;
	unsigned char * start_of_secure_data;
	unsigned char * start_of_secure_data1;
	int * retrieved_int;
	int an_integer;
	char a_char;
	long int a_long;
	double a_double;
	char * another_secured_char;
	long int * another_secured_long_int;
	double * another_secured_double;
	int * another_secured_int;
	long loop_size;
	double * array_test;
	double foo_double;


	printf("Zero hex test printing: 0x%02x \n",(unsigned char) 0);
	printf("Starting mem test\n");

	/*
	printf("bytes_to_allocate_on_start:%d\n",bytes_to_allocate_on_start);

        printf("Init_mem, alloc+key insertion\n");
	mem=init_mem();
	printf("If successful, total bytes allocated:%ld\n",total_bytes_allocated);
	*/

	mem=memory_chunk;
	chunks=find_useful_chunks(total_bytes_allocated);
	//size=chunks;
	printf("chunks:%ld\n",chunks);

	printf("After init, print mem\n");
	print_mem(mem);

	
	data=malloc(size*sizeof(int));
	data2=malloc(size*sizeof(int));

	for (i=5;i<size+5;i++)
			data[i-5]=i * i;


	printf("Trying to secure malloc\n");
	printf("Last_unused_memory before:%ld\n",(long)last_unused_memory);
	start_of_secure_data1=secure_malloc(size*sizeof(int));
	if (start_of_secure_data1==NULL)
		{
		  perror("Not enough mem");
		  exit(42);
		}
	printf("Last_unused_memory after:%ld\n",(long)last_unused_memory);
	
	printf("After malloc,try to insert some data\n");
	insert_data_into_mem(size*sizeof(int),(unsigned char *)data,start_of_secure_data1);

	printf("Now let's retrieve the data and display them\n");
	
	retrieved_int=malloc(sizeof(int));

	for (j=0;j<size;j++)
	{
		get_secure_data(retrieved_int,sizeof(int),start_of_secure_data1,1,j);
		printf("%d ",*retrieved_int);
	}
	printf("\n");


	printf("Again, Trying to secure malloc\n");
	printf("Last_unused_memory before:%ld\n",(long)last_unused_memory);
	start_of_secure_data=secure_malloc(size*sizeof(int));
	if (start_of_secure_data==NULL)
		{
		  perror("Not enough mem");
		  exit(42);
		}
	printf("Last_unused_memory after:%ld\n",(long)last_unused_memory);
	
	for (i=5;i<size+5;i++)
			data[i-5]=3*i;


	printf("Again, after malloc,try to insert some data\n");
	insert_data_into_mem(size*sizeof(int),(unsigned char *)data,start_of_secure_data);

	printf("Now let's retrieve the data and display them\n");
	
	for (j=0;j<size;j++)
	{
		get_secure_data(retrieved_int,sizeof(int),start_of_secure_data,1,j);
		printf("%d ",*retrieved_int);
	}
	printf("\n");
	
	printf("Now trying to store and retrieve 424242424...\n");
	start_of_secure_data=secure_malloc(sizeof(int));
	*retrieved_int=424242424;
	insert_data_into_mem(sizeof(int),(unsigned char *)retrieved_int,start_of_secure_data);
	free(retrieved_int);
	retrieved_int=malloc(sizeof(int));
        get_secure_data(retrieved_int,sizeof(int),start_of_secure_data,0,j);
	printf("\n\n%d \n\n",*retrieved_int);
	free(retrieved_int);
	


	printf("Testing wrapper functions\n");
	another_secured_int=secure_malloc(sizeof(int));
	set_int(another_secured_int,99998);
	get_int(another_secured_int,&an_integer);
	printf("Got %d\n",an_integer);

	another_secured_char=secure_malloc(sizeof(char));
	set_char(another_secured_char,'b');
	get_char(another_secured_char,&a_char);
	printf("Got %c\n",a_char);

	another_secured_long_int=secure_malloc(sizeof(long int));
	set_long_int(another_secured_long_int,54545454);
	get_long_int(another_secured_long_int,&a_long);
	printf("Got %ld\n",a_long);

	another_secured_double=secure_malloc(sizeof(double));
	set_double(another_secured_double,7878.3434);
	get_double(another_secured_double,&a_double);
	printf("Got %lf\n",a_double);

	printf("Array wrapper function testing\n");
	array_test=secure_malloc(10*sizeof(double));
	foo_double=42.424242;
	set_array_element(sizeof(double),array_test,2, &foo_double);
	foo_double=34.121212;
	set_array_element(sizeof(double),array_test,3, &foo_double);
	foo_double=1;
	get_array_element(sizeof(double),array_test,2,&foo_double);
	printf("array index 2 is %lf\n",foo_double);
	get_array_element(sizeof(double),array_test,3,&foo_double);
	printf("array index 3 is %lf\n",foo_double);
	
	printf("\n\n\n");

	/*
	//loop_size=100000000;	
	loop_size=200000000;	

	t1=time(NULL);
	for (j=1;j<=loop_size;j++)
		for (i=0;i<size;i++)
			data[i]=i;
	printf("Normal_insertion:%ld\n",time(NULL)-t1);

	t1=time(NULL);
	for (j=1;j<=loop_size;j++)
		insert_data_into_mem(size*sizeof(int),(unsigned char *)data,start_of_secure_data1);

	printf("Secure_insertion:%ld\n",time(NULL)-t1);
	
	
	t1=time(NULL);
	for (j=1;j<=loop_size;j++)
		for (i=0;i<size;i++)
			data2[i]=data[i];
	printf("Normal_fetch:%ld\n",time(NULL)-t1);

	t1=time(NULL);
	for (j=1;j<=loop_size;j++)
	{
		get_secure_data(&data2[0],size*sizeof(int),start_of_secure_data1,0,i);
		//for (i=0;i<size;i++)
			//get_secure_data(&data2[i],sizeof(int),start_of_secure_data1,1,i));
	}	
	printf("Secure_fetch:%ld\n",time(NULL)-t1);

	for(i=0;i<size;i++)
		if(data2[i]!=data[i])	printf("data2!=data , data2[i]=%d, data[i]=%d i=%ld\n",data2[i],data[i],i);
	
	*/

	printf("After data retrieval, print mem\n");
	print_mem(mem);

	
	printf("Mem test done\n");
}


