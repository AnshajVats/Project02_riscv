#include <stdio.h>
#include <stdlib.h>


void int_default (int * array, int args, char ** argv) {
	int k = 0;
	for(int  i = 1; i < args; i++) {
		array[k] = atoi(argv[i]);
		k++;
	}
}

int test_c_max_return (int args, char ** argv);
int max_return(int *arr, int len);
int main (int args, char ** argv) {
	int array[64];

	int c_return = test_c_max_return(args, argv);
	int_default(array, args, argv);
	int asm_return = max_return(array, args - 1);

	printf("c: %d\nasm: %d\n", c_return, asm_return);
	
	return 0;
}
