#include "headers_needed.h"

/* The heap memory image should be like ('o'=useful data, 'x'=keyshares ,'m'= MAC bytes):
oooxxxxxxmmmooo.....xxxxxxmmmoooxxxxxxmmm
Which means: n times useful data, n times keyshares, n times mac bytes
Let's call these groups of bytes as chunks (of useful data, and of keyshares+macs)
Allocation is done as allocation of a whole number of useful chunks. A chunk is not broken between different allocations.
The heap memory manager uses two lists: One for free consecutive chunks (which are grouped together  whenever they don't have data among them),
and one for allocated groups of chunks, one group for every managed_secure_malloc() call.
*/


/*Memory manager data structure*/
typedef struct node_of_a_list {
	long length; //in chunks (groups of useful data in heap)
	void * pointer_to_mem;
	struct node_of_a_list * next;
	struct node_of_a_list * previous;
} list_node;


long total_bytes_allocated; /*total bytes allocated for the secure heap (perhaps different than the amount asked)*/
unsigned char * entire_memory_chunk; /*points to the start of the secure heap*/
unsigned char* last_unused_memory; /*old, use memory manager functions instead*/
FILE *keyshare_input_file;

/*memory manager lists*/
/*Each node they contain, represents one group of chunks that has been allocated as one, or is one continuous free space in the heap*/
//ATTENTION: FORMER GLOBAL VARIABLE FOLLOWING! | SIZE:ptr
list_node * free_chunks_list; 
//ATTENTION: FORMER GLOBAL VARIABLE FOLLOWING! | SIZE:long
long free_chunks_num;
//ATTENTION: FORMER GLOBAL VARIABLE FOLLOWING! | SIZE:ptr
list_node * allocated_chunks_list;
//ATTENTION: FORMER GLOBAL VARIABLE FOLLOWING! | SIZE:long
long allocated_chunks_num;


/*****************************LIST MANIPULATION FUNCTIONS ******************************************/


//copies one list_node to where a list_node POINTER points!
void copy_nodes(list_node * dest, list_node src)
{
	dest->length=src.length;
	dest->pointer_to_mem=src.pointer_to_mem;
	dest->next=src.next;
	dest->previous=src.previous;
}

//copies the elements of a node pointer to another node pointer
void copy_nodes_ptr(list_node * dest,list_node * src)
{
	dest->length=src->length;
	dest->pointer_to_mem=src->pointer_to_mem;
	dest->next=src->next;
	dest->previous=src->previous;
}

/*Allocates a list with <number of nodes> nodes*/
list_node * alloc_list(long number_of_nodes)
{
	list_node* head;
	list_node* temp;
	list_node* prev;
	long i,j;
	
	head=temp=prev=NULL;
	for (i=1;i<=number_of_nodes;i++)
	{	
		temp=(list_node*)error_checking_malloc(sizeof(list_node),__func__,__LINE__);

		if (i==1)
			head=temp;
		if (i>1)
		{
			prev->next=temp;
			temp->previous=prev;
		}
		prev=temp;
	}
	
	if (number_of_nodes>0)
	{
		temp->next=NULL;
		head->previous=NULL;
	}
	
	return head;
}

/*Allocates and adds a node at the start of the list*/
list_node * add_node_to_list(list_node *head,list_node newnode)
{
	list_node * new;
	
	
	new=error_checking_malloc(sizeof(list_node),__func__,__LINE__);
	
	copy_nodes(new,newnode);
	
	//if the list was empty
	if (head==NULL)
	{
		head=new;
		head->next=NULL;
		head->previous=NULL;
		return head;
	}
	
	//else
	//insert at the start of the list
	new->next=head;
	head->previous=new;
	new->previous=NULL;
	head=new;

	return head;
}

/*Deletes a node from a list*/
list_node * delete_node_from_list(list_node *head,list_node * node_to_delete)
{
	list_node * prev;
	list_node * nxt;
	
	nxt=node_to_delete->next;
	prev=node_to_delete->previous;
	
	if (nxt==NULL && prev==NULL)
	{
		//was the only node in the list
		head=NULL;
		free(node_to_delete);
		return head;
	}
	else if (nxt==NULL && prev!=NULL)
	{
		//was the last node in the list
		prev->next=NULL;
		free(node_to_delete);
		return head;
	}
	else if (nxt!=NULL && prev==NULL)
	{
		//was the first node in the list
		head=nxt;
		nxt->previous=NULL;
		free(node_to_delete);
		return head;
	}
	else
	{
		nxt->previous=prev;
		prev->next=nxt;
		free(node_to_delete);
		return head;	
	}
	
}

