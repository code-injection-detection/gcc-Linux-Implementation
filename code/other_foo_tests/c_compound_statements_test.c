#include <stdio.h>

int test()
{
    return 0;
}

int main()
{
    int i;
    int x;
    int a;
    void * hmm;
    /*
    i=2;
    i=(x=9,x/3);
    printf("i=%d\n",i);
    i=2;
    
    
    a=test();
    goto label;
    if (i==3)
    {
        label:
        i=4;
        printf("i=%d\n",i);

    }
    */
    /*
    printf("%d\n",({a=1; a+=2; 
                    a+=3;
                    goto m;ll:a;}));
    */
    
   /* printf("%d\n",(a=1, a+=2, 
                    goto m;
                   ll: ,
                    a+=3,
                    a));*/
    
    printf("%d\n",({a=1; a+=2; 
                a+=3;
                hmm=&&ll;
                goto m; ll: a;}));


    goto h;
    m: ;
    int a_var,another_var;
    a_var=3;
    another_var=4;
    //a=42;
    a_var+=another_var;
    for (i=0;i<=100;i++)
        a_var+=another_var;
    printf("lala %d\n",a_var);
    goto *hmm;
    h:
    return 0;
}
