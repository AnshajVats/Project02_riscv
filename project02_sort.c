#include <stdio.h>
#include <stdlib.h>


int main (int args, char ** argv) {
	int array [64];
	int k = 0;
	for(int  i = 1; i < args; i++) {
		array[k] = atoi(argv[i]);
		k++;
	}
	return 0;
}
