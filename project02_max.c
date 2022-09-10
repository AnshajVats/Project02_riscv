#include <stdio.h>
#include <stdlib.h>



int test_c_max_return (int args, char ** argv);
int max_return(int args, char **argv);
int main (int args, char ** argv) {

	int c_return = test_c_max_return(args, argv);
	int asm_return = max_return(args, argv);

	printf("c: %d\nasm: %d\n", c_return, asm_return);
	
	return 0;
}
