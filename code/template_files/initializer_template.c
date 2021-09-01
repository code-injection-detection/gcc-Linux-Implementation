#include <sys/resource.h>
#include <stdio.h>

//here is the actual main(), that initializes the cryto structures
//(we can't verify on the fly while initializing) and then runs the program.

extern void init_crypto_stuctures(int print,int find_addr_of_first_code_block);
extern int main_program_function();
extern void clear_crypto_structures();
extern void init_stack_canary();

int main()
{
	//increase stack size
	const rlim_t kStackSize = 64 * 1024 * 1024;   // min stack size = 64 MB
    struct rlimit rl;
    int result;

    result = getrlimit(RLIMIT_STACK, &rl);
    if (result == 0)
    {
        if (rl.rlim_cur < kStackSize)
        {
            rl.rlim_cur = kStackSize;
            result = setrlimit(RLIMIT_STACK, &rl);
            if (result != 0)
            {
                fprintf(stderr, "setrlimit returned result = %d\n", result);
            }
        }
    }
	
	init_crypto_stuctures(1,1);
	init_stack_canary();
	main_program_function();
	clear_crypto_structures();
	return 0;
}
