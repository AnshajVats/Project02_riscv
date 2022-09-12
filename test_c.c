#include <string.h>
#include <stdlib.h>

char *test_c_return (int args, char ** argv, char * test){
	int i = 0;
	test = argv[1];
	while (test[i] != '\0') {
		test[i] -= 32;
		i++;
	}
	return test;
}

int test_c_max_return (int args, char ** argv) {
	int max = 0;

	for(int i = 0; i < args; i++) {
		int x = atoi(argv[i]);

		if(x > max) {
			max = x;
		}
	}

	return max;
}

int test_c_max_index_return(int args, char ** argv) {
		int max = 0;
		int index = 0;

	for(int i = 1; i < args; i++) {
		int x = atoi(argv[i]);

		if(x > max) {
			max = x;
			index = i;
		}
	}

	return index - 1;
}


