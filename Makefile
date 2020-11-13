
CC = gcc
CFLAGS = -g -Wall

all: mains maind #operate both of the programs
mymaths: libmyMath.a #operate the static library
mymathd: libmyMath.so#operate the dynamic library

#The main program - linking with static library
mains: main.o libmyMath.a
	$(CC) $(CFLAGS) -o mains main.o libmyMath.a

#The main program - linking with dynamic library
maind: main.o libmyMath.so
	$(CC) $(CFLAGS) -Wl,-rpath=. -L. main.o libmyMath.so -o maind

#Static library				
libmyMath.a: basicMath.o power.o
	ar -rcs libmyMath.a basicMath.o power.o		

#Dynamic library
libmyMath.so: basicMath.o power.o
	$(CC) -shared -o libmyMath.so basicMath.o power.o		

#compilation of main.c
main.o: main.c myMath.h
	$(CC) $(CFLAGS) -c main.c

#compilation of basicMath.c 
basicMath.o: basicMath.c myMath.h
	$(CC) $(CFLAGS) -c -fPIC basicMath.c

#compilation of power.c 
power.o: power.c myMath.h
	$(CC) $(CFLAGS) -c -fPIC power.c

#those are not real files
.PHONY: all clean mymaths mymathd 

clean:
	rm -f *.o lib* mains maind

