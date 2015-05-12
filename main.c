/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: tcoppin <tcoppin@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/05/10 13:43:36 by tcoppin           #+#    #+#             */
/*   Updated: 2015/05/12 16:55:57 by tcoppin          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libfts.h"

/* TEST FT_BZERO */
int		launch_bzero(char *str, int n)
{
	char	*s1;
	char	*s2;

	s1 = strdup(str);
	s2 = strdup(str);
	ft_bzero(s1, n);
	bzero(s2, n);
	if (memcmp(s1, s2, 10) == 0)
		return (1);
	else
		return (0);
}

void	test_bzero()
{
	int		nb;
	char	*tab[] = {"123456789", "", "123"};
	int		tab2[] = {3, 0, 4};

	printf("\n\033[33m------- Test FT_BZERO -------\033[00m\n");
	nb = 0;
	while (nb < 3)
	{
		printf("\033[94mTest number %d with \"%s\" and %d :\033[00m ", (nb + 1), tab[nb], tab2[nb]);
		if (launch_bzero(tab[nb], tab2[nb]) == 1)
			printf("\033[32mOK\033[00m\n");
		else
			printf("\033[31mERROR\033[00m\n");
		nb++;
	}
}

/* TEST FT_STRCAT */
int		launch_strcat(char *str, char *str2)
{
	char	*s1;
	char	*s2;
	char	*s3;
	char	*s4;

	s1 = strdup(str);
	s2 = strdup(str);
	s3 = strdup(str2);
	s4 = strdup(str2);
	ft_strcat(s1, s3);
	strcat(s2, s4);
	if (strcmp(s1, s2) == 0)
		return (1);
	else
		return (0);
}

void	test_strcat()
{
	int		nb;
	char	*tab[] = {"123456", "Bonj", "", "Bonjour", ""};
	char	*tab2[] = {"789", "our", "Salut", "", ""};

	printf("\n\033[33m------- Test FT_STRCAT -------\033[00m\n");
	nb = 0;
	while (nb < 5)
	{
		printf("\033[94mTest number %d with \"%s\" and \"%s\" :\033[00m ", (nb + 1), tab[nb], tab2[nb]);
		if (launch_strcat(tab[nb], tab2[nb]) == 1)
			printf("\033[32mOK\033[00m\n");
		else
			printf("\033[31mERROR\033[00m\n");
		nb++;
	}
}

/* TEST FT_ISALPHA */
int		launch_isalpha(int c)
{
	if (ft_isalpha(c) == isalpha(c))
		return (1);
	else
		return (0);
}

void	test_isalpha()
{
	int		nb;
	int		tab[] = {-1, 0, 32, 48, 65, 91, 97, 123, 129};

	printf("\n\033[33m------- Test FT_ISALPHA -------\033[00m\n");
	nb = 0;
	while (nb < 9)
	{
		if (tab[nb] < 0)
			printf("\033[94mTest number %d with < 0   :\033[00m ", (nb + 1));
		else if (tab[nb] > 127)
			printf("\033[94mTest number %d with >127  :\033[00m ", (nb + 1));			
		else if (tab[nb] == 0)
			printf("\033[94mTest number %d with NULL  :\033[00m ", (nb + 1));
		else
			printf("\033[94mTest number %d with '%c'   :\033[00m ", (nb + 1), tab[nb]);
		if (launch_isalpha(tab[nb]) == 1)
			printf("\033[32mOK\033[00m\n");
		else
			printf("\033[31mERROR\033[00m\n");
		nb++;
	}
}

/* TEST FT_ISDIGIT */
int		launch_isdigit(int c)
{
	if (ft_isdigit(c) == isdigit(c))
		return (1);
	else
		return (0);
}

void	test_isdigit()
{
	int		nb;
	int		tab[] = {-1, 0, 32, 51, 69, 94, 101, 124, 128};

	printf("\n\033[33m------- Test FT_ISDIGIT -------\033[00m\n");
	nb = 0;
	while (nb < 9)
	{
		if (tab[nb] < 0)
			printf("\033[94mTest number %d with < 0   :\033[00m ", (nb + 1));
		else if (tab[nb] > 127)
			printf("\033[94mTest number %d with >127  :\033[00m ", (nb + 1));			
		else if (tab[nb] == 0)
			printf("\033[94mTest number %d with NULL  :\033[00m ", (nb + 1));
		else
			printf("\033[94mTest number %d with '%c'   :\033[00m ", (nb + 1), tab[nb]);
		if (launch_isdigit(tab[nb]) == 1)
			printf("\033[32mOK\033[00m\n");
		else
			printf("\033[31mERROR\033[00m\n");
		nb++;
	}
}

/* TEST FT_ISALNUM */
int		launch_isalnum(int c)
{
	if (ft_isalnum(c) == isalnum(c))
		return (1);
	else
		return (0);
}

void	test_isalnum()
{
	int		nb;
	int		tab[] = {-1, 0, 32, 51, 69, 94, 101, 124, 128};

	printf("\n\033[33m------- Test FT_ISALNUM -------\033[00m\n");
	nb = 0;
	while (nb < 9)
	{
		if (tab[nb] < 0)
			printf("\033[94mTest number %d with < 0   :\033[00m ", (nb + 1));
		else if (tab[nb] > 127)
			printf("\033[94mTest number %d with >127  :\033[00m ", (nb + 1));			
		else if (tab[nb] == 0)
			printf("\033[94mTest number %d with NULL  :\033[00m ", (nb + 1));
		else
			printf("\033[94mTest number %d with '%c'   :\033[00m ", (nb + 1), tab[nb]);
		if (launch_isalnum(tab[nb]) == 1)
			printf("\033[32mOK\033[00m\n");
		else
			printf("\033[31mERROR\033[00m\n");
		nb++;
	}
}

