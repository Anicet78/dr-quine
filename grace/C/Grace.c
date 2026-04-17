#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>

#define CONTENT "#include <stdlib.h>%1$c#include <stdio.h>%1$c#include <unistd.h>%1$c#include <fcntl.h>%1$c%1$c#define CONTENT %3$c%5$s%3$c%1$c#define FUNC() { %4$c%1$c%2$cint fd = open(%3$cGrace_kid.c%3$c, O_CREAT | O_WRONLY | O_TRUNC, 0644); %4$c%1$c%2$cif (fd == -1) return ; %4$c%1$c%2$cdup2(fd, STDOUT_FILENO); %4$c%1$c%2$cclose(fd); %4$c%1$c%2$cprintf(CONTENT, 10, 9, 34, 92, CONTENT); %4$c%1$c}%1$c#define MAIN() void _start() {FUNC(); exit(0);}%1$c%1$c/*%1$c%2$cThis is a comment%1$c*/%1$cMAIN();%1$c"
#define FUNC() { \
	int fd = open("Grace_kid.c", O_CREAT | O_WRONLY | O_TRUNC, 0644); \
	if (fd == -1) return ; \
	dup2(fd, STDOUT_FILENO); \
	close(fd); \
	printf(CONTENT, 10, 9, 34, 92, CONTENT); \
}
#define MAIN() void _start() {FUNC(); exit(0);}

/*
	This is a comment
*/
MAIN();
