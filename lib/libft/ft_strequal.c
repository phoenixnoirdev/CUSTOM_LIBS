/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strequal.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: phkevin <phkevin@42luxembourg.lu>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/08/22 19:15:50 by phkevin           #+#    #+#             */
/*   Updated: 2024/08/22 19:32:49 by phkevin          ###   Luxembour.lu      */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

/**
 * @brief Compare deux chaînes de caractères pour vérifier leur égalité.
 *
 * Cette fonction utilise `strcmp` pour comparer deux chaînes de caractères. 
 * Elle retourne 0 si les chaînes sont égales et 1 si elles sont différentes.
 *
 * @param str1 La première chaîne de caractères à comparer.
 * @param str2 La seconde chaîne de caractères à comparer.
 * @return int Retourne 0 si les chaînes sont égales, 1 sinon.
 */
int	ft_strequal(const char *str1, const char *str2)
{
	if (ft_strcmp(str1, str2) == 0)
		return 0;
	return 1;
}