/* TEST FT_ISASCII */
int		launch_isascii(int c)
{
	if (ft_isascii(c) == isascii(c))
		return (1);
	else
		return (0);
}

void	test_isascii()
{
	int		nb;
	int		tab[] = {-1, 0, 32, 51, 69, 94, 101, 124, 128};

	printf("\n\033[33m------- Test FT_ISASCII -------\033[00m\n");
	nb = 0;
	while (nb < 9)
	{
		if (tab[nb] < 0)
			printf("\033[94mTest number %d with < 0   :\033[00m ", (nb + 1));
		else if (tab[nb] > 127)
			printf("\033[94mTest number %d with >127  :\033[00m ", (nb + 1));			
		else if (tab[nb] == 0)
			printf("\033[94mTest number %d with NULL  :\033[00m ", (nb + 1));
		else
			printf("\033[94mTest number %d with '%c'   :\033[00m ", (nb + 1), tab[nb]);
		if (launch_isascii(tab[nb]) == 1)
			printf("\033[32mOK\033[00m\n");
		else
			printf("\033[31mERROR\033[00m\n");
		nb++;
	}
}

/* TEST FT_ISPRINT */
int		launch_isprint(int c)
{
	if (ft_isprint(c) == isprint(c))
		return (1);
	else
		return (0);
}

void	test_isprint()
{
	int		nb;
	int		tab[] = {-1, 0, 32, 51, 69, 94, 101, 124, 128};

	printf("\n\033[33m------- Test FT_ISPRINT -------\033[00m\n");
	nb = 0;
	while (nb < 9)
	{
		if (tab[nb] < 0)
			printf("\033[94mTest number %d with < 0   :\033[00m ", (nb + 1));
		else if (tab[nb] > 127)
			printf("\033[94mTest number %d with >127  :\033[00m ", (nb + 1));			
		else if (tab[nb] == 0)
			printf("\033[94mTest number %d with NULL  :\033[00m ", (nb + 1));
		else
			printf("\033[94mTest number %d with '%c'   :\033[00m ", (nb + 1), tab[nb]);
		if (launch_isprint(tab[nb]) == 1)
			printf("\033[32mOK\033[00m\n");
		else
			printf("\033[31mERROR\033[00m\n");
		nb++;
	}
}

/* TEST FT_TOLOWER */
int		launch_tolower(int c)
{
	if (ft_tolower(c) == tolower(c))
		return (1);
	else
		return (0);
}

void	test_tolower()
{
	int		nb;
	int		tab[] = {-1, 0, 32, 51, 69, 94, 101, 124, 128};

	printf("\n\033[33m------- Test FT_TOLOWER -------\033[00m\n");
	nb = 0;
	while (nb < 9)
	{
		if (tab[nb] < 0)
			printf("\033[94mTest number %d with < 0   :\033[00m ", (nb + 1));
		else if (tab[nb] > 127)
			printf("\033[94mTest number %d with >127  :\033[00m ", (nb + 1));			
		else if (tab[nb] == 0)
			printf("\033[94mTest number %d with NULL  :\033[00m ", (nb + 1));
		else
			printf("\033[94mTest number %d with '%c'   :\033[00m ", (nb + 1), tab[nb]);
		if (launch_tolower(tab[nb]) == 1)
			printf("\033[32mOK\033[00m\n");
		else
			printf("\033[31mERROR\033[00m\n");
		nb++;
	}
}

/* TEST FT_TOUPPER */
int		launch_toupper(int c)
{
	if (ft_toupper(c) == toupper(c))
		return (1);
	else
		return (0);
}

void	test_toupper()
{
	int		nb;
	int		tab[] = {-1, 0, 32, 51, 69, 94, 101, 124, 128};

	printf("\n\033[33m------- Test FT_TOUPPER -------\033[00m\n");
	nb = 0;
	while (nb < 9)
	{
		if (tab[nb] < 0)
			printf("\033[94mTest number %d with < 0   :\033[00m ", (nb + 1));
		else if (tab[nb] > 127)
			printf("\033[94mTest number %d with >127  :\033[00m ", (nb + 1));			
		else if (tab[nb] == 0)
			printf("\033[94mTest number %d with NULL  :\033[00m ", (nb + 1));
		else
			printf("\033[94mTest number %d with '%c'   :\033[00m ", (nb + 1), tab[nb]);
		if (launch_toupper(tab[nb]) == 1)
			printf("\033[32mOK\033[00m\n");
		else
			printf("\033[31mERROR\033[00m\n");
		nb++;
	}
}

/* TEST FT_PUTS */
void	launch_puts(char *str)
{
	write(1, "\033[92mft_puts : \033[37m", 15);
	ft_puts(str);
	write(1, "\033[91mputs : \033[37m", 12);
	puts(str);
}

void	test_puts()
{
	int		nb;
	char	*tab[] = {"Hello World !", "Coucou", NULL, "123456789"};

	printf("\n\033[33m------- Test FT_PUTS -------\033[00m\n");
	nb = 0;
	while (nb < 4)
	{
		printf("\033[94mTest number %d with \"%s\" :\033[00m\n", (nb + 1), tab[nb]);
		launch_puts(tab[nb]);
		nb++;
	}
}

int		main(void)
{
	test_bzero();
	test_strcat();
	test_isalpha();
	test_isdigit();
	test_isalnum();
	test_isascii();
	test_isprint();
	test_tolower();
	test_toupper();
	test_puts();
	printf("\n");
	return (0);
}
