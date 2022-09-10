#include <stdio.h>
#include <stdlib.h>

char *test_c_return (int args, char ** argv);
char *upper_case_return(char **argv);
int main (int args, char ** argv) {

	char *c_return = test_c_return(args, argv);
	char *asm_return = upper_case_return(argv);

	printf("c: %s\nasm: %s\n", c_return, asm_return);
	
	return 0;
}
