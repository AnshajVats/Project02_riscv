#include <stdio.h>
#include <stdlib.h>



int test_c_max_index_return(int args, char ** argv);
int max_index_return(int one,int two, int three);
int main (int args, char ** argv) {

	int c_return = test_c_max_index_return(args, argv);

	int asm_return = max_index_return(atoi(argv[1]), atoi (argv[2]), atoi (argv[3]));

	printf("c: %d\nasm: %d\n", c_return, asm_return);
	
	return 0;
}
