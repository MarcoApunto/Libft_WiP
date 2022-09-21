# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: marferre <marferre@student.42madrid.com    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/09/12 22:39:21 by marferre          #+#    #+#              #
#    Updated: 2022/09/21 22:24:06 by marferre         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS	= ft_isalpha.c ft_isdigit.c  ft_isalnum.c ft_isascii.c ft_isprint.c ft_toupper.c ft_tolower.c \
		ft_strchr.c ft_strrchr.c ft_strncmp.c ft_strlen.c ft_strlcpy.c ft_strlcat.c ft_strnstr.c ft_atoi.c \
		ft_bzero.c ft_memset.c ft_memcpy.c ft_memmove.c ft_memchr.c ft_memcmp.c ft_calloc.c ft_strdup.c \
		ft_substr.c ft_strjoin.c ft_strtrim.c ft_itoa.c ft_strmapi.c ft_striteri.c \
		ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \

OBJS	= ${SRCS:.c=.o}		

SRCSB	= ft_isalpha.c ft_isdigit.c  ft_isalnum.c ft_isascii.c ft_isprint.c ft_toupper.c ft_tolower.c \
		ft_strchr.c ft_strrchr.c ft_strncmp.c ft_strlen.c ft_strlcpy.c ft_strlcat.c ft_strnstr.c ft_atoi.c \
		ft_bzero.c ft_memset.c ft_memcpy.c ft_memmove.c ft_memchr.c ft_memcmp.c ft_calloc.c ft_strdup.c \
		ft_substr.c ft_strjoin.c ft_strtrim.c ft_itoa.c ft_strmapi.c ft_striteri.c \
		ft_putchar_fd.c ft_putstr_fd.c ft_putendl_fd.c ft_putnbr_fd.c \
		ft_lstnew_bonus.c ft_lstadd_front_bonus.c ft_lstsize_bonus.c ft_lstlast_bonus.c ft_lstclear_bonus.c \
		ft_lstadd_back_bonus.c ft_lstdelone_bonus.c ft_lstiter_bonus.c ft_lstmap_bonus.c

OBJSB	= ${SRCSB:.c=.o}
NAME	= libft.a
CC		= gcc
RM		= rm -f
CFLAGS	= -Wall -Wextra -Werror
AR		= ar -rcs
ARF		= ranlib

.c.o:
			${CC} ${CFLAGS} -c $< -o $@

${NAME}:	${OBJS}
			${AR} ${NAME} ${OBJS}
			${ARF} ${NAME}

bonus:		all ${OBJSB}
			@make OBJS="${OBJSB}"

all:		${NAME}

clean:
			${RM} ${OBJS} ${OBJSB}

fclean:		clean
			${RM} ${NAME}

re:			fclean all

rebonus:	fclean bonus

.PHONY:		all clean fclean re bonus rebonus