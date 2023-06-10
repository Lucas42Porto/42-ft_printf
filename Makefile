# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: lumarque <lumarque@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/04/16 14:47:25 by lumarque          #+#    #+#              #
#    Updated: 2023/06/04 17:25:47 by lumarque         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
SRC = ft_printf.c ft_print_alpha.c ft_putnbase.c

OBJS = ${SRC:.c=.o}
CC = gcc
CFLAGS = -Wall -Wextra -Werror

%.c: %.o
	${CC} ${CFLAGS} -c -o $@ $<

$(NAME): ${OBJS}
		ar rcs ${NAME} ${OBJS}
		ranlib $(NAME)

all: ${NAME}

clean: 
		rm -f ${OBJS}

fclean: clean
	rm -f ${NAME}

re: fclean all

bonus: all

teste:
	${CC} ${CFLAGS} main.c -L . -lftprintf -I include && ./a.out

.PHONY: all clean fclean re bonus teste
