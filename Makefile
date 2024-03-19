# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sdemaude <sdemaude@student.42lehavre.fr>   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/10/19 10:24:05 by sdemaude          #+#    #+#              #
#    Updated: 2023/11/04 18:35:22 by sdemaude         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
OBJS = $(SRC:.c=.o)
CC = cc -Wall -Wextra -Werror

SRC = libftprintf.c\
      printform.c

%.o: %.c
	$(CC) -c $< -o $@

$(NAME) : $(OBJS)
	ar crs $(NAME) $(OBJS)

all : $(NAME)

clean :
	rm -f $(OBJS)

fclean : clean
	rm -f $(NAME)

re : fclean all