/*Free all the elements of a list*/
void free_list(list_node *head)
{
	list_node * temp1;
	list_node * temp2;
	
	if (head==NULL)
		return;
	else
	{
		temp1=head->next;
		temp2=head;
		while (1)
		{
			delete_node_from_list(temp2,temp2);
			temp2=temp1;
			if (temp1==NULL) break;
			else temp1=temp1->next;
		}
	}	
}

void print_list(list_node * head)
{
	list_node * temp;
	long i=0;
	
	if (head==NULL)
	{
		printf("List is empty.\n");
		return;
	}
	
	for (temp=head;temp!=NULL;temp=temp->next)
	{
		//printf("Node %ld: Length in chunks=%ld, pointer to mem=%p\n",i,temp->length,temp->pointer_to_mem);
		printf("Node %ld: Length in chunks=%ld, pointer to mem=%ld\n",i,temp->length,(long)temp->pointer_to_mem);
		i++;
	}

}


void print_lists()
{
		
	printf("Free chunks list:\n");
	print_list(free_chunks_list);
	
	printf("Allocated chunks list:\n");
	print_list(allocated_chunks_list);
	
}


/***************************** END OF LIST MANIPULATION FUNCTIONS ******************************************/

/*Returns the number of the useful chunks in memory*/
/*This number (let it be "n") satisfies the equation <useful_bytes_chunk_length>*(n) + <keyshare_bytes_chunk_length>*(n) + <mac_bytes_chunk_length)*(n)= total_allocated_bytes */
long find_number_of_useful_chunks(long allocated_bytes) //most often allocated bytes == total_bytes_allocated
{
  long a=allocated_bytes;
  long b=bytes_used_for_keyshares;
  long c=bytes_for_useful_data;
  long d=number_of_mac_bytes;

  return ((a)/(b+c+d));
}

/*Initialises memory manager's data structures*/
void init_memory_manager()
{
	long chunks;
	
	chunks=find_number_of_useful_chunks(total_bytes_allocated);
	
	/*One list node for every chunk? NO.
	 * 
	free_chunks_list=alloc_list(chunks);
	free_chunks_num=chunks;
	*/
	
	/*One list node for every group of chunks? YES.*/
	//init with 1 node, treating the entire secure heap as 1 group
	list_node all;
	
	all.length=chunks;
	all.previous=NULL;
	all.next=NULL;
	all.pointer_to_mem=entire_memory_chunk;
	
	free_chunks_list=NULL;
	free_chunks_list=add_node_to_list(free_chunks_list,all);
	free_chunks_num=1;
	allocated_chunks_list=NULL;
	allocated_chunks_num=0;

}

/*Frees memory manager's data structures*/
void free_memory_manager_structures()
{
	free_chunks_num=0;
	allocated_chunks_num=0;
	free_list(free_chunks_list);
	free_list(allocated_chunks_list);
}

/*Allocates the entire chunck of memory.*/
/*The goal is to allocate a space where we can have useful("o") bytes with keyshare bytes("x"), and with mac bytes("m"). The memory image should be like:
oooxxxxxxmmmooo.....xxxxxxmmmoooxxxxxxmmm
Which means: n times useful data, n times keyshares, n times mac bytes
*/
unsigned char * allocate_mem()
{
  long bytes_to_allocate;
  unsigned char * mem;
  long a=bytes_to_allocate_on_start;
  long b=bytes_used_for_keyshares;
  long c=bytes_for_useful_data;
  long d=number_of_mac_bytes;
  long element_appearances_in_mem;

  element_appearances_in_mem=(a)/(b+c+d); //this should be an integer, If not, we should allocate a bit more. 

  if (element_appearances_in_mem*c + (element_appearances_in_mem)*b +(element_appearances_in_mem)*d == a) 
  {
	printf("Great!. No need to allocate more than the defined amount.\n");
	bytes_to_allocate=a;
  }
  else
  {
	printf("Whoops. We need to allocate a bit more space.\n");
	element_appearances_in_mem++;
	bytes_to_allocate=element_appearances_in_mem*c + (element_appearances_in_mem)*b+(element_appearances_in_mem)*d;
  }
 
  mem = error_checking_malloc(bytes_to_allocate,__func__,__LINE__);

  total_bytes_allocated=bytes_to_allocate;
  return mem;
}


