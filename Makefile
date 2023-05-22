# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: xrenoux <xrenoux@student.42.fr>            +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2023/02/02 16:35:18 by xrenoux           #+#    #+#              #
#    Updated: 2023/05/22 14:53:53 by xrenoux          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME	=	webserv

HEADERS	=	-I./include/


SRCS	= \
		  src/main.cpp

OBJS	=	${SRCS:.cpp=.o}

CC		=	c++
CFLAGS	=	-Wall -Wextra -Werror -std=c++98
RM		=	rm -f

all: ${NAME}


%.o: %.cpp
	${CC} ${CFLAGS} -c ${HEADERS} $< -o ${<:.cpp=.o}

${NAME} : ${OBJS}
	${CC} ${CFLAGS} ${OBJS} ${HEADERS} -o ${NAME}

clean:
		${RM} ${OBJS}

fclean: clean
		${RM} ${NAME}

re: fclean all

.PHONY: all, clean, fclean, re
