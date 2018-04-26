

void set_elem_to_42(int * p)
{
	*p=42;
}

int add_1(int inp)
{
	int outp=inp+1;
	return outp;
}


void check_array()
{
	int arr[10];
	int i;
	for (i=0;i<10;i++)
	{
		arr[i]=i;
	}

	set_elem_to_42(&arr[3]);

	printf("%d\n",add_1(add_1(2)));

	for (i=0;i<10;i++)
	{
		printf("%d ",arr[i]);
	}
	printf("\n");

}

int main()
{
	check_array();
	return 0;
}