/*Allocates secured space for future use*/
/*Obsolete. use managed_secure_malloc() instead*/
void * secure_malloc(long bytes_for_allocation )
{
  unsigned char* last_unused_mem=last_unused_memory;
  long ttl_bts_alloc=total_bytes_allocated;
  long b=bytes_used_for_keyshares;
  long c=bytes_for_useful_data;
  long d=number_of_mac_bytes;
  unsigned char * memstart=entire_memory_chunk;
  long useful_chunks;
  long chunks_needed;
  long total_bytes_left_free;
  void * start_of_allocated_data;
 

  total_bytes_left_free=ttl_bts_alloc-(last_unused_mem-memstart);

  useful_chunks=(total_bytes_left_free)/(b+c+d);

  if (useful_chunks*c<bytes_for_allocation)
  {
	errno=ENOMEM;
	return NULL;
  }

  //else allocate
  chunks_needed=(bytes_for_allocation/c);

  //allocate one more chunk if needed (remember: we need whole number of chunks)
  if (chunks_needed*c!=bytes_for_allocation) chunks_needed++;
  
  //practically move unused memory pointer
  start_of_allocated_data=last_unused_mem;
  last_unused_memory+=(chunks_needed)*c+(chunks_needed)*b+(chunks_needed)*d; //we want last_unused_memory to point to a useful area
  return start_of_allocated_data;  

}


/*magically gets/produces the next keyshare*/
unsigned char get_next_keyshare()
{
  unsigned char ret;
  if (feof(keyshare_input_file))
  {
	perror("Attempted to read more keyshares that the ones stored\n");
	exit(44);
  }
  //reads one byte
  if( fread(&ret,1,1,keyshare_input_file) != 1 )
  {
	perror("Did not read byte in get_next_keyshare()\n");
	exit(47);
  }
  return ret;

  //return ((unsigned char)rand()%256); //use random values for testing
}



/*Memory printing, for testing purposes*/
void print_mem(unsigned char * mem)
{
  long i;
  unsigned char * p;
  p=&mem[0];
  printf("Printing heap memory:\n");
  for (i=0;i<total_bytes_allocated;i++)
  {
	//printf("%#04x ",p[i]);
	printf("0x%02x ",p[i]);
  }
  printf("\n");

}



//initialises memory (allocation+ key insertion)
unsigned char * init_mem()
{
  unsigned char * mem;

  //init random seed, in case we need to produce random keyshares (now we read them from file)
  srand(time(NULL));

  mem=allocate_mem();
  keyshare_input_file=fopen("heap_keyshares","rb");
  if(keyshare_input_file==NULL)
  {
	perror("init_mem:heap_keyshares file error\n");
	exit(43);
  }
  insert_keys_into_mem(mem);


  entire_memory_chunk=mem;
  last_unused_memory=mem;
  fclose(keyshare_input_file);
  
  init_memory_manager();
  
  return mem;
}

//normally frees the memory (and the memory manager structures), not anything fancy.
void free_secure_mem(unsigned char * mem)
{
  free(mem);
  free_memory_manager_structures();
}


/**************************************************************************************************************/
/**************************************************************************************************************/
/********************  HIGHER LEVEL MEMORY MANAGER FUNCTIONS  *************************************************/
/*****  (except init_memory_manager() and free_memory_manager_structures() which are written above)  **********/
/**************************************************************************************************************/
/**************************************************************************************************************/

/*Finds, if it exists, a group of <chunks_needed> free chunks. Returns the group in the free_chunks_list list*/
/*If not, returns NULL*/
list_node * find_large_enough_free_group(long chunks_needed)
{
	list_node * temp;
	
	if (free_chunks_list==NULL)
		return NULL;
	
	for(temp=free_chunks_list;temp!=NULL;temp=temp->next)
	{
		if(temp->length >= chunks_needed)
			return temp;
	}
	
	//nothing found
	return NULL;
}


