#include <stdio.h>
#include <stdlib.h>


#define MAX_SZ_OF_HEAP 100000

//taken from http://corelab.ntua.gr/courses/algorithms/old/2014-2015/slides/04_Heap.pdf

void mh_swap(double *a, double *b)
{
	double temp;
	temp=*a;
	*a=*b;
	*b=temp;
}


void mh_combine(double *min_heap,int index, int num_of_elements)
{
	int left=2*index;
	int right=2*index+1;
	int ind_in_question=index;

	if ((left <= num_of_elements) && (min_heap[left] > min_heap[ind_in_question]))
		ind_in_question = left;
	if ((right <= num_of_elements) && (min_heap[right] > min_heap[ind_in_question]))
		ind_in_question = right;
	if (ind_in_question != index) 
	{
		mh_swap(&min_heap[index],  &min_heap[ind_in_question]);
		mh_combine(min_heap,ind_in_question,num_of_elements); 
	} 

}

double mh_fetch_min(double *min_heap, int num_of_elements)
{
	return min_heap[1];
}

double mh_fetch_and_delete_min(double *min_heap, int num_of_elements)
{
	double min;
	if (num_of_elements>0)
	{
		min=min_heap[1];
		min_heap[1]=min_heap[num_of_elements];
		num_of_elements--;
		mh_combine(min_heap,1,num_of_elements);
		return min;
	}
}








int main()
{
	double min_heap[MAX_SZ_OF_HEAP];
	int size_of_heap=10000;
	return 0;
}
