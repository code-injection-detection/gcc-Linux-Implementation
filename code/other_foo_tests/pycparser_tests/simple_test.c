/*
void print_primes_up_to_n(int n)
{
	int i,j;
	char isprime=0;

	printf("2\n");
	for (i=3;i<=n;i+=2)
	{
		isprime=1;
		for (j=2;j<i/2+1;j++)
		{
			if(i%j==0)
				isprime=0;
		}
		if (isprime)
		{
			printf("%d,\n",i);
		}

	}

}
*/



/*
int a_function(int x, int y)
{
    long sum;
	char d;
	char *m;
	float mm;
	int arr[10];

    sum=x+y;
    if (sum==100)
        printf("tralala\n");

    return ((int)sum);
}
*/

/*
char another_function(int a, char b, float * c, char** d)
{
	
	
}
*/
/*
void another_function()
{
	
	int a,b;
	//char * b;
	//long c,k,l,m;
	//int d;
	a=1;
	b=a;
	if (b==a)
	{
		a=2;
	}
}*/

/*
int global_a,global_m,secured_i;
char global_b;
char * global_c;
char ** global_d;
void * global_e;
long secured_sum;
*/

/*
void * hm_fun( char m)
{
	void * f;
	global_b=1;
	global_c=(unsigned char*)(*global_d)+1;
	return 1;
}
*/

/*
void global_sum_calculator(int times,int maxval)
{
	int k;
	int m;
	m=2;
	m/=4;
	
	for (k=0;k<times;++k)
	{
			secured_sum=0;
		for (secured_i=0;secured_i<maxval;secured_i++)
		{
			secured_sum+=secured_i;
		}
	}
	printf("secured sum:%ld\n",secured_sum);
	
}
*/
/*
void arr_test()
{
	int arr[5];
	int arr2[n];
	int bob;

}
*/
/*
int return_value_test()
{
	int n;
	return;
}
*/

int  foo_fun(int a, char b, float c)
{
}

int function_call_test()
{
	float c=3.4;
	int x;	
	printf("a%d\n",(foo_fun(45,'a',5.0)));
	//x=foo_fun(1,'b',c);
	foo_fun(1,'b',c);
	x=foo_fun(foo_fun(2,'a',3.14),'m',5+4.0);
    
    return foo_fun(2,'a',3.14);
}


//int global_init=0;

/*
int global_g;

void fun_var_init()
{
	int a=global_g+1;
	int b=a+4+1;
	b=1;
	a=b=2; 
}
*/

