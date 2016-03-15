CC=gcc
PG= #-pg 
FLAGS= -O0

ifeq ($(filter-out secure,$(MAKECMDGOALS)),static)
 FLAGS+=  -static
endif

#Call with simply typing "make" to produce first executable. Secure it with Java and the run "make secure" again for the second executable.
#Then you can add keyshares to the second executable.

#If you type "make static [secure]", static linking is activated


default: Helloworldadd.s Helloworldadd

secure: Helloworldadd_sec

all: Helloworldadd.s Helloworldadd Helloworldadd_sec


static: default
	

Helloworldadd.s: Helloworldadd.c memory_manager.c verification_procedure.c
	$(CC) $(FLAGS) Helloworldadd.c -S

Helloworldadd: Helloworldadd.s
	$(CC) $(FLAGS) Helloworldadd.s -c -o Helloworldadd.o 
	$(CC) $(FLAGS) Helloworldadd.s -o Helloworldadd 

Helloworldadd_sec: Helloworldadd_sec.s
	$(CC) $(FLAGS) Helloworldadd_sec.s -c -o Helloworldadd_sec.o
	$(CC) $(FLAGS) Helloworldadd_sec.s -o Helloworldadd_sec 

clean:
	rm -f Helloworldadd.s Helloworldadd Helloworldadd_sec.s Helloworldadd_sec Helloworldadd_ksec Helloworldadd_sec.o Helloworldadd.o *.NASM* *.YASM* *.run