/*Accepts a pointer to memory, and finds which group points to that mem*/
/*Does linear search. Any way to optimize?*/
/*Returns that group if everything is ok, NULL if that group was not found*/
list_node* find_which_group_to_free(void* memory_ptr_to_free)
{
	
	list_node * temp;
		
	if (allocated_chunks_list==NULL)
		return NULL;
	else
	{
		for(temp=allocated_chunks_list;temp!=NULL;temp=temp->next)
		{
			if (temp->pointer_to_mem==memory_ptr_to_free)
			{
				//found it
				return temp;
			}
		}
		return NULL;
	}
	
}


/*checks if two list nodes can be merged. If yes, allocates and returns the merged node. */
/*Merged means that they point to consecutive memory, so they can be replaced by a node pointing to a bigger group*/
/*If they can't be merged, NULL is returned*/
list_node * check_and_merge(list_node* a, list_node* b , list_node ** head) //careful, we need to change the pointer to the head
{
	list_node *temp;
	
	//if the memory is consecutive
	if ((long)(a->pointer_to_mem) + a->length*(bytes_for_useful_data+bytes_used_for_keyshares+number_of_mac_bytes) == (long)(b->pointer_to_mem))
	{ //yes they can be merged
		temp=error_checking_malloc(sizeof(list_node),__func__,__LINE__);
		//merge
		temp->length=a->length+b->length;
		temp->pointer_to_mem=a->pointer_to_mem;
		temp->previous=a->previous;
		temp->next=b->next;
		if (temp->previous!=NULL)
			(temp->previous)->next=temp;
		else
			*head=temp; //set the start of the list
		
		if (temp->next!=NULL)
			(temp->next)->previous=temp;

		//free the former nodes
		free(a);
		free(b);
		return temp;
	}
	else
		return NULL;
}



/*Proper (higher level) secure malloc. Uses memory manager*/
void * managed_secure_malloc(long bytes_for_allocation)
{
	long chunks_needed;
	list_node * temp;
	list_node new_node;
	
	if (bytes_for_allocation==0) return NULL;
	//find correct number of needed chunks
	chunks_needed=bytes_for_allocation/bytes_for_useful_data;
	
	if (chunks_needed*bytes_for_useful_data<bytes_for_allocation)
		chunks_needed++;
	
	//so, we need to allocate a group of <chunks_needed> chunks.
	temp=find_large_enough_free_group(chunks_needed);
	if (temp==NULL)
	{
		//can't find a group large enough.Perhaps compact list if we have external fragmentation?
		//careful on this one: User's memory will be moved around if we compact! This is not the expected standard behavior by the user...
		return NULL;
	}
	else
	{
		//split the group in two. Insert the first into allocated_chunks_list, and the other keep it in the free_chunks_list
		new_node.length=chunks_needed;
		new_node.pointer_to_mem=temp->pointer_to_mem;
		new_node.next=NULL;
		new_node.previous=NULL;
		allocated_chunks_list=add_node_to_list(allocated_chunks_list,new_node);
		allocated_chunks_num++;
		
		//and change the size of the free group
		//if we allocated the entire group
		if (temp->length==chunks_needed)
		{
			free_chunks_list=delete_node_from_list(free_chunks_list,temp);
			free_chunks_num--;
		}
		else //if we allocated just a portion of the free group
		{
			temp->length=temp->length-chunks_needed;
			temp->pointer_to_mem=(unsigned char*)((unsigned char*)(temp->pointer_to_mem)+(bytes_used_for_keyshares+bytes_for_useful_data+number_of_mac_bytes)*chunks_needed);
		}
		
		return new_node.pointer_to_mem;
	}
	
	return NULL;
}


