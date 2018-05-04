#ifndef SECURE_GETTERS_SETTERS_H
#define SECURE_GETTERS_SETTERS_H



int pointer_offset_from_start_of_block(unsigned long ptr);

/*FOR THE HEAP*/

void insert_keys_into_mem(unsigned char * mem);
long insert_data_into_mem(long data_size,unsigned char * data, unsigned char * mem_where_to_insert);
void get_secure_data(void * res,long data_size, unsigned char * data_start, int isarray, long arrayindex);
void* set_secure_data(void * source,long data_size, unsigned char * data_start, int isarray, long arrayindex);

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

char set_char( void * start_of_secure_data,char source);
int set_int( void * start_of_secure_data,int source);
long set_long_int( void * start_of_secure_data,long int source);
void* set_pointer( void * start_of_secure_data,void * source);
float set_float( void * start_of_secure_data,float source);
double set_double( void * start_of_secure_data,double source);
void * set_array_element(long data_size, void * start_of_array, long index, void * source);
char set_char_array_element(void * start_of_array, long index, char source);
int set_int_array_element(void * start_of_array, long index, int source);
long set_long_int_array_element(void * start_of_array, long index, long int source);
void* set_pointer_array_element(void * start_of_array, long index, void * source);
float set_float_array_element(void * start_of_array, long index, float source);
double set_double_array_element(void * start_of_array, long index, double source);
void * set_arbitrary_block_in_heap(long data_size,void * start_of_block,void * src);
void * set_arbitrary_block_in_heap_with_offset(long data_size,void * start,long offset,void * src);



long secure_bytes_to_move_forward_for_unsecure_byte_offset(long offset_from_chunk_start_in_secure_mem,long unsecure_byte_offset);
unsigned __int128 get_array_element_no_prealloc_up_to_128bits(long data_size, void * start_of_array, long index);

char get_char_from_arb_memory_position(void * start,long offset_bytes);
int get_int_from_arb_memory_position(void * start,long offset_bytes);
long int get_long_int_from_arb_memory_position(void * start,long offset_bytes);
void * get_pointer_from_arb_memory_position(void * start,long offset_bytes);
float get_float_from_arb_memory_position(void * start,long offset_bytes);
double get_double_from_arb_memory_position(void * start,long offset_bytes);
char get_char_from_arb_address_no_offset(void * address);
int get_int_from_arb_address_no_offset(void * address);
long int get_long_int_from_arb_address_no_offset(void * address);
void * get_pointer_from_arb_address_no_offset(void * address);
float get_float_from_arb_address_no_offset(void * address);
double get_double_from_arb_address_no_offset(void * address);

unsigned char* get_address_of_sheap_array_element(long data_size, void * start_of_array, long index);

char set_char_from_arb_memory_position(void * start,long offset_bytes, char source);
int set_int_from_arb_memory_position(void * start,long offset_bytes, int source);
long int set_long_int_from_arb_memory_position(void * start,long offset_bytes, long source);
void * set_pointer_from_arb_memory_position(void * start,long offset_bytes, void* source);
float set_float_from_arb_memory_position(void * start,long offset_bytes, float source);
double set_double_from_arb_memory_position(void * start,long offset_bytes, double source);
char set_char_from_arb_address_no_offset(void * address, char source);
int set_int_from_arb_address_no_offset(void * address, int source);
long int set_long_int_from_arb_address_no_offset(void * address, long source);
void * set_pointer_from_arb_address_no_offset(void * address, void* source);
float set_float_from_arb_address_no_offset(void * address, float source);
double set_double_from_arb_address_no_offset(void * address, double source);


/*FOR THE STACK*/

void insert_keys_into_stack_mem(unsigned char * stack_mem);
long insert_data_into_stack_mem(long data_size,unsigned char * data, unsigned char * stack_mem_where_to_insert);
void get_secure_stack_data(void * res,long data_size, unsigned char * data_start, int isarray, long arrayindex);
void* set_secure_stack_data(void * source,long data_size, unsigned char * data_start, int isarray, long arrayindex);

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

