NASM		= nasm
NASMFLAGS	= -f elf64 -g -F dwarf

GCC			= gcc

SRCS	= colleen/Colleen.s grace/Grace.s sully/Sully.s
OBJS	= $(SRCS:%.s=%.o)

COLLEEN	= Colleen
GRACE	= Grace
SULLY	= Sully

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN): colleen/Colleen.o
	$(GCC) $< -o $@

$(GRACE): grace/Grace.o
	$(GCC) $< -o $@

$(SULLY): sully/Sully.o
	$(GCC) $< -o $@

%.o: %.s
	$(NASM) $(NASMFLAGS) $<

clean:
	rm -rf colleen/Colleen.o
	rm -rf grace/Grace.o
	rm -rf sully/Sully.o

fclean: clean
	rm -rf $(COLLEEN) $(GRACE) $(SULLY)

re: fclean all

.PHONY: all clean fclean re
