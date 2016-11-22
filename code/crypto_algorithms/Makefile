FLAGS= -O3

all: aes sha256


aes: aes.h aes.o aes_test.o
	gcc aes_test.o aes.o -o aes $(FLAGS)

aes.o: aes.h aes.c
	gcc -c aes.c $(FLAGS)

aes_test.o: aes.h aes_test.c
	gcc -c aes_test.c $(FLAGS)

sha256: sha256.h sha256.o sha256_test.o
	gcc sha256_test.o sha256.o -o sha256 $(FLAGS)

sha256_test.o: sha256.h sha256_test.c
	gcc -c sha256_test.c $(FLAGS)

sha256.o: sha256.h sha256.c
	gcc -c sha256.c -o sha256.o $(FLAGS)

clean:
	 rm -f *.o aes sha256
