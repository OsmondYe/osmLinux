#!/bin/bash
set -x # echo on
# build hello.c
echo "gcc hello.c -o hello.exe will be split into:"

# source code for hello.c after preinterpretor end
gcc -v -E hello.c -o hello.cpp

# hello.o need to be link
gcc -v -x cpp-output -c hello.cpp -o hello.o

echo " .o: objective file, need to linked with system library"

#
gcc -Wall -v hello.o mylib.c -o hello.exe

echo -e 'result of the hello.exe:\n'
./hello.exe

