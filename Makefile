# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: mpaci <marvin@42.fr>                       +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2021/02/01 15:13:32 by mpaci             #+#    #+#              #
#    Updated: 2021/02/01 15:13:38 by mpaci            ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME		= libft.a 

CC			= gcc

CFLAGS		= -Wall -Werror -Wextra

LIB			= ar -rc

RAN			= ranlib

SRCS		= ft_memset.c \
				ft_bzero.c \
				ft_memcpy.c \
				ft_memccpy.c \
				ft_memmove.c \
				ft_memchr.c \
				ft_memcmp.c \
				ft_strlen.c \
				ft_strlcpy.c \
				ft_strlcat.c \
				ft_strchr.c \
				ft_strrchr.c \
				ft_strnstr.c \
				ft_strncmp.c \
				ft_atoi.c \
				ft_isalpha.c \
				ft_isdigit.c \
				ft_isalnum.c \
				ft_isascii.c \
				ft_isprint.c \
				ft_toupper.c \
				ft_tolower.c \
				ft_calloc.c \
				ft_strdup.c \
				ft_substr.c \
				ft_strjoin.c \
				ft_strtrim.c \
				ft_split.c \
				ft_itoa.c \
				ft_strmapi.c \
				ft_putchar_fd.c \
				ft_putstr_fd.c \
				ft_putendl_fd.c \
				ft_putnbr_fd.c \

SRCS_BONUS	= ft_lstnew.c \
				ft_lstadd_front.c \
				ft_lstsize.c \
				ft_lstlast.c \
				ft_lstadd_back.c \
				ft_lstdelone.c \
				ft_lstclear.c \
				ft_lstiter.c \
				ft_lstmap.c \

OBJS		= ${SRCS:.c=.o}

OBJS_BONUS	= ${SRCS_BONUS:.c=.o}

RM			= rm -f

.c.o:
	${CC} ${CFLAGS} -c $< -o ${<:.c=.o}

$(NAME): ${OBJS}
		${LIB} ${NAME} ${OBJS}
		${RAN} ${NAME}

all:	${NAME}

bonus: ${OBJS_BONUS} ${NAME}
		${LIB} ${NAME} ${OBJS_BONUS}
		${RAN} ${NAME}

clean:
		${RM} ${OBJS} ${OBJS_BONUS}

fclean:	clean
		${RM} ${NAME}

re:	fclean all

.PHONY:	all bonus clean fclean re