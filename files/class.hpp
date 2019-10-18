/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   class.hpp                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nrechati <nrechati@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/18 14:13:58 by nrechati          #+#    #+#             */
/*   Updated: 2019/10/18 14:15:12 by nrechati         ###   ########.fr       */
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
		~Sample(void);

		Sample& operator=(Sample const& rhs);

		void	print(void) const;

	private:
};

#endif
