NAME = libft.a

SRCC = ft_memset.c ft_bzero.c
SRCO = ft_memset.o ft_bzero.o
INC = ./

all: $(NAME)

$(NAME):
	gcc -Wall -Wextra -Werror -c -I $(INC) $(SRCC) 
	ar rc $(NAME) $(SRCO)   

clean:
	rm -f $(SRCO)

fclean: clean
	rm -f $(NAME)

re: fclean all
