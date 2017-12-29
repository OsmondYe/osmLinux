#ifndef OSM_COMMON_
#define OSM_COMMON_

#include <stdio.h>		/* for convenience */
#include <stdlib.h>		/* for convenience */
#include <stddef.h>		/* for offsetof */
#include <string.h>		/* for convenience */
#include <unistd.h>		/* for convenience */
#include <signal.h>		/* for SIG_ERR */
#include <errno.h>
#include <error.h>
#include <dirent.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <unistd.h>
#include <fcntl.h>
#include <pthread.h>

#ifndef MAXLINE
#define	MAXLINE	4096			/* max line length */
#endif // !MAXLINE

#ifndef BUF_SIZE
#define	BUF_SIZE 1024
#endif // !BUF_SIZE

void printids(const char* s);

void	err_exit(int, const char *, ...) __attribute__((noreturn));




#endif // !OSM_COMMON_

