#include <stdio.h>
#include <stdlib.h>


void int_default (int * array, int args, char ** argv) {
	int k = 0;
	for(int  i = 1; i < args; i++) {
		array[k] = atoi(argv[i]);
		k++;
	}
}

void print_c (int args, int * argv) {
	printf("c:");
	for(int  i = 0; i < args - 1; i++) 
		printf("%d ", argv[i]);
	printf("\n");
}

void print_asm (int args, int * argv) {
	printf("asm:");
	for(int  i = 0; i < args - 1; i++) 
		printf("%d ", argv[i]);
	printf("\n");
}

int sort_array(int * array, int args);
void sort_c(int * array, int args);
int main(int args, char ** argv) {
	int array [64];
	

	int_default(array, args, argv);
	sort_c(array, args);
	print_c(args, array);

	int_default(array, args, argv);
	sort_array(array, args - 1);
	print_asm(args, array);
	
	return 0;
}
