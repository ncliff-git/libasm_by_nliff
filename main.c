/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ncliff <ncliff@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/03/19 20:34:14 by ncliff            #+#    #+#             */
/*   Updated: 2021/03/19 21:00:13 by ncliff           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include "libasm.h"
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <fcntl.h>

int main()
{
	char	str1[80];
	char	str2[80];
	char	test[80];
	int		fd;
	
	fd = open("./main.c", O_RDONLY);
	printf("ft_strlen:\t%d\nstrlen:\t\t%lu\n\n", ft_strlen("12345"), strlen("12345"));
	printf("ft_strcpy:\t%s\nstrcpy:\t\t%s\n\n", ft_strcpy(str1 ,"12345"), strcpy(str2, "12345"));
	printf("ft_strcmp:\t%d\n\n", ft_strcmp("12345" ,"123"));
	ft_write(1 ,"12345", 5);
	printf("\n");
	write(1 ,"12345", 5);
	printf("\n\n");
	printf("ft_strdup:\t%s\nstrdup:\t\t%s\n\n", ft_strdup("12345"), strdup("12345"));
	printf("ft_strdup:\t%d %s\nstrdup:\t\t%zd %s\n\n", ft_read(fd, &test, 10), test, read(fd, &test, 10), test);
	
}