/*Here be global variables*/

int a_global_array[10];
int mm_array_1[101][101];
int mm_array_2[101][101];
int times_called_stack_smashing_fun=0;
unsigned long stack_canary_of_previous_fun;


struct graph_neighbor_list_node{
    double distance;
    int node_index;
    struct graph_neighbor_list_node *next;
};

#define MAX_NUM_OF_NODES 10000
struct graph_neighbor_list_node * array_of_lists_of_neighbors[MAX_NUM_OF_NODES];

/*************** START OF MIN HEAP ***************/


#define MAX_SZ_OF_HEAP MAX_NUM_OF_NODES
#define SZ_OF_CURRENT_HEAP 10


//taken from http://corelab.ntua.gr/courses/algorithms/old/2014-2015/slides/04_Heap.pdf

void mh_swap_double(double *a, double *b)
{
	double temp;
	temp=*a;
	*a=*b;
	*b=temp;
	
}


void mh_print_heaps(double *min_heap,int *corresponding_indexes,int * fixed_indexes,int num_of_elements)
{
	int i;
	for (i=1;i<=num_of_elements;i++)
	{
		printf("%lg ",min_heap[i]);
	}
    printf("\n");
    for (i=1;i<=num_of_elements;i++)
	{
		printf("%d ",corresponding_indexes[i]);
	}
    printf("\n");
    for (i=1;i<=num_of_elements;i++)
	{
		printf("%d ",fixed_indexes[i]);
	}
	printf("\n\n");
}


void mh_combine(double *min_heap,int *corresponding_indexes,int * fixed_indexes,int index, int num_of_elements)
{
	int left=2*index;
	int right=2*index+1;
	int ind_in_question=index;
	double temp;
    int tmp_ind;

	if ((left <= num_of_elements) && (min_heap[left] < min_heap[ind_in_question]))
		ind_in_question = left;
	if ((right <= num_of_elements) && (min_heap[right] < min_heap[ind_in_question]))
		ind_in_question = right;
	if (ind_in_question != index) 
	{
		//swap positions in all arrays
		temp=min_heap[index]; min_heap[index]=min_heap[ind_in_question]; min_heap[ind_in_question]=temp;
        tmp_ind=corresponding_indexes[index]; corresponding_indexes[index]=corresponding_indexes[ind_in_question];corresponding_indexes[ind_in_question]=tmp_ind;
        fixed_indexes[corresponding_indexes[index]]=index; fixed_indexes[corresponding_indexes[ind_in_question]]=ind_in_question; 
        
		mh_combine(min_heap,corresponding_indexes,fixed_indexes,ind_in_question,num_of_elements); 
	} 

}

void mh_insert(double *min_heap,int *corresponding_indexes,int * fixed_indexes,int* num_of_elements,double element,int index_to_insert)
{
	int i, p;
	double temp;
    int tmp_ind;

	(*num_of_elements)++;
	min_heap[*num_of_elements]=element;
    corresponding_indexes[*num_of_elements]=index_to_insert;
    fixed_indexes[index_to_insert]=*num_of_elements;
	i=*num_of_elements;
	p=i/2;
	while ((i>1) && min_heap[p]>min_heap[i])
	{
		//swap positions in both arrays
		temp=min_heap[p]; min_heap[p]=min_heap[i]; min_heap[i]=temp;
        tmp_ind=corresponding_indexes[p]; corresponding_indexes[p]=corresponding_indexes[i];corresponding_indexes[i]=tmp_ind;
        fixed_indexes[corresponding_indexes[p]]=p; fixed_indexes[corresponding_indexes[i]]=i; 
		i=p; p=i/2;
	}
}


void mh_constructheap(double *min_heap,int *corresponding_indexes,int * fixed_indexes, int sz)
{
	int i;
	for (i=sz/2;i>0;i--)
	{
		mh_combine(min_heap,corresponding_indexes,fixed_indexes,i,sz);
	}
}

double mh_fetch_min(double *min_heap, int num_of_elements)
{
	return min_heap[1];
}

double mh_fetch_and_delete_min(double *min_heap, int *corresponding_indexes,int * fixed_indexes,int* num_of_elements)
{
	double min;
	if (*num_of_elements>0)
	{
		min=min_heap[1];
		min_heap[1]=min_heap[*num_of_elements];
		(*num_of_elements)--;
		mh_combine(min_heap,corresponding_indexes,fixed_indexes,1,*num_of_elements);
		return min;
	}
}



