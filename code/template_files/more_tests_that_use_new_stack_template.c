/*The contents of this file is inserted at the end of tests_of_new_stack.c*/


/**** Heap manager that uses the secure stack test***/


	int n=1990;
	char * in_use;
	double ** numbers;
	int i,j,num,k,num2;
	double sum;
	double avg;


	srand(time(NULL));	
	print_sheap_lists(1);
	//HEY PYTHON CALLING FUNCTION : smalloc | WRITE RESULT TO: in_use | PARAMETERS TO CALL WITH: (n*sizeof(char))
	print_sheap_lists(1);
	for (k=0;k<n;k++)
	{
		//in_use[k]=1;
		set_char_array_element(in_use,k,1);
	}
	print_sheap_lists(1);
	//HEY PYTHON CALLING FUNCTION : smalloc | WRITE RESULT TO: numbers | PARAMETERS TO CALL WITH: (n*sizeof(double*))
	print_sheap_lists(1);
	for (i=0;i<n;i++)
	{
		void * tmp;
		//HEY PYTHON CALLING FUNCTION : smalloc | WRITE RESULT TO: tmp | PARAMETERS TO CALL WITH: (30*sizeof(double))
		set_pointer_array_element(numbers,i,tmp);
		for (j=0;j<30;j++)
		{
			//numbers[i][j]=0.5+ i%10;
			set_double_array_element(get_pointer_array_element(numbers,i),j,0.5+ i%10);
		}
	}
	sum=0;
	for (i=0;i<n;i++)
	{
		for (j=0;j<30;j++)
		{
			//sum+=numbers[i][j];
			sum+=get_double_array_element(get_pointer_array_element(numbers,i),j);
		}
	}
	avg=sum/(n*30.0);
	printf("\n\navg: %lf\n\n",avg);
	
	//print_sheap_lists(1);
	//print_secure_heap_range(in_use-32,1000);
	//return;
	
	double step_of_freeing_allocing=500;
	int repeats=100;
	for (i=0;i<repeats;i++)
	{
		for (j=0;j<step_of_freeing_allocing;j++)
		{
			num=rand()%n;
			//free that num
			if (get_char_array_element(in_use,num)==1)
			{
				//HEY PYTHON CALLING FUNCTION : sfree_memory | PARAMETERS TO CALL WITH: (get_pointer_array_element(numbers@num))
				//in_use[num]=0;
				set_char_array_element(in_use,num,0);
			}
		}
		for (j=0;j<step_of_freeing_allocing;j++)
		{
			num=rand()%n;
			num2=10+rand()%40;
			if (get_char_array_element(in_use,num)==0)
			{
				//alloc that num
				void * tmp;
				//HEY PYTHON CALLING FUNCTION : smalloc | WRITE RESULT TO: tmp | PARAMETERS TO CALL WITH: (num2*sizeof(double))
				set_pointer_array_element(numbers,num,tmp);
				for (k=0;k<num2;k++)
				{
					//numbers[num][k]=0.5+num%10;
					set_double_array_element(get_pointer_array_element(numbers,num),k,0.5+num%10);
				}
				//in_use[num]=1;
				set_char_array_element(in_use,num,1);
			}
		}
		
		step_of_freeing_allocing=step_of_freeing_allocing*(950.0/1000);
		//printf("step:%lf\n",step_of_freeing_allocing);
		
		//if (i%50==0)
		//	print_sheap_lists(1);
	}
	print_sheap_lists(1);
	printf("\n\n");
	printf("Let's find the sum of all.");
	
	sum=0;
	for (i=0;i<n;i++)
	{
		if (get_char_array_element(in_use,i))
		{
			for (j=0;j<30;j++)
			{
				//sum+=numbers[i][j];
				sum+=get_double_array_element(get_pointer_array_element(numbers,i),j);
			}
		}
	}
	avg=sum/(n*30.0);
	printf("\n\n final avg: %lf\n\n",avg);


/**** Heap manager that uses the secure stack test end***/
		
