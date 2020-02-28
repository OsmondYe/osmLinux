#ifndef ERROR_HANDLER
#define ERROR_HANDLER
#include <stdarg.h>

// print an error msg to stderr and return to caller
void err_msg(const char* fmt,...);

// print an error msg to stderr and exit the process
void err_quit(const char* fmt, ...);

/////////////////////////
#endif