##
## EPITECH PROJECT, 2021
## minilibc
## File description:
## my makefile
##

SRC	=	$(shell find -name '*.asm')

CC =			ld

ASM =			nasm

NAME =			libasm.so

OBJ =			$(SRC:.asm=.o)

CFLAGS	=		-shared -fPIC
ASMFLAGS =		-f elf64

%.o: %.asm
			$(ASM) -o $@ $< $(ASMFLAGS) -I include

all:			$(NAME)

$(NAME):		$(OBJ)
			$(CC) $(CFLAGS) -o $(NAME) $(OBJ)

clean:
	rm -f $(OBJ)

fclean:	clean
	rm -f $(NAME)
	find -name "*~" -delete
	find -name "*#" -delete
	find -name "*.o" -delete

re:	fclean all

.PHONY: all clean fclean re
