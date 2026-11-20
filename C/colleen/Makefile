CC			= cc
CFLAGS		= -Wall -Wextra -Werror

OBJ_DIR		= objs

SRC			= Colleen.c
OBJ			= $(patsubst %.c, $(OBJ_DIR)/%.o, $(SRC))

NAME		= Colleen

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

re: fclean all

.PHONY: all clean fclean re
