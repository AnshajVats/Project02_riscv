#include <string.h>
#include <stdlib.h>

char *test_c_return (int args, char ** argv){
	int i = 0;
	char *test = argv[1];
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

