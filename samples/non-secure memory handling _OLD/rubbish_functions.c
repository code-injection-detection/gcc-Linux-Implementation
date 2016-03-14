//SOME FUNCTIONS USED IN OLD SECURE-MEMORY IMPLEMENTATION 

int get_arrayelement_int(int *a,int index) 
{
  char * p;  
  int * result;	

  if (index==0) return a[0];
  else
  {
    p=&(a[0]);
    p+=(index)*(bytes_used_for_keyshares)+(index-1)*(sizeof(int));
    result=&(*p);
    return (*result);
  }
}

void set_arrayelement_int(int * a,int index,int value ) 
{
  char * p; 
  int * place;

  if (index==0)  a[0]=value;
  else
  {
    p=&(a[0]);
    p+=(index)*(bytes_used_for_keyshares)+(index-1)*(sizeof(int));
    result=&(*p);
    *result=value;
  }
  return;
}


int * insert_keys_into_array_int(int *a, int size)
{
  int i;
  int bytecounter;
  int elembytecounter;
  int counting_key_bytes=0; //used as boolean
  int sizeinbytes=size*sizeof(int) + bytes_used_for_keyshares*(size-1);
  char * p;
  
  srand(time(NULL));
  p=&a[0];

  bytecounter=0;
  elembytecouter=0;
  for (i=0;i<sizeinbytes;i++)
  {
    if(elembytecounter<sizeof(int) && !counting_key_bytes)
      elembytecounter++;
    else
      {
        elembytecounter=0;
        counting_key_bytes=0;
      }

    if(bytecounter<bytes_used_for_keyshares && counting_key_bytes)
      bytecounter++;
    else
      {
        bytecounter=0;
        counting_key_bytes=1;
        elembytecounter=1;
      }

    if (counting_key_bytes) continue;
    else *p[i]=rand()%128;
   
  }
     
  return a;
}


int * allocate_array_int(int* arrayname,int size)
{
  int * p;
  p=((int*) malloc( size*sizeof(int) + bytes_used_for_keyshares*(size-1) );
  insert_keys_into_array_int(p,size);
  return p;  
} 
