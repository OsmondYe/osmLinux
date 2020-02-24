# this is make

hello.exe : hello.o mylib.o
	gcc hello.o mylib.o -o hello.exe

hello.o: hello.c
	gcc -c hello.c
mylib.o: mylib.c mylib.h
	gcc -c mylib.c

all: hello.exe

run: all
	./hello.exe


clean :
	rm hello.o mylib.o hello.exe
	

