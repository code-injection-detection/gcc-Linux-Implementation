#include <stdio.h>
#include <stdlib.h>


void init_matrix_for_determinant_calc(int * matrix,int sz,int should_print)
{
	int i,j;
	
	srand(4242);
    if (should_print)
	    printf("Here's the matrix for determinant calculation:\n");
	for (i=0;i<sz;i++)
	{
		for(j=0;j<sz;j++)
		{
			matrix[i*25+j]=rand()%20;
            if (should_print)
			    printf("%d ",matrix[i*25+j]);
		}
        if (should_print)
		    printf("\n");	
	}
	
}


long calc_determinant(int *matrix,int dim)
{
	int j,p,q,r,s;
	int submatrix[25][25];
	long subdets[25];
	long d;
    
	if (dim==2)
	{	
		d=((matrix[0*25+0]) * (matrix[1*25+1]) ) - ( (matrix[0*25+1]) * (matrix[1*25+0]) );
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
                        submatrix[r][s]=matrix[p*25+q];
						s=(s+1)%(dim-1);
						if (s==0)
							r++;
					}
				}
			}
			if (j%2==1)
			{
				subdets[j]=calc_determinant(&submatrix[0][0],dim-1);
			}
			else
			{
				subdets[j]=calc_determinant(&submatrix[0][0],dim-1) * (-1);
			}
		}
		for(j=0,d=0;j<dim;j++)
		{
            d+=matrix[0*25+j]*subdets[j];
		}
		return(d);
	}
}



int main()
{
    int initial_det_matrix[25][25];
    long determinant;
    init_matrix_for_determinant_calc(&initial_det_matrix[0][0],10,0);
    determinant=calc_determinant(&initial_det_matrix[0][0],10);
    printf("det=%ld\n",determinant);
    

    return 0;
}
