# this is make

PROGRAMME_NAME=hello.exe

C_FILE= hello.c

HEADERS = \
	"../lib/" 

LIBRARIES = \
	"../lib/"

OBJS= hello.o

EXE=$(PROGRAMME_NAME)

#############
link : $(OBJS)
	gcc -ggdb3 hello.o -o $(EXE)  -L $(LIBRARIES) -static -lerr

hello.o: hello.c
	gcc -I $(HEADERS) -c hello.c

all: output


run: link
	./hello.exe

debug: all
	gdb hello.exe 

# using .PHONY avoid clean is a file name
.PHONY : clean

clean :
	rm -f hello.o mylib.o hello.exe
	

