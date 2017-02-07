
extern void init_crypto_stuctures(int print);
extern int main_program_function();
extern void clear_crypto_structures();

int main()
{
	init_crypto_stuctures(1);
	main_program_function();
	clear_crypto_structures();
	return 0;
}
