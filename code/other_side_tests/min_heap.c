#include <stdio.h>
#include <stdlib.h>


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


int main()
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

	return 0;
}
