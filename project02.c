#include <stdio.h>
#include <stdlib.h>

char *test_c_return (int args, char ** argv);
char *upper_case_return(char *argv);
int main (int args, char ** argv) {
	char * s = argv[1];
	char *asm_return = upper_case_return(s);

	printf("asm: %s\n", asm_return);
	
	return 0;
}
