#include <stdlib.h>
#include <stdio.h>
#include <unistd.h>
#include <fcntl.h>

#define CONTENT "#include <stdlib.h>%1$c#include <stdio.h>%1$c#include <unistd.h>%1$c#include <fcntl.h>%1$c%1$c#define CONTENT %3$c%5$s%3$c%1$c%1$cchar buff[100];%1$c%1$cint main(void) {%1$c%2$cint i = %4$d;%1$c%2$cif (i <= 0) return (0);%1$c%2$cif (sprintf(buff, %3$cSully_%%d.c%3$c, --i) == -1) return (1);%1$c%2$cint fd = open(buff, O_CREAT | O_WRONLY | O_TRUNC, 0644);%1$c%2$cif (fd == -1) return (1);%1$c%2$cif (dprintf(fd, CONTENT, 10, 9, 34, i, CONTENT) < 0) return (1);%1$c%2$cif (sprintf(buff, %3$ccc -Wall -Werror -Wextra Sully_%%1$d.c -o Sully_%%1$d%3$c, i) == -1) return (1);%1$c%2$cif (system(buff) == -1) return (1);%1$c%2$cif (sprintf(buff, %3$c./Sully_%%d%3$c, i) == -1) return (1);%1$c%2$cif (system(buff) == -1) return (1);%1$c}%1$c"

char buff[100];

int main(void) {
	int i = 5;
	if (i <= 0) return (0);
	if (sprintf(buff, "Sully_%d.c", --i) == -1) return (1);
	int fd = open(buff, O_CREAT | O_WRONLY | O_TRUNC, 0644);
	if (fd == -1) return (1);
	if (dprintf(fd, CONTENT, 10, 9, 34, i, CONTENT) < 0) return (1);
	if (sprintf(buff, "cc -Wall -Werror -Wextra Sully_%1$d.c -o Sully_%1$d", i) == -1) return (1);
	if (system(buff) == -1) return (1);
	if (sprintf(buff, "./Sully_%d", i) == -1) return (1);
	if (system(buff) == -1) return (1);
}
