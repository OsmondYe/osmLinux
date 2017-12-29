#include <sys/stat.h>
#include <fcntl.h>

#include "tlpi_hdr.h"
#include "c4.h"


#ifndef BUF_SIZE
#define BUF_SIZE 1024
#endif // !BUF_SIZE



void callC4(int argc, char** argv) {
	// stdin, stdout, stderr
	// -error fputs(stdout, "this is a test");

	// basic 4  open read write close
	//	- defined in fcntl.h  , data struct see in  sys/stat.h
		
	int inputFD, outputFD, openFlags;
	mode_t filePerms;
	ssize_t numRead;
	char buf[BUFSIZ];

	if (argc != 3 || strcmp(argv[1], "--help") == 0) {
		usageErr("%s old-file new-file\n", argv[0]);
	}



	
	




	return;


}