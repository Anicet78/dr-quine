COLLEEN	= Colleen
GRACE	= Grace
SULLY	= Sully

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN):
	go build colleen/Colleen.go

$(GRACE):
	go build grace/Grace.go

$(SULLY):
	go build sully/Sully.go

clean:
	rm -rf Grace_kid.go Sully_0.go Sully_1.go Sully_2.go Sully_3.go Sully_4.go Sully_0 Sully_1 Sully_2 Sully_3 Sully_4

fclean: clean
	rm -rf $(COLLEEN) $(GRACE) $(SULLY)

re: fclean all

.PHONY: all clean fclean re
