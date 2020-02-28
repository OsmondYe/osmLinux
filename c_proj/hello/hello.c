#include <stdio.h>
#include "oye_hdr.h"

int main(int argc, char** argv){
	printf("hello world\n");
	err_msg("error test one");
	err_msg("error test %s","hello world");
	return 0;
}