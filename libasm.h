/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ncliff <ncliff@student.42.fr>              +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/03/18 19:29:08 by ncliff            #+#    #+#             */
/*   Updated: 2021/03/19 20:20:41 by ncliff           ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H

int     ft_strlen(const char *str);
char    *ft_strcpy(char * dst, const char * src);
int     ft_strcmp(const char *s1, const char *s2);
int     ft_write(int handle, void *buf, int count);
int     ft_read(int fd, void *buf, unsigned count);
char    *ft_strdup(const char *str);

#endif