char set_stack_char( void * start_of_secure_data,char source);
int set_stack_int( void * start_of_secure_data,int source);
long set_stack_long_int( void * start_of_secure_data,long int source);
void* set_stack_pointer( void * start_of_secure_data,void * source);
float set_stack_float( void * start_of_secure_data,float source);
double set_stack_double( void * start_of_secure_data,double source);
void* set_stack_array_element(long data_size, void * start_of_array, long index, void * source);
char set_stack_char_array_element(void * start_of_array, long index, char source);
int set_stack_int_array_element(void * start_of_array, long index, int source);
long set_stack_long_int_array_element(void * start_of_array, long index, long int source);
void* set_stack_pointer_array_element(void * start_of_array, long index, void * source);
float set_stack_float_array_element(void * start_of_array, long index, float source);
double set_stack_double_array_element(void * start_of_array, long index, double source);
void* set_arbitrary_block_in_stack(long data_size,void * start_of_block,void * src);
void* set_arbitrary_block_in_stack_with_offset(long data_size,void * start,long offset,void * src);


unsigned __int128 get_stack_array_element_no_prealloc_up_to_128bits(long data_size, void * start_of_array, long index);
unsigned char* get_address_of_stack_array_element(long data_size, void * start_of_array, long index);

/*definitions for user friendliness*/
#define STACK_CHAR_PARAMS(param_var) ((param_var)->elem_params->char_params)
#define STACK_INT_PARAMS(param_var) ((param_var)->elem_params->int_params)
#define STACK_LONG_PARAMS(param_var) ((param_var)->elem_params->long_int_params)
#define STACK_FLOAT_PARAMS(param_var) ((param_var)->elem_params->float_params)
#define STACK_DOUBLE_PARAMS(param_var) ((param_var)->elem_params->double_params)
#define STACK_PTR_PARAMS(param_var) ((param_var)->elem_params->pointer_params)
#define STACK_ARB_PTR_PARAMS(param_var) ((param_var)->elem_params->arb_pointer_params)

#define GET_OLD_STACK_CHAR(param_var,index) get_stack_char_array_element(STACK_CHAR_PARAMS(param_var),(index))
#define GET_OLD_STACK_INT(param_var,index) get_stack_int_array_element(STACK_INT_PARAMS(param_var),(index))
#define GET_OLD_STACK_LONG(param_var,index) get_stack_long_int_array_element(STACK_LONG_PARAMS(param_var),(index))
#define GET_OLD_STACK_FLOAT(param_var,index) get_stack_float_array_element(STACK_FLOAT_PARAMS(param_var),(index))
#define GET_OLD_STACK_DOUBLE(param_var,index) get_stack_double_array_element(STACK_DOUBLE_PARAMS(param_var),(index))
#define GET_OLD_STACK_PTR(param_var,index) get_stack_pointer_array_element(STACK_PTR_PARAMS(param_var),(index))

#define SET_OLD_STACK_CHAR(param_var,index,value) set_stack_char_array_element(STACK_CHAR_PARAMS(param_var),(index),(value))
#define SET_OLD_STACK_INT(param_var,index,value) set_stack_int_array_element(STACK_INT_PARAMS(param_var),(index),(value))
#define SET_OLD_STACK_LONG(param_var,index,value) set_stack_long_int_array_element(STACK_LONG_PARAMS(param_var),(index),(value))
#define SET_OLD_STACK_FLOAT(param_var,index,value) set_stack_float_array_element(STACK_FLOAT_PARAMS(param_var),(index),(value))
#define SET_OLD_STACK_DOUBLE(param_var,index,value) set_stack_double_array_element(STACK_DOUBLE_PARAMS(param_var),(index),(value))
#define SET_OLD_STACK_PTR(param_var,index,value) set_stack_pointer_array_element(STACK_PTR_PARAMS(param_var),(index),(value))

#define FUNCTION_FOOTER_FOR_STACK(param_var) { \
												free_chunks_from_secure_stack((param_var)->total_amount_of_chunks_needed_in_secure_stack); \
												free_fun_params_that_point_to_stack((param_var)); \
											 }


#if insert_parameters_into_new_secure_stack_as_arrays == 0
	#define GET_STACK_CHAR(var) (get_stack_char((var)))
	#define GET_STACK_INT(var) (get_stack_int((var)))
	#define GET_STACK_LONG(var) (get_stack_long_int((var)))
	#define GET_STACK_FLOAT(var) (get_stack_float((var)))
	#define GET_STACK_DOUBLE(var) (get_stack_double((var)))
	#define GET_STACK_PTR(var) (get_stack_pointer((var)))
	
	#define SET_STACK_CHAR(var,src) (set_stack_char((var),src))
	#define SET_STACK_INT(var,src) (set_stack_int((var),src))
	#define SET_STACK_LONG(var,src) (set_stack_long_int((var),src))
	#define SET_STACK_FLOAT(var,src) (set_stack_float((var),src))
	#define SET_STACK_DOUBLE(var,src) (set_stack_double((var),src))
	#define SET_STACK_PTR(var,src) (set_stack_pointer((var),src))
