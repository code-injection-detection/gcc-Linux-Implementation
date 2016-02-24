CC=gcc
PG= #-pg 
FLAGS= -O0

ifeq ($(MAKECMDGOALS),static)
 FLAGS+=  -static
endif

#Call with simply typing "make" to produce first executable. Secure it with Java and the run "make" again for the second executable.
#Then you can add keyshares to the second executable.

#If you type "make static", static linking is activated

all: Helloworldadd.s Helloworldadd Helloworldadd_sec


static: all
	

Helloworldadd.s: Helloworldadd.c
	$(CC) $(FLAGS) Helloworldadd.c -S

Helloworldadd: Helloworldadd.s
	$(CC) $(FLAGS) Helloworldadd.s -o Helloworldadd 

Helloworldadd_sec: Helloworldadd_sec.s
	$(CC) $(FLAGS) Helloworldadd_sec.s -o Helloworldadd_sec 

clean:
	rm -f Helloworldadd.s Helloworldadd Helloworldadd_sec.s Helloworldadd_sec Helloworldadd_ksec
