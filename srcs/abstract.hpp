/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   abstract.hpp                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nrechati <nrechati@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/18 14:14:08 by nrechati          #+#    #+#             */
/*   Updated: 2019/10/22 08:39:34 by nrechati         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef SAMPLE_H
# define SAMPLE_H
# include <iostream>

class Sample
{
	public:
		Sample(void);
		Sample(Sample const& src);
		virtual ~Sample(void);

		Sample& operator=(Sample const& rhs);

		virtual void function() const = 0;

	private:
};

std::ostream	&operator<< (std::ostream &out, const Sample &rhs);

#endif
