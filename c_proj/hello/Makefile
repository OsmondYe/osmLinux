# this is make

PROGRAMME_NAME=hello.exe
C_FILE= hello.c mylib.c
HEADERS = mylib.h
OBJS= hello.o mylib.o
EXE=$(PROGRAMME_NAME)

#############
output : $(OBJS)
	gcc hello.o mylib.o -o $(EXE)

hello.o: hello.c
	gcc -c hello.c

mylib.o: mylib.c $(HEADERS)
	gcc -c mylib.c

all: output


run: all
	./hello.exe

# using .PHONY avoid clean is a file name
.PHONY : clean

clean :
	rm -f hello.o mylib.o hello.exe
	

