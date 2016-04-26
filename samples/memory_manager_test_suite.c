
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
	char *another_secured_char;
	long int* another_secured_long_int;
	double *another_secured_double;
	char* another_secured_char2;
	int *another_secured_int;
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

	mem=entire_memory_chunk;
	chunks=find_number_of_useful_chunks(total_bytes_allocated);
	//size=chunks;
	printf("chunks:%ld\n",chunks);

	
	printf("After init, print mem\n");
	print_mem(mem);
	
	
	data=malloc(size*sizeof(int));
	data2=malloc(size*sizeof(int));

	for (i=5;i<size+5;i++)
			data[i-5]=i * i;


	printf("Trying to secure malloc\n");
	//printf("Last_unused_memory before:%ld\n",(long)last_unused_memory);
	//start_of_secure_data1=secure_malloc(size*sizeof(int));
	start_of_secure_data1=managed_secure_malloc(size*sizeof(int));
	if (start_of_secure_data1==NULL)
		{
		  perror("Not enough mem");
		  exit(42);
		}
	//printf("Last_unused_memory after:%ld\n",(long)last_unused_memory);
	
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
	//printf("Last_unused_memory before:%ld\n",(long)last_unused_memory);
	//start_of_secure_data=secure_malloc(size*sizeof(int));
	start_of_secure_data=managed_secure_malloc(size*sizeof(int));
	if (start_of_secure_data==NULL)
		{
		  perror("Not enough mem");
		  exit(42);
		}
	//printf("Last_unused_memory after:%ld\n",(long)last_unused_memory);
	
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
	
	printf("After displaying the two arrays:\n");
	print_lists();
	
	managed_secure_free(start_of_secure_data);
	printf("After freeing one of them:\n");
	print_lists();
	
	
	printf("Now trying to store and retrieve 424242424...\n");
	//start_of_secure_data=secure_malloc(sizeof(int));
	start_of_secure_data=managed_secure_malloc(sizeof(int));
	*retrieved_int=424242424;
	insert_data_into_mem(sizeof(int),(unsigned char *)retrieved_int,start_of_secure_data);
	free(retrieved_int);
	retrieved_int=malloc(sizeof(int));
    get_secure_data(retrieved_int,sizeof(int),start_of_secure_data,0,j);
	printf("\n\n%d \n\n",*retrieved_int);
	free(retrieved_int);
	
	printf("After retrieving int:\n");
	print_lists();
	
	managed_secure_free(start_of_secure_data1);

	printf("After freeing the second array:\n");
	print_lists();
	
	managed_secure_free(start_of_secure_data);

	printf("After freeing the int:\n");
	print_lists();
	


	printf("Testing wrapper functions\n");
	//another_secured_int=secure_malloc(sizeof(int));
	another_secured_int=managed_secure_malloc(sizeof(int));
	set_int(another_secured_int,99998);
	an_integer=get_int(another_secured_int);
	printf("Got %d\n",an_integer);

	//another_secured_char=secure_malloc(sizeof(char));
	another_secured_char=managed_secure_malloc(sizeof(char));
	set_char(another_secured_char,'b');
	a_char=get_char(another_secured_char);
	printf("Got %c\n",a_char);

	//another_secured_long_int=secure_malloc(sizeof(long int));
	another_secured_long_int=managed_secure_malloc(sizeof(long int));
	set_long_int(another_secured_long_int,54545454);
	a_long=get_long_int(another_secured_long_int);
	printf("Got %ld\n",a_long);

	printf("After long int printing:\n");
	print_lists();
	
	managed_secure_free(another_secured_long_int);
	
	printf("After long int free:\n");
	print_lists();


	another_secured_char2=managed_secure_malloc(sizeof(char));
	set_char(another_secured_char2,'a');
	a_char=get_char(another_secured_char2);
	printf("Got %c\n",a_char);

	printf("After another char alloc:\n");
	print_lists();


	//another_secured_double=secure_malloc(sizeof(double));
	another_secured_double=managed_secure_malloc(sizeof(double));
	set_double(another_secured_double,7878.3434);
	a_double=get_double(another_secured_double);
	printf("Got %lf\n",a_double);

	printf("After double alloc:\n");
	print_lists();


	printf("Array wrapper function testing\n");
	//array_test=secure_malloc(10*sizeof(double));
	array_test=managed_secure_malloc(10*sizeof(double));
	foo_double=42.424242;
	set_array_element(sizeof(double),array_test,2, &foo_double);
	foo_double=34.121212;
	set_array_element(sizeof(double),array_test,3, &foo_double);
	foo_double=1;
	get_array_element(sizeof(double),array_test,2,&foo_double);
	printf("array index 2 is %lf\n",foo_double);
	get_array_element(sizeof(double),array_test,3,&foo_double);
	printf("array index 3 is %lf\n",foo_double);
	
	foo_double=get_double_array_element(array_test,3);
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



void list_test()
{
	list_node temp;
	unsigned char * p1;
	unsigned char * p2;
	unsigned char * p3;
	unsigned char * p4;
	int k;
	
	printf("Free chunks list:\n");
	print_list(free_chunks_list);
	
	printf("Allocated chunks list:\n");
	print_list(allocated_chunks_list);
	
	temp.length=10;
	temp.pointer_to_mem=entire_memory_chunk;
	temp.next=NULL;
	temp.previous=NULL;
	
	/*free_chunks_list=add_node_to_list(free_chunks_list,temp);
	printf("Free chunks list:\n");
	print_list(free_chunks_list);*/
	
	
	
	printf("a---------\n");
	p1=managed_secure_malloc(101);
	if (p1==NULL)
		printf("Returned NULL! -.- 1\n");
	print_lists();
	
	
	printf("b---------\n");
	p2=managed_secure_malloc(42);
	if (p2==NULL)
		printf("Returned NULL! -.- 2\n");
	print_lists();
	
	
	printf("c---------\n");
	p3=managed_secure_malloc(61);
	if (p3==NULL)
		printf("Returned NULL! -.- 3\n");
	print_lists();

	printf("d---------\n");
	k=managed_secure_free(p2);
	if (k==0) printf("Something went wrong\n");
	print_lists();
	
	printf("e---------\n");
	p2=managed_secure_malloc(80);
	if (p2==NULL)
		printf("Returned NULL! -.- 4\n");
	print_lists();
	
	printf("f---------\n");
	p4=managed_secure_malloc(29);
	if (p4==NULL)
		printf("Returned NULL! -.- 5\n");
	print_lists();
	

	printf("g---------\n");
	k=managed_secure_free(p3);
	if (k==0) printf("Something went wrong\n");
	print_lists();
}

