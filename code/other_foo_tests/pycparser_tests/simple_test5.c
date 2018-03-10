

int sum(int x, int y)
{
	int ret_sum;
	ret_sum=x+y;
	return ret_sum;
}

/*

Call point:
code that allocates space for our function frame in the secure stack,
sets the arguments (x,y) and the return address and gotos the function start



Function code:
code that sets base pointer and local variables (ret_sum) if they are initialized

SET_STACK_INT(ret_sum,GET_STACK_INT(x)+GET_STACK_INT(y));

code that goes to the return address,writes the return value and frees the stack frame

*/
