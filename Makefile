# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: tcoppin <tcoppin@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2015/05/10 13:39:53 by tcoppin           #+#    #+#              #
#    Updated: 2015/05/15 14:01:31 by tcoppin          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	= libfts.a

SRC		= 	ft_isalnum.s ft_isalpha.s ft_isdigit.s ft_isascii.s ft_isprint.s\
			ft_tolower.s ft_toupper.s ft_strlen.s ft_memset.s ft_bzero.s \
			ft_strcat.s ft_strdup.s ft_memcpy.s ft_puts.s ft_cat.s \
			ft_islower.s ft_isupper.s

NASM	= ~/.brew/Cellar/nasm/2.11.08/bin/nasm

SRCDIR	= ./srcs/

INCDIR	= ./includes/

CC_FLAG = -Wall -Werror -Wextra

MAIN	= main_test

FLAG	= -f macho64

SRCS	= $(addprefix $(SRCDIR), $(SRC))

OBJS	= $(SRCS:.s=.o)

.SILENT:

all: $(NAME)

$(NAME) : $(OBJS)
	echo "Compiling $(NAME)..."
	ar rc $(NAME) $(OBJS)
	ranlib $(NAME)
	echo "DONE"

%.o: %.s
	$(NASM) $(FLAG) $<

clean:
	rm -rf $(OBJS)
	echo "Object files has been removed!"

fclean: clean
	rm -rf $(NAME)
	rm -rf main_test
	echo "$(NAME) has been removed!"

re: fclean all

part1: all
	gcc $(CC_FLAG) -o $(MAIN) main.c -L./ -lfts -I./includes/
	echo "$(MAIN) has been created!"
	./$(MAIN) part1

part2: all
	gcc $(CC_FLAG) -o $(MAIN) main.c -L./ -lfts -I./includes/
	echo "$(MAIN) has been created!"
	./$(MAIN) part2

part3: all
	gcc $(CC_FLAG) -o $(MAIN) main.c -L./ -lfts -I./includes/
	echo "$(MAIN) has been created!"
	./$(MAIN) part3

bonus: all
	gcc $(CC_FLAG) -o $(MAIN) main.c -L./ -lfts -I./includes/
	echo "$(MAIN) has been created!"
	./$(MAIN) bonus

test: all
	gcc $(CC_FLAG) -o $(MAIN) main.c -L./ -lfts -I./includes/
	echo "$(MAIN) has been created!"
	./$(MAIN)