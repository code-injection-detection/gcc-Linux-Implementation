#include <stdio.h>
#include <stdlib.h>



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

int int_for_delay_hanoi[1]; //adding these things to emulate the fact that the function should do something!
char char_for_delay_hanoi[5];
long long_for_delay_hanoi;

/*************** START OF MIN HEAP ***************/


#define MAX_SZ_OF_HEAP MAX_NUM_OF_NODES
#define SZ_OF_CURRENT_HEAP 10     //old


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


int mh_combine(double *min_heap,int *corresponding_indexes,int * fixed_indexes,int index, int num_of_elements)
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
        return 1; //combination done
	}
    return 0; //no combination done

}


void mh_update_value(double *min_heap,int *corresponding_indexes,int * fixed_indexes,int num_of_elements,double element,int index_to_update)
{
    int we_had_comb;
    int new_ind=100; //value >1

    min_heap[index_to_update]=element;
    
    if (index_to_update>1)
    {
        we_had_comb=1;
        new_ind=index_to_update/2;
        while (new_ind>=1 && we_had_comb)
        {   
            //combine the father going up
            we_had_comb=mh_combine(min_heap,corresponding_indexes,fixed_indexes,new_ind,num_of_elements);
            if (we_had_comb)
            {
                new_ind=new_ind/2;
            }
        }

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
        fixed_indexes[corresponding_indexes[1]]=-42; //not in the heap
        corresponding_indexes[1]=corresponding_indexes[*num_of_elements];
        fixed_indexes[corresponding_indexes[1]]=1;
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
    int probability_of_being_neighbor;

    if (size_of_graph==10)
        probability_of_being_neighbor=3; //1/3
    else if (size_of_graph<=50)
        probability_of_being_neighbor=5;
    else if (size_of_graph<=200)
        probability_of_being_neighbor=15;
    else if (size_of_graph<=1000)
        probability_of_being_neighbor=size_of_graph/20;
    else 
        probability_of_being_neighbor=size_of_graph/30;    

    struct graph_neighbor_list_node *head;
    struct graph_neighbor_list_node *tmp;

    srand(50);
    for (i=1;i<=size_of_graph;i++)
    {
        head=NULL;
        for (j=1;j<=size_of_graph;j++)
        {
            //random neighbors
            if (rand()%(probability_of_being_neighbor)==0 && i!=j)
            {
                tmp=malloc(sizeof(struct graph_neighbor_list_node));
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

    for (i=1;i<=size_of_graph;i++)
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


void Dijkstra_find_min_path_from_index(int index, int size_of_graph,int should_print)
{
    int i;
    char visited_neighbors[MAX_NUM_OF_NODES];
    double min_heap[MAX_NUM_OF_NODES];
    int corresponding_indexes[MAX_NUM_OF_NODES];
    int fixed_indexes[MAX_NUM_OF_NODES];
    int index_of_neighbor;
    double dist_of_neighbor;
    int temp_size_of_heap=size_of_graph;
    double final_distances[MAX_NUM_OF_NODES];
    int indexes_of_fathers[MAX_NUM_OF_NODES];
    int index_of_min;
    double dist_of_min;
    int reached_node_with_inf_dist=0;

    struct graph_neighbor_list_node *tmp;

    for (i=1;i<=size_of_graph;i++)
    {
        visited_neighbors[i]=0;
        min_heap[i]=100000000; //a very large number
        final_distances[i]=100000000;
        corresponding_indexes[i]=i;
        fixed_indexes[i]=i;
        indexes_of_fathers[i]=-1; //unreachable
    }
    min_heap[index]=0;
    indexes_of_fathers[index]=index;
    mh_constructheap(&min_heap[0],&corresponding_indexes[0],&fixed_indexes[0], size_of_graph);


    while (temp_size_of_heap>0 && reached_node_with_inf_dist==0)
    {
        //get the smallest one
        index_of_min=corresponding_indexes[1];
        dist_of_min=mh_fetch_and_delete_min(&min_heap[0],&corresponding_indexes[0],&fixed_indexes[0],&temp_size_of_heap);
        final_distances[index_of_min]=dist_of_min;

        if (temp_size_of_heap==0)
            break;

        if (dist_of_min==100000000)
        {
            reached_node_with_inf_dist=1;
            continue;
        }


        tmp=array_of_lists_of_neighbors[index_of_min];
        visited_neighbors[index_of_min]=1;

        //process the neighbors
        while (tmp!=NULL)
        {
            index_of_neighbor=tmp->node_index;
            dist_of_neighbor=tmp->distance;
            if (visited_neighbors[index_of_neighbor]==0 && min_heap[fixed_indexes[index_of_neighbor]]> dist_of_min+ dist_of_neighbor)
            {
                mh_update_value(&min_heap[0],&corresponding_indexes[0],&fixed_indexes[0],temp_size_of_heap,dist_of_min+ dist_of_neighbor,fixed_indexes[index_of_neighbor]);
                indexes_of_fathers[index_of_neighbor]=index_of_min; 
            }
            tmp=tmp->next;
        }        

    }
    if (should_print)
    {
        printf("\nStarting from index %d:\n",index);
        printf("Final Distances:\n");
        for (i=1;i<=size_of_graph;i++)
		    printf("%lg ",final_distances[i]);
        printf("\n");
        printf("\nFathers:\n");
        for (i=1;i<=size_of_graph;i++)
		    printf("%d ",indexes_of_fathers[i]);
        printf("\n");
    }
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

/*************** START OF PRIMES TEST ***************/

void find_primes_up_to_a_number(int num, int should_print)
{
	
	//local variables that we will use:
	int primes_found_so_far[150000];
	int i,j;
	int num_of_primes;
	char bool=0;
	
	if (should_print)
		printf("Going to find primes up to %d\n",num);

	
	num_of_primes=1; //2 is a prime
	primes_found_so_far[num_of_primes-1]=2;
	

	for (i=3;i<=num;i+=2)
	{
		bool=0;
 
		for (j=2;j<=i/2+1;j++) //not using sqrt here
		{
			if (i%j==0)
			{
				bool=1;
				break;
			}			 
		}

		if (bool==0)
		{
			num_of_primes++;
			primes_found_so_far[num_of_primes-1]=i;
			
		}	
	}
	
	if (should_print)
	{
		printf("\nPrimes:\n");
		//print all primes found
		for (i=0;i<num_of_primes;i++)
		{
			printf("%d ",primes_found_so_far[i]);
		}
		printf("\n\n");
		printf("Total number of primes:%d\n",num_of_primes);
	}
	
}

/*************** END OF PRIMES TEST ***************/

/*************** START OF HANOI TEST ***************/

void towerOfHanoi_test(int n, char fromrod, char torod, char auxrod, char should_print, char emulate_delay)
{

    if (n == 1)
    {
		if (should_print)
			printf("\n Move disk 1 from rod %c to rod %c", fromrod, torod);
        return;
    }
	if (emulate_delay) //adding these things to emulate the fact that the function should do something!
	{
		char_for_delay_hanoi[0]=fromrod;
		char_for_delay_hanoi[1]=auxrod;
		char_for_delay_hanoi[2]=torod;
		char_for_delay_hanoi[3]=should_print;
		char_for_delay_hanoi[4]=emulate_delay;
		long_for_delay_hanoi=42;
		int_for_delay_hanoi[0]=long_for_delay_hanoi+char_for_delay_hanoi[1];
	}
    towerOfHanoi_test(n-1, fromrod, auxrod, torod,should_print,emulate_delay);
	if (should_print)
		printf("\n Move disk %d from rod %c to rod %c", n, fromrod, torod);
    
	if (emulate_delay)
	{
		char_for_delay_hanoi[0]=fromrod;
		char_for_delay_hanoi[1]=auxrod;
		char_for_delay_hanoi[2]=torod;
		char_for_delay_hanoi[3]=should_print;
		char_for_delay_hanoi[4]=emulate_delay;
		long_for_delay_hanoi=42;
		int_for_delay_hanoi[0]=long_for_delay_hanoi+char_for_delay_hanoi[1];
	}
    towerOfHanoi_test(n-1, auxrod, torod, fromrod,should_print,emulate_delay);
}

/*************** END OF HANOI TEST ***************/

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


void main()
{
    a_global_array[3]=45;
    int i;
    int num_of_graph_nodes=1400;
    /*
    try_to_overwrite_canary();
    try_to_overwrite_canary();
    */
	//check_array_test();
	//minheap_test();
	//init_global_arrays(100,100);
	//matrix_multiplication(100,1);
    
    init_graph_neighbors(num_of_graph_nodes);
    //print_graph_neighbors(num_of_graph_nodes);
    for (i=1;i<=num_of_graph_nodes;i++)
        Dijkstra_find_min_path_from_index(i,num_of_graph_nodes,0);
	
	//find_primes_up_to_a_number(150000,0);
	//towerOfHanoi_test(28,'a','c', 'b',0,0);
	
}

