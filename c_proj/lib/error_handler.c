#include "error_handler.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <errno.h>



static void low_level_output(int error_no, const char* fmt, va_list ap){
    char buf[0x1000];
    memset(buf,0,0x1000);
    int size;
    size =0;

    size =vsprintf(buf,fmt,ap);

    sprintf(buf+size,": %s\n", strerror(error_no));

    fputs(buf,stderr);
    fflush(stderr);
}


// print an error msg to stderr and return to caller
void err_msg(const char* fmt,...){
    va_list argList;
    int old_errno;

    old_errno = errno;  

    va_start(argList,fmt);
    low_level_output(old_errno,fmt,argList);
    va_end(argList);

    errno = old_errno;
}


// print an error msg to stderr and exit the process
void err_quit(const char* fmt, ...){
     va_list argList;
    int old_errno;

    old_errno = errno;  

    va_start(argList,fmt);
    low_level_output(old_errno,fmt,argList);
    va_end(argList);

    errno = old_errno;

    exit(EXIT_FAILURE);
}