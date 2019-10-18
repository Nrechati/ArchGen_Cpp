/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   class.cpp                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nrechati <nrechati@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/18 14:14:17 by nrechati          #+#    #+#             */
/*   Updated: 2019/10/18 14:54:16 by nrechati         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "class/Sample.hpp"

/*
** Constructor / Destructor
*/
Sample::Sample(void) {
	std::cout << "Default constructor called" << std::endl;
	return;
}

Sample::Sample(Sample const& src) {
	std::cout << "Copy constructor called" << std::endl;
	*this = src;
	return;
}

Sample::~Sample(void) {
	std::cout << "Default destructor called" << std::endl;
	return;
}

/*
** Overload operator
*/
Sample&		Sample::operator=(Sample const& rhs) {
	std::cout << "Assignation operator called" << std::endl;
	(void)rhs;/*Assignation code*/
	return *this;
}

/*
** Method and Member fucntion
*/
void		Sample::print(void) const {
	std::cout << "Print fct called" << std::endl;
	return;
}
