NASM		= nasm
NASMFLAGS	= -f elf64 -g -F dwarf

GCC			= gcc

COLLEEN	= Colleen

all: $(COLLEEN)

$(COLLEEN):
	$(NASM) $(NASMFLAGS) colleen/Colleen.s
	$(GCC) colleen/Colleen.o -o $@

clean:

fclean: clean
	rm -rf $(COLLEEN)

re: fclean all

.PHONY: all clean fclean re
