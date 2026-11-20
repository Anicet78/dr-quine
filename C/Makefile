CC			= cc
CFLAGS		= -Wall -Wextra -Werror

COLLEEN	= Colleen
GRACE	= Grace
SULLY	= Sully

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN):
	$(CC) $(CFLAGS) colleen/Colleen.c -o $@

$(GRACE):
	$(CC) $(CFLAGS) grace/Grace.c -o $@

$(SULLY):
	$(CC) $(CFLAGS) sully/Sully.c -o $@

clean:
	rm -rf Grace_kid.c Sully_0.c Sully_1.c Sully_2.c Sully_3.c Sully_4.c Sully_0 Sully_1 Sully_2 Sully_3 Sully_4

fclean: clean
	rm -rf $(COLLEEN) $(GRACE) $(SULLY)

re: fclean all

.PHONY: all clean fclean re