/*The opposite of managed_secure_malloc. Frees secure memory using memory manager*/
/*Returns 1 if everything was freed the way it was meant to be, 0 if something was wrong*/
int managed_secure_free(void * pointer_to_freed_mem)
{
	list_node * temp;
	list_node *temp2;
	list_node * prev;
	list_node * temp3;
	list_node * temp4;
	int ret=0;
	
	//first we need to find which group of allocated memory we need to free
	temp=find_which_group_to_free(pointer_to_freed_mem);
	
	if (temp==NULL) //did not find it
		return 0;
	
	temp2=error_checking_malloc(sizeof(list_node),__func__,__LINE__);
	
	copy_nodes_ptr(temp2,temp);
	
	//remove from allocated_chunks_list
	allocated_chunks_list=delete_node_from_list(allocated_chunks_list,temp);
	allocated_chunks_num--;
	
	//now we need to add temp2 to free_chunks_list. But we must add it in the correct place.
	temp=free_chunks_list;
	if (temp==NULL) //if the list is empty
	{
		free_chunks_list=add_node_to_list(free_chunks_list,*temp2);
		free_chunks_num++;
		free(temp2); //add_node mallocs on her own
		ret=1;
	}
	else
	{
		for(prev=NULL;temp!=NULL;temp=temp->next) //find the right place, linear search
		{
			if ((long)temp->pointer_to_mem > (long)temp2->pointer_to_mem)
			{
				break;
			}
			prev=temp;
		}
		
		if (prev==NULL) //we should add <*temp2> at the start of the list
		{
			//printf("inserting at start of list\n");
			free_chunks_list=add_node_to_list(free_chunks_list,*temp2);
			free_chunks_num++;
			free(temp2); //add_node mallocs on her own
			
			//now we will try to see what we can merge
			temp2=free_chunks_list;
			temp4=temp2->next;
			
			if (temp4!=NULL) //if there is more than one element
			{
				temp3=check_and_merge(temp2,temp4,&free_chunks_list);
				
				while (temp3!=NULL) //go all the way to the end and try to merge (until a failed merge occurs)
				{
					free_chunks_num--;
					temp4=temp3->next;
					if (temp4!=NULL)
					{
						temp3=check_and_merge(temp3,temp4,&free_chunks_list);
						if (temp3==NULL) break;
					}
					else
					{
						break;
					}
					
				}
				
			}
			
			ret=1;
		}
		else if (prev->next==NULL && (long)prev->pointer_to_mem < (long)temp2->pointer_to_mem)
		{ //we should add <temp2> at the end
			prev->next=temp2;
			temp2->previous=prev;
			temp2->next=NULL;
			free_chunks_num++;
			
			//try to merge, if possible
			temp3=check_and_merge(prev,temp2,&free_chunks_list);
			
			if (temp3!=NULL)
				free_chunks_num--;
			
			ret=1;
		}
		else  //we should add <temp2> between <prev> and <temp>
		{
			prev->next=temp2;
			temp2->previous=prev;
			temp2->next=temp;
			temp->previous=temp2;
			free_chunks_num++;
			
			//now we will try to see what we can merge
			temp3=check_and_merge(prev,temp2,&free_chunks_list);

			if (temp3==NULL) //merge has noot been done
			{
				temp3=check_and_merge(temp2,temp,&free_chunks_list); //try the next one
			}
			
			while (temp3!=NULL) //go all the way to the end and try to merge (until a failed merge occurs)
			{
				free_chunks_num--;
				temp4=temp3->next;
				if (temp4!=NULL)
				{
					temp3=check_and_merge(temp3,temp4,&free_chunks_list);
					if (temp3==NULL) break;
				}
				else
				{
					break;
				}
				
			}
			
			ret=1;
			
		}
	}
	return ret;

}

/*Wrapper for managed_secure_malloc. Checks for NULL return value and exits if this is true*/
void * error_checking_managed_secure_malloc(long bytes_for_allocation,const char * fun_name, int line)
{
	void * ret;
	if (bytes_for_allocation==0) return NULL;
	ret=managed_secure_malloc(bytes_for_allocation);
	if (ret==NULL)
	{
		fprintf(stderr,"Managed secure malloc error in function %s, line %d. Perhaps not enough memory?\n",fun_name,line);
		exit(52);
	}
	return ret;	
}


/**************************************************************************************************************/
/******************************  END OF HIGER LEVEL MEMORY MANAGER FUNCTIONS  *********************************/
/**************************************************************************************************************/



/*Let's include a test suite*/
#include "memory_manager_test_suite.c"

