//we need printf to print out our results
#include <stdio.h>

// do a forward declaration to say that "there exists an addThreeNumbers method"
extern int addThreeNumbers(int a, int b, int c);

// C entry point
int main() {
	int result = addThreeNumbers(12, 34, 56); //102
	printf("The result is %d\n", result);
	return 0;
}
