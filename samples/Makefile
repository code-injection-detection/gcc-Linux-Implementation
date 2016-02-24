CC=gcc
PG= #-pg
FLAGS= # -static

all: Helloworldadd.s Helloworldadd Helloworldadd_sec

Helloworldadd.s: Helloworldadd.c
	$(CC) $(PG) Helloworldadd.c -S 

Helloworldadd: Helloworldadd.s
	$(CC) $(FLAGS) Helloworldadd.s -o Helloworldadd 

Helloworldadd_sec: Helloworldadd_sec.s
	$(CC) $(FLAGS) Helloworldadd_sec.s -o Helloworldadd_sec 

clean:
	rm -f Helloworldadd.s Helloworldadd Helloworldadd_sec.s Helloworldadd_sec Helloworldadd_ksec
