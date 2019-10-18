/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   abstract.hpp                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nrechati <nrechati@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/18 14:14:08 by nrechati          #+#    #+#             */
/*   Updated: 2019/10/18 14:34:21 by nrechati         ###   ########.fr       */
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

		void	print(void) const;

		virtual void function() const = 0;

	private:
};

#endif