#endif

#if insert_parameters_into_new_secure_stack_as_arrays == 1
	#define GET_STACK_CHAR(var) GET_STACK_CHAR_AUX(var)
	#define GET_STACK_INT(var) GET_STACK_INT_AUX(var)
	#define GET_STACK_LONG(var) GET_STACK_LONG_AUX(var)
	#define GET_STACK_FLOAT(var) GET_STACK_FLOAT_AUX(var)
	#define GET_STACK_DOUBLE(var) GET_STACK_DOUBLE_AUX(var)
	#define GET_STACK_PTR(var) GET_STACK_PTR_AUX(var)

	#define GET_STACK_CHAR_AUX(ptr,ind) (get_stack_char_array_element(ptr,ind))
	#define GET_STACK_INT_AUX(ptr,ind) (get_stack_int_array_element(ptr,ind))
	#define GET_STACK_LONG_AUX(ptr,ind) (get_stack_long_int_array_element(ptr,ind))
	#define GET_STACK_FLOAT_AUX(ptr,ind) (get_stack_float_array_element(ptr,ind))
	#define GET_STACK_DOUBLE_AUX(ptr,ind) (get_stack_double_array_element(ptr,ind))
	#define GET_STACK_PTR_AUX(ptr,ind) (get_stack_pointer_array_element(ptr,ind))
	
	#define SET_STACK_CHAR(var,src) SET_STACK_CHAR_AUX(var,src)
	#define SET_STACK_INT(var,src) SET_STACK_INT_AUX(var,src)
	#define SET_STACK_LONG(var,src) SET_STACK_LONG_AUX(var,src)
	#define SET_STACK_FLOAT(var,src) SET_STACK_FLOAT_AUX(var,src)
	#define SET_STACK_DOUBLE(var,src) SET_STACK_DOUBLE_AUX(var,src)
	#define SET_STACK_PTR(var,src) SET_STACK_PTR_AUX(var,src)

	#define SET_STACK_CHAR_AUX(ptr,ind,src) (set_stack_char_array_element(ptr,ind,src))
	#define SET_STACK_INT_AUX(ptr,ind,src) (set_stack_int_array_element(ptr,ind,src))
	#define SET_STACK_LONG_AUX(ptr,ind,src) (set_stack_long_int_array_element(ptr,ind,src))
	#define SET_STACK_FLOAT_AUX(ptr,ind,src) (set_stack_float_array_element(ptr,ind,src))
	#define SET_STACK_DOUBLE_AUX(ptr,ind,src) (set_stack_double_array_element(ptr,ind,src))
	#define SET_STACK_PTR_AUX(ptr,ind,src) (set_stack_pointer_array_element(ptr,ind,src))
#endif



/*FOR GLOBALS */

char get_global_char(char * global_var);
int get_global_int(int * global_var);
long int get_global_long_int(long * global_var);
float get_global_float(float * global_var);
double get_global_double(double * global_var);
void * get_global_ptr(void** global_var);

#define UPDATE_GLOBAL_VAR(global_var,new_value) ({ \
							global_var=(new_value); \
							if (!ignore_macs_even_if_there_are_mac_bytes) \
							{ \
							update_mac_when_setting_data((unsigned char *)&(global_var),number_of_global_useful_bytes+bytes_used_for_keyshares,number_of_global_useful_bytes,((unsigned char*) &(global_var))+(number_of_global_useful_bytes+bytes_used_for_keyshares)) ;\
                            } \
                            global_var; \
						})
						
//use this when in for loops
#define UPDATE_GLOBAL_VAR_FOR_LOOPS(global_var,new_value) global_var=(new_value), \
							(!ignore_macs_even_if_there_are_mac_bytes)?\
							update_mac_when_setting_data((unsigned char *)&(global_var),number_of_global_useful_bytes+bytes_used_for_keyshares,number_of_global_useful_bytes,((unsigned char*) &(global_var))+(number_of_global_useful_bytes+bytes_used_for_keyshares)):1,global_var


#define GET_GLOBAL_CHAR(global_var) get_global_char(&(global_var))
#define GET_GLOBAL_INT(global_var) get_global_int(&(global_var))
#define GET_GLOBAL_LONG(global_var) get_global_long_int(&(global_var))
#define GET_GLOBAL_FLOAT(global_var) get_global_float(&(global_var))
#define GET_GLOBAL_DOUBLE(global_var) get_global_double(&(global_var))
#define GET_GLOBAL_PTR(global_var) get_global_ptr((void**)(&(global_var)))



#endif
