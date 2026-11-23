NASM		= nasm
NASMFLAGS	= -f elf64 -g -F dwarf

GCC			= gcc
GCC_FLAG	= -no-pie

SRCS	= colleen/Colleen.s grace/Grace.s sully/Sully.s
OBJS	= $(SRCS:%.s=%.o)

COLLEEN	= Colleen
GRACE	= Grace
SULLY	= Sully

all: $(COLLEEN) $(GRACE) $(SULLY)

$(COLLEEN): colleen/Colleen.o
	$(GCC) $(GCC_FLAG) $< -o $@

$(GRACE): grace/Grace.o
	$(GCC) $(GCC_FLAG) $< -o $@

$(SULLY): sully/Sully.o
	$(GCC) $(GCC_FLAG) $< -o $@

%.o: %.s
	$(NASM) $(NASMFLAGS) $<

clean:
	rm -rf Grace_kid.s
	rm -rf Sully_0.s Sully_1.s Sully_2.s Sully_3.s Sully_4.s Sully_0 Sully_1 Sully_2 Sully_3 Sully_4
	rm -rf colleen/Colleen.o grace/Grace.o sully/Sully.o

fclean: clean
	rm -rf $(COLLEEN) $(GRACE) $(SULLY)

re: fclean all

.PHONY: all clean fclean re
