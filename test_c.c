#include <string.h>
#include <stdlib.h>

void test_c_return (char *argv){
	int i = 0;
	
	while (argv[i] != '\0') {
		if (argv[i] < 97  || argv[i] > 122) {
			i++;
			continue;
		}
			argv[i] -= 32;
			i++;
	}
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


void sort_c(int * array, int args) {
	int temp = 0;

	for (int i = 0; i < args - 1; i++) {
		for(int  j = 0; j < args - 1; j++) {
			if(array[i] > array[j]) {
				temp = array[i];
				array[i] = array[j];
				array[j] = temp;	
			}
		}
	}	
}


