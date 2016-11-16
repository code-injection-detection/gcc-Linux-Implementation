
all: aes sha256


aes: aes.h aes.o aes_test.o
	gcc aes_test.o aes.o -o aes

aes.o: aes.h aes.c
	gcc -c aes.c

aes_test.o: aes.h aes_test.c
	gcc -c aes_test.c

sha256: sha256.h sha256.o sha256_test.o
	gcc sha256_test.o sha256.o -o sha256

sha256.o: sha256.h sha256.c
	gcc -c sha256.c

sha256_test.o: sha256.h sha256_test.c
	gcc -c sha256_test.c

clean: rm *.o aes sha256
