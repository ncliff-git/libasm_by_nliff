NAME	=	libasm.a

SRC		=	src/ft_strlen.s \
			src/ft_strcpy.s \
			src/ft_strcmp.s \
			src/ft_write.s \
			src/ft_read.s \
			src/ft_strdup.s

OBJ		=	$(patsubst src/%.s, obj/%.o, $(SRC))

HEADER	=	libasm.h

DIR_OBJ	=	obj

MKDIR	=	mkdir -p

all:		$(DIR_OBJ) $(NAME)

obj/%.o:	src/%.s $(HEADER)
	@nasm -fmacho64 -I $(HEADER) $< -o $@

$(NAME):	$(HEADER) $(OBJ) $(SRC)
	@ar rc $(NAME) $(OBJ)
	@ranlib $(NAME)
	@echo '$(cgreen)$(NAME) compile!$(cwhite)'

$(DIR_OBJ):
	@$(MKDIR) $@
	@echo '$(cgreen)$(DIR_OBJ) create!$(cwhite)'

clean:
	@rm -rf $(DIR_OBJ)
	@echo '$(ccred)$(DIR_OBJ) del$(cwhite)'

fclean: clean
	@rm -rf $(NAME)
	@echo '$(ccred)$(NAME) del$(cwhite)'

re: fclean all

cgreen	=	$(shell echo "\033[1;32m")
ccred	=	$(shell echo "\033[1;31m")
cwhite	=	$(shell echo "\033[0;0m")