void minheap_test()
{
	int i;
	double min_heap[MAX_SZ_OF_HEAP];
    int min_heap_corresponding_indexes[MAX_SZ_OF_HEAP];
    int fixed_indexes[MAX_SZ_OF_HEAP];
	
	for (i=1;i<=SZ_OF_CURRENT_HEAP;i++)
    {
		min_heap[i]=SZ_OF_CURRENT_HEAP-i; 
        min_heap_corresponding_indexes[i]=i;
        fixed_indexes[i]=i;
    }
    
	printf("Arrays in the beginning:\n");
	mh_print_heaps(&min_heap[0],&min_heap_corresponding_indexes[0],&fixed_indexes[0],SZ_OF_CURRENT_HEAP);
	mh_constructheap(&min_heap[0],&min_heap_corresponding_indexes[0],&fixed_indexes[0], SZ_OF_CURRENT_HEAP);
	printf("Arrays after being converted into a min heap:\n");
	mh_print_heaps(&min_heap[0],&min_heap_corresponding_indexes[0],&fixed_indexes[0],SZ_OF_CURRENT_HEAP);

	int temp_sz=SZ_OF_CURRENT_HEAP;
	printf("Arrays after fetching all the elements (i.e. sorted):\n");
	for (i=1;i<=SZ_OF_CURRENT_HEAP;i++)
		printf("%lg ",mh_fetch_and_delete_min(&min_heap[0],&min_heap_corresponding_indexes[0],&fixed_indexes[0],&temp_sz));
	printf("\n\n");

}



/*************** END OF MIN HEAP ***************/

/*************** START OF GRAPH INITIALIZATION ***************/

void init_graph_neighbors(int size_of_graph)
{
    int i,j;
    
    struct graph_neighbor_list_node *head;
    struct graph_neighbor_list_node *tmp;

    srand(50);
    for (i=0;i<size_of_graph;i++)
    {
        head=NULL;
        for (j=0;j<size_of_graph;j++)
        {
            //random neighbors
            if (rand()%(3)==0 && i!=j)
            {
                tmp=smalloc(sizeof(struct graph_neighbor_list_node));
                tmp->distance =rand()%1000+5;
                tmp->node_index=j;
                tmp->next=head;
                head=tmp;
            }
            array_of_lists_of_neighbors[i]=head;
        }
    }
}


void print_graph_neighbors(int size_of_graph)
{
    int i;
    struct graph_neighbor_list_node *tmp;

    for (i=0;i<size_of_graph;i++)
    {
        tmp=array_of_lists_of_neighbors[i];
        printf("\nNode %d neighbors:\n",i);
        while (tmp!=NULL)
        {
            printf("\tindex: %d , distance=%lg\n",tmp->node_index,tmp->distance);
            tmp=tmp->next;
        }
    }
}


/*************** END OF GRAPH INITIALIZATION ***************/


void Dijkstra_find_min_path_from_index(int index, int size_of_graph)
{
    int i;
    char visited_neighbors[MAX_NUM_OF_NODES];
    
    for (i=0;i<size_of_graph;i++)
    {
        visited_neighbors[i]=0;
    }
    visited_neighbors[index]=1;



}

/*************** START OF MATRIX MULTIPLICATION ***************/

void init_global_arrays(int size,int maxnum)
{
	int i,j;
	
	srand(42);
	for (i=0;i<size;i++)
		for (j=0;j<size;j++)
		{
			mm_array_1[i][j]=rand()%maxnum;
			mm_array_2[i][j]=rand()%maxnum;
		}
	
}


void matrix_multiplication(int maxnum,int should_print)
{
	int i,j,k,l,sum;
	int matrix_res[10][10];
	int size=3;
	
	for (i=0;i<size;i++)
		for (j=0;j<size;j++)
		{
			sum=0;
			for (k=0;k<size;k++)
				{
					sum+=mm_array_1[i][k]*mm_array_2[k][j];
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
				printf("%d ",mm_array_1[i][j]);
			}
			printf("\n");
		}
		printf("\n");
		printf("b:\n");
		for (i=0;i<size;i++)
		{
			for (j=0;j<size;j++)
			{
				printf("%d ",mm_array_2[i][j]);
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

/*************** START OF STACK SMASHING TESTS ***************/

void try_to_overwrite_canary()
{
	unsigned long * foo_ptr=&foo_ptr;
	if (times_called_stack_smashing_fun==0)
	{
		//store stack canary ,works for useful_bytes=16
		stack_canary_of_previous_fun=foo_ptr[2];
	}
	else
	{
		foo_ptr[2]=stack_canary_of_previous_fun;
	}
	
	times_called_stack_smashing_fun++;
	
}

/*************** END OF STACK SMASHING TESTS ***************/


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

	//try_to_overwrite_canary();
    printf("a_global_array[3]=%d\n",a_global_array[3]);
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
    a_global_array[3]=45;
    /*
    try_to_overwrite_canary();
    try_to_overwrite_canary();
    */
	check_array_test();
	minheap_test();
	init_global_arrays(100,100);
	matrix_multiplication(100,1);
    init_graph_neighbors(10);
    //print_graph_neighbors(10);

}
