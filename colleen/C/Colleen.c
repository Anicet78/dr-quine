#include <stdio.h>

char *function(void) {
	return ("#include <stdio.h>%1$c%1$cchar *function(void) {%1$c%2$creturn (%3$c%4$s%3$c);%1$c}%1$c%1$c/*%1$c%2$cComment outside of my program%1$c*/%1$cint main(void) {%1$c/*%1$c%2$cComment inside of my main function%1$c*/%1$c%2$cchar *func = function();%1$c%2$cprintf(func, 10, 9, 34, func);%1$c}%1$c");
}

/*
	Comment outside of my program
*/
int main(void) {
/*
	Comment inside of my main function
*/
	char *func = function();
	printf(func, 10, 9, 34, func);
}
