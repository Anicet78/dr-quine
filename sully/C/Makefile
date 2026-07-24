CC			= cc
CFLAGS		= -Wall -Wextra -Werror

OBJ_DIR		= objs

SRC			= Sully.c
OBJ			= $(patsubst %.c, $(OBJ_DIR)/%.o, $(SRC))

NAME		= Sully

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(CFLAGS) $(OBJ) -o $(NAME)

$(OBJ_DIR)/%.o: %.c
	@mkdir -p $(dir $@)
	$(CC) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(OBJ_DIR)

fclean: clean
	rm -rf $(NAME)
	rm -rf Sully_0.c Sully_1.c Sully_2.c Sully_3.c Sully_4.c Sully_0 Sully_1 Sully_2 Sully_3 Sully_4

re: fclean all

.PHONY: all clean fclean re
