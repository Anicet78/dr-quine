NAME = Sully

all: $(NAME)

$(NAME):
	go build Sully.go

fclean:
	rm -rf $(NAME)
	rm -rf Sully_0.go Sully_1.go Sully_2.go Sully_3.go Sully_4.go Sully_0 Sully_1 Sully_2 Sully_3 Sully_4

re: fclean all

.PHONY: all fclean re
