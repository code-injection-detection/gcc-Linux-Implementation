/*************** START OF MIN HEAP ***************/


#define MAX_SZ_OF_HEAP 100000
#define SZ_OF_CURRENT_HEAP 10


//taken from http://corelab.ntua.gr/courses/algorithms/old/2014-2015/slides/04_Heap.pdf

void mh_swap(double *a, double *b)
{
	double temp;
	temp=*a;
	*a=*b;
	*b=temp;
	
}


void mh_print_heap(double *min_heap,int num_of_elements)
{
	int i;
	for (i=1;i<=num_of_elements;i++)
	{
		printf("%lg ",min_heap[i]);
	}
	printf("\n\n");
}


void mh_combine(double *min_heap,int index, int num_of_elements)
{
	int left=2*index;
	int right=2*index+1;
	int ind_in_question=index;

	if ((left <= num_of_elements) && (min_heap[left] < min_heap[ind_in_question]))
		ind_in_question = left;
	if ((right <= num_of_elements) && (min_heap[right] < min_heap[ind_in_question]))
		ind_in_question = right;
	if (ind_in_question != index) 
	{
		mh_swap(&min_heap[index],  &min_heap[ind_in_question]);
		mh_combine(min_heap,ind_in_question,num_of_elements); 
	} 

}

void mh_insert(double *min_heap,int* num_of_elements,double element)
{
	int i, p;
	(*num_of_elements)++;
	min_heap[*num_of_elements]=element;
	i=*num_of_elements;
	p=i/2;
	while ((i>1) && min_heap[p]>min_heap[i])
	{
		mh_swap(&min_heap[p],&min_heap[i]);
		i=p; p=i/2;
	}
}


void mh_constructheap(double *min_heap, int sz)
{
	int i;
	for (i=sz/2;i>0;i--)
	{
		mh_combine(min_heap,i,sz);
	}
}

double mh_fetch_min(double *min_heap, int num_of_elements)
{
	return min_heap[1];
}

double mh_fetch_and_delete_min(double *min_heap, int* num_of_elements)
{
	double min;
	if (*num_of_elements>0)
	{
		min=min_heap[1];
		min_heap[1]=min_heap[*num_of_elements];
		(*num_of_elements)--;
		mh_combine(min_heap,1,*num_of_elements);
		return min;
	}
}



void minheap_test()
{
	int i;
	double min_heap[MAX_SZ_OF_HEAP];
	
	for (i=1;i<=SZ_OF_CURRENT_HEAP;i++)
		min_heap[i]=SZ_OF_CURRENT_HEAP-i; 

	printf("Array in the beginning:\n");
	mh_print_heap(&min_heap[0],SZ_OF_CURRENT_HEAP);
	mh_constructheap(&min_heap[0], SZ_OF_CURRENT_HEAP);
	printf("Array after being converted into a min heap:\n");
	mh_print_heap(&min_heap[0],SZ_OF_CURRENT_HEAP);

	int temp_sz=SZ_OF_CURRENT_HEAP;
	printf("Array after fetching all the elements (i.e. sorted):\n");
	for (i=1;i<=SZ_OF_CURRENT_HEAP;i++)
		printf("%lg ",mh_fetch_and_delete_min(&min_heap[0],&temp_sz));
	printf("\n\n");

}



/*************** END OF MIN HEAP ***************/


/*************** START OF MATRIX MULTIPLICATION ***************/

void matrix_multiplication(int maxnum,int should_print)
{
	int i,j,k,l,sum;
	int a[10][10],b[10][10],matrix_res[10][10];
	int size=3;
	int randval;
	
	srand(42);
	for (i=0;i<size;i++)
		for (j=0;j<size;j++)
		{
			randval=rand()%maxnum;
			a[i][j]=randval;
			randval=rand()%maxnum;
			b[i][j]=randval;
		}
		
	for (i=0;i<size;i++)
		for (j=0;j<size;j++)
		{
			sum=0;
			for (k=0;k<size;k++)
				{
					sum+=a[i][k]*b[k][j];
				}
			matrix_res[i][j]=sum;
		}
		
	if (should_print)
	{
		printf("\n\nMatrices:\n\n");
		printf("a:\n");
		for (i=0;i<size;i++)
		{
			for (j=0;j<size;j++)
			{
				printf("%d ",a[i][j]);
			}
			printf("\n");
		}
		printf("\n");
		printf("b:\n");
		for (i=0;i<size;i++)
		{
			for (j=0;j<size;j++)
			{
				printf("%d ",b[i][j]);
			}
			printf("\n");
		}
		printf("\n");
		printf("matrix_res:\n");
		for (i=0;i<size;i++)
		{
			for (j=0;j<size;j++)
			{
				printf("%d ",matrix_res[i][j]);
			}
			printf("\n");
		}
		printf("\n");
	}
	
}		

/*************** END OF MATRIX MULTIPLICATION ***************/


/*************** START OF SIMPLE TESTS ***************/

void set_elem_to_42(int * p)
{
    //printf("%lu\n",(unsigned long)p);
	*p=42;
}

int add_1_to_int(int inp)
{
	int outp=inp+1;
	return outp;
}


void check_array_test()
{
	int arr[10];
	int i;
	for (i=0;i<10;i++)
	{
		arr[i]=i;
	}

    printf("\n");

    for (i=0;i<10;i++)
	{
		printf("%d ",arr[i]);
	}
    printf("\n");

    //printf("%lu\n",(unsigned long) &arr[3]);
	set_elem_to_42(&arr[3]);

	printf("2+1+1=%d\n",add_1_to_int(add_1_to_int(2)));

	for (i=0;i<10;i++)
	{
		printf("%d ",arr[i]);
	}
	printf("\n");
    printf("\n");
}

/*************** END OF SIMPLE TESTS ***************/


void tests_that_use_pycparser_ast_main()
{
	check_array_test();
	minheap_test();
	matrix_multiplication(100,1);

}
