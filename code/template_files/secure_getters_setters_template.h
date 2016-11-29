#ifndef SECURE_GETTERS_SETTERS_H
#define SECURE_GETTERS_SETTERS_H


/*FOR THE HEAP*/

void insert_keys_into_mem(unsigned char * mem);
long insert_data_into_mem(long data_size,unsigned char * data, unsigned char * mem_where_to_insert);
void get_secure_data(void * res,long data_size, unsigned char * data_start, int isarray, long arrayindex);
void set_secure_data(void * source,long data_size, unsigned char * data_start, int isarray, long arrayindex);

char get_char( void * start_of_secure_data);
int get_int( void * start_of_secure_data);
long int get_long_int( void * start_of_secure_data);
void * get_pointer(void * start_of_secure_data);
float get_float( void * start_of_secure_data);
double get_double( void * start_of_secure_data);
void get_array_element(long data_size, void * start_of_array, long index, void * res);
char get_char_array_element(void * start_of_array, long index);
int get_int_array_element(void * start_of_array, long index);
long int get_long_int_array_element(void * start_of_array, long index);
void * get_pointer_array_element(void * start_of_array, long index);
float get_float_array_element(void * start_of_array, long index);
double get_double_array_element(void * start_of_array, long index);
void get_arbitrary_block_in_heap(long data_size,void * start_of_block,void * res);
void get_arbitrary_block_in_heap_with_offset(long data_size,void * start,long offset,void * res);

void set_char( void * start_of_secure_data,char source);
void set_int( void * start_of_secure_data,int source);
void set_long_int( void * start_of_secure_data,long int source);
void set_pointer( void * start_of_secure_data,void * source);
void set_float( void * start_of_secure_data,float source);
void set_double( void * start_of_secure_data,double source);
void set_array_element(long data_size, void * start_of_array, long index, void * source);
void set_char_array_element(void * start_of_array, long index, char source);
void set_int_array_element(void * start_of_array, long index, int source);
void set_long_int_array_element(void * start_of_array, long index, long int source);
void set_pointer_array_element(void * start_of_array, long index, void * source);
void set_float_array_element(void * start_of_array, long index, float source);
void set_double_array_element(void * start_of_array, long index, double source);
void set_arbitrary_block_in_heap(long data_size,void * start_of_block,void * src);
void set_arbitrary_block_in_heap_with_offset(long data_size,void * start,long offset,void * src);




/*FOR THE STACK*/


void insert_keys_into_stack_mem(unsigned char * stack_mem);
long insert_data_into_stack_mem(long data_size,unsigned char * data, unsigned char * stack_mem_where_to_insert);
void get_secure_stack_data(void * res,long data_size, unsigned char * data_start, int isarray, long arrayindex);
void set_secure_stack_data(void * source,long data_size, unsigned char * data_start, int isarray, long arrayindex);

char get_stack_char( void * start_of_secure_data);
int get_stack_int( void * start_of_secure_data);
long int get_stack_long_int( void * start_of_secure_data);
void * get_stack_pointer(void * start_of_secure_data);
float get_stack_float( void * start_of_secure_data);
double get_stack_double( void * start_of_secure_data);
void get_stack_array_element(long data_size, void * start_of_array, long index, void * res);
char get_stack_char_array_element(void * start_of_array, long index);
int get_stack_int_array_element(void * start_of_array, long index);
long int get_stack_long_int_array_element(void * start_of_array, long index);
void * get_stack_pointer_array_element(void * start_of_array, long index);
float get_stack_float_array_element(void * start_of_array, long index);
double get_stack_double_array_element(void * start_of_array, long index);
void get_arbitrary_block_in_stack(long data_size,void * start_of_block,void * res);
void get_arbitrary_block_in_stack_with_offset(long data_size,void * start,long offset,void * res);

void set_stack_char( void * start_of_secure_data,char source);
void set_stack_int( void * start_of_secure_data,int source);
void set_stack_long_int( void * start_of_secure_data,long int source);
void set_stack_pointer( void * start_of_secure_data,void * source);
void set_stack_float( void * start_of_secure_data,float source);
void set_stack_double( void * start_of_secure_data,double source);
void set_stack_array_element(long data_size, void * start_of_array, long index, void * source);
void set_stack_char_array_element(void * start_of_array, long index, char source);
void set_stack_int_array_element(void * start_of_array, long index, int source);
void set_stack_long_int_array_element(void * start_of_array, long index, long int source);
void set_stack_pointer_array_element(void * start_of_array, long index, void * source);
void set_stack_float_array_element(void * start_of_array, long index, float source);
void set_stack_double_array_element(void * start_of_array, long index, double source);
void set_arbitrary_block_in_stack(long data_size,void * start_of_block,void * src);
void set_arbitrary_block_in_stack_with_offset(long data_size,void * start,long offset,void * src);




/*definitions for user friendliness*/
#define STACK_CHAR_PARAMS(param_var) ((param_var)->elem_params->char_params)
#define STACK_INT_PARAMS(param_var) ((param_var)->elem_params->int_params)
#define STACK_LONG_PARAMS(param_var) ((param_var)->elem_params->long_int_params)
#define STACK_FLOAT_PARAMS(param_var) ((param_var)->elem_params->float_params)
#define STACK_DOUBLE_PARAMS(param_var) ((param_var)->elem_params->double_params)
#define STACK_PTR_PARAMS(param_var) ((param_var)->elem_params->pointer_params)
#define STACK_ARB_PTR_PARAMS(param_var) ((param_var)->elem_params->arb_pointer_params)

#define GET_STACK_CHAR(param_var,index) get_stack_char_array_element(STACK_CHAR_PARAMS(param_var),(index))
#define GET_STACK_INT(param_var,index) get_stack_int_array_element(STACK_INT_PARAMS(param_var),(index))
#define GET_STACK_LONG(param_var,index) get_stack_long_int_array_element(STACK_LONG_PARAMS(param_var),(index))
#define GET_STACK_FLOAT(param_var,index) get_stack_float_array_element(STACK_FLOAT_PARAMS(param_var),(index))
#define GET_STACK_DOUBLE(param_var,index) get_stack_double_array_element(STACK_DOUBLE_PARAMS(param_var),(index))
#define GET_STACK_PTR(param_var,index) get_stack_pointer_array_element(STACK_PTR_PARAMS(param_var),(index))

#define SET_STACK_CHAR(param_var,index,value) set_stack_char_array_element(STACK_CHAR_PARAMS(param_var),(index),(value))
#define SET_STACK_INT(param_var,index,value) set_stack_int_array_element(STACK_INT_PARAMS(param_var),(index),(value))
#define SET_STACK_LONG(param_var,index,value) set_stack_long_int_array_element(STACK_LONG_PARAMS(param_var),(index),(value))
#define SET_STACK_FLOAT(param_var,index,value) set_stack_float_array_element(STACK_FLOAT_PARAMS(param_var),(index),(value))
#define SET_STACK_DOUBLE(param_var,index,value) set_stack_double_array_element(STACK_DOUBLE_PARAMS(param_var),(index),(value))
#define SET_STACK_PTR(param_var,index,value) set_stack_pointer_array_element(STACK_PTR_PARAMS(param_var),(index),(value))

#define FUNCTION_FOOTER_FOR_STACK(param_var) { \
												free_chunks_from_secure_stack((param_var)->total_amount_of_chunks_needed_in_secure_stack); \
												free_fun_params_that_point_to_stack((param_var)); \
											 }



#endif
