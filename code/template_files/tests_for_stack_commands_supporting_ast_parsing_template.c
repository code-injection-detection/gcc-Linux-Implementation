
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
