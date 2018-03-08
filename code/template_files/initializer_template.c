
//here is the actual main(), that initializes the cryto structures
//(we can't verify on the fly while initializing) and then runs the program.

extern void init_crypto_stuctures(int print,int find_addr_of_first_code_block);
extern int main_program_function();
extern void clear_crypto_structures();
extern void init_stack_canary();

int main()
{
	init_crypto_stuctures(1,1);
	init_stack_canary();
	main_program_function();
	clear_crypto_structures();
	return 0;
}
