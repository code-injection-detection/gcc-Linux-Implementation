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

void simple_sieve_of_Eratosthenes(int num)
{
	char * numbers;
	int i;
	int j;
	int prime_cnt=0;
	double square_root=sqrt(num);
	
	numbers=smalloc((num+1)*sizeof(char));
	
	for (i=2;i<=num;i++)
	{
		numbers[i]=1;
	}
	
	
	for (i=2;i<=square_root+1;i++)
	{
		if (numbers[i]==1)
		{
			for (j=2*i;j<=num;j+=i)
			{
				numbers[j]=0;
			}
		}
	}
	
	
	printf("\n");
	printf("Primes with sieve:\n");
	for (i=2;i<=num;i++)
	{
		if (numbers[i]==1)
		{
			printf("%d ",i);
			prime_cnt++;
		}
	}
	printf("\n");
	printf("Total: %d primes.\n",prime_cnt);
	
	
	//free(numbers);
	
}

/*
long calc_determinant(int *matrix,int dim)
{
	int isminus,j,p,q,t,r,s;
	int submatrix[625];
	long subdets[25];
	long d;
	if (dim==2)
	{	
		d=((*(matrix+0*25+0)) * (*(matrix+1*25+1)) ) - ( (*(matrix+0*25+1)) * (*(matrix+1*25+0)) );
		return(d);
	}
	else
	{
		for(j=0;j<dim;j++)
		{       
			r=s=0;
			for(p=0;p<dim;p++)
			{
				for(q=0;q<dim;q++)
				{
					if(p!=0 && q!=j)
					{
						*(submatrix+r*(25)+s)=*(matrix+p*25+q);
						s=(s+1)%(dim-1);
						if (s==0)
							r++;
					}
				}
			}
			for(t=0,isminus=1;t<j;t++)
			{
				 isminus=(-1)*isminus;
			}
			subdets[j]=isminus*calc_determinant(submatrix,dim-1);

		}
		for(j=0,d=0;j<dim;j++)
		{
			d=d+(*(matrix+0*25+j)*subdets[j]);
		}
		return(d);
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

/*
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
*/
/*
int global_no_init;
char global_char_init=global_no_init;
int global_init=global_no_init;
char global_char_init2=global_no_init;
*/

/*
int global_size;
int global_array1[10],global_array_int[100];
char * global_array2[global_size];

void* bob[5];
*/




/*
int global_g;

void fun_var_init()
{
	int a=global_g+1;
    char c=a+4;
	int b=a+4+1;
	b=1;
	a=b=2; 
}
*/
/*
int a_foo_fun(int x,int y)
{
    return x+y;
}

int another_foo_global;
void array_locals(int x,int y, int z)
{
    int bob;
    int array_local[10];
    int array_local2[another_foo_global];
    //char * array_local3[bob];
    //float array_local4[100];
    //double array_local5[100];
    
    array_local[3]=1;
    array_local2[5]=bob;
    global_array1[bob]=array_local[3] + array_local2[5];
    
}
*/

/*
void test_pointer()
{
    int * bob;
    
    *bob=1;
    *(bob+1)=*bob;
    
}
*/
/*
int main()
{

    //array_locals(global_array1[5],a_foo_fun(global_array1[6],global_array1[8]),global_array1[7]);
return 0;
}
*/


