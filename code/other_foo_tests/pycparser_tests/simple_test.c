/*
int a_function(int x, int y)
{
    long sum;
	char d;
	char *m;
	float mm;

    //sum=x+y;
    //if (sum==100)
    //    printf("tralala\n");

    //return ((int)sum);
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

int global_a,global_m,secured_i;
char global_b;
char * global_c;
char ** global_d;
void * global_e;
long secured_sum;


/*
void * hm_fun( char m)
{
	void * f;
	global_b=1;
	global_c=(unsigned char*)(*global_d)+1;
	return 1;
}
*/


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
