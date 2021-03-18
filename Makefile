NAME = libasm.a

SRC = src/ft_strlen.s

OBJ	= $(patsubst src/%.s, obj/%.o, $(SRC))

DIR_OBJ = obj

MKDIR = mkdir -p

all: $(DIR_OBJ) $(NAME)

obj/%.o:	src/%.s
	nasm -fmacho64 -I libasm.h $< -o $@

$(NAME):	$(OBJ) $(SRC)
	ar rc $(NAME) $(OBJ)
	ranlib $(NAME)

$(DIR_OBJ):
	$(MKDIR) $@

clean:
	rm -rf $(DIR_OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all