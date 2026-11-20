NASM		= nasm
NASMFLAGS	= -f elf64 -g -F dwarf

GCC			= gcc

COLLEEN	= Colleen
GRACE	= Grace

all: $(COLLEEN) $(GRACE)

$(COLLEEN):
	$(NASM) $(NASMFLAGS) colleen/Colleen.s
	$(GCC) colleen/Colleen.o -o $@

$(GRACE):
	$(NASM) $(NASMFLAGS) grace/Grace.s
	$(GCC) grace/Grace.o -o $@

clean:
	rm -rf colleen/Colleen.o
	rm -rf grace/Grace.o

fclean: clean
	rm -rf $(COLLEEN) $(GRACE)

re: fclean all

.PHONY: all clean fclean re
