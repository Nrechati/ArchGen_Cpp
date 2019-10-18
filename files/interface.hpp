/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   interface.hpp                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: nrechati <nrechati@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2019/10/18 14:14:15 by nrechati          #+#    #+#             */
/*   Updated: 2019/10/18 14:26:35 by nrechati         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef I_SAMPLE_H
# define I_SAMPLE_H
# include <iostream>

class I_Sample
{
	public:
		I_Sample(void);
		virtual ~I_Sample(void);

		virtual void function(void) const;

	private:
};

#endif
