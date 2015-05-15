/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tcoppin <tcoppin@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/05/10 13:38:19 by tcoppin           #+#    #+#             */
/*   Updated: 2015/05/15 11:27:00 by tcoppin          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTS_H
# define LIBFTS_H

# include <stdlib.h>
# include <ctype.h>
# include <stdio.h>
# include <unistd.h>
# include <string.h>
# include <fcntl.h>

/*
** PART1
*/
void	ft_bzero(void *s, size_t n);
char	*ft_strcat(char *s1, char *s2);
int		ft_isalpha(int c);
int		ft_isdigit(int c);
int		ft_isalnum(int c);
int		ft_isascii(int c);
int		ft_isprint(int c);
int		ft_tolower(int c);
int		ft_toupper(int c);
int		ft_puts(char *s);
/*
** PART2
*/
size_t	ft_strlen(char *str);
void	*ft_memset(void *s, int c, size_t n);
void	*ft_memcpy(void *dst, void *src, size_t n);
char	*ft_strdup(char *s1);
/*
** PART3
*/
void	ft_cat(int fd);
/*
** BONUS
*/
int		ft_islower(int c);
int		ft_isupper(int c);

#endif
