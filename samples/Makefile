CC=gcc
PG= #-pg 
FLAGS_to_assembly= -O0
FLAGS_to_object= -O0
FLAGS_to_secure_object = -O0
FLAGS_in_the_end= -lm -lpthread

ifeq ($(filter-out secure,$(MAKECMDGOALS)),static)
 FLAGS_to_assembly+=  -static
 FLAGS_to_object+=  -static
 FLAGS_to_secure_object+=  -static
endif

#Call with simply typing "make" to produce first executable. Secure it with Java and the run "make secure" again for the second executable.
#Then you can add keyshares to the second executable.

#If you type "make static [secure]", static linking is activated


default: Helloworldadd.s Helloworldadd

secure: Helloworldadd_sec

all: Helloworldadd.s Helloworldadd Helloworldadd_sec


static: default
	

Helloworldadd.s: Helloworldadd.c memory_manager.c verification_procedure.c memory_manager_test_suite.c stack_manager.c stack_manager_test_suite.c general_tests.c
	$(CC) $(FLAGS_to_assembly) Helloworldadd.c -S $(FLAGS_in_the_end)

Helloworldadd: Helloworldadd.s
	$(CC) $(FLAGS_to_object) Helloworldadd.s -c -o Helloworldadd.o $(FLAGS_in_the_end)
	$(CC) $(FLAGS_to_object) Helloworldadd.o -o Helloworldadd $(FLAGS_in_the_end)

Helloworldadd_sec: Helloworldadd_sec.s
	$(CC) $(FLAGS_to_secure_object) Helloworldadd_sec.s -c -o Helloworldadd_sec.o $(FLAGS_in_the_end)
	$(CC) $(FLAGS_to_secure_object) Helloworldadd_sec.o -o Helloworldadd_sec $(FLAGS_in_the_end)

clean:
	rm -f Helloworldadd.s Helloworldadd Helloworldadd_sec.s Helloworldadd_sec Helloworldadd_ksec Helloworldadd_sec.o Helloworldadd.o *.NASM* *.YASM* *.run 
	rm -f heap_keyshares stack_keyshares headers_needed.h verification_procedure.c stack_manager.c memory_manager.c general_tests.c
