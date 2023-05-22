SRCS	=	src/main.cpp

OBJS	=	${SRCS:%.cpp=%.o}

NB_SRCS	=	$(words $(SRCS))

CC		=	c++

CPPFLAGS	=	-Wall -Wextra -Werror -std=c++98 -I./include

LIB		=

NAME	=	webserv

#rules    -------------------------------------------------------------    rules

#standart rules

all:	${NAME}

%.o: %.cpp
	@$(CC) $(CPPFLAGS) -c $< -o $@
	@printf "\033[1mcompiling\033[0m: $<                                 \n"
	@printf $$'\033[2m'
	@printf '%*s' $(NB_SRCS) '' | tr ' ' '*' #print one star per file in SRCS
	@printf $$'\033[0;1;33m|\033[0m⌛\r\033[0;1m'
	@cat .loading_bar 2>/dev/null || printf "" > .loading_bar
	@printf '*\r'
	@printf "\033[0m\033[A\r"
	@printf '*' >> .loading_bar

${NAME}: ${OBJS}
	@echo "\033[0;1m"
	@printf '%*s' $(NB_SRCS) '' | tr ' ' '*' #print one star per file in SRCS
	@printf "\033[0m\033[C✅\n"
	@echo "\033[1;32mcompiled\033[0m"
	@echo "\033[1;34mlinking files:\033[0m"
	@${CC} ${CPPFLAGS} ${LIB} ${OBJS} -o ${NAME}
	@rm -f .loading_bar
	@echo "\033[1;32mcode compiled succesfully\033[0m ✅"

clean:
	@rm -rf ${OBJS} ${NAME}.dSYM ${BOBJS} test .loading_bar
	@echo "\033[1;31mobject files removed\033[0m"

fclean:		clean
	@rm -f ${NAME}
	@echo "\033[1;33m${NAME} file removed\033[0m"

re:		fclean all

#debug rules

sani:
	@${CC} ${CFLAGS} ${LIB} ${SRCS} -o ${NAME}-sanitize -g -fsanitize=address

.PHONY:		all clean fclean re debug sani bonus
