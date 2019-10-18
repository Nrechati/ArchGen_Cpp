# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    ArchGen_cpp.sh                                     :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nrechati <nrechati@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/10/18 15:43:12 by nrechati          #+#    #+#              #
#    Updated: 2019/10/18 17:57:02 by nrechati         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#!/bin/bash

#Colors
LRED='\033[1;31m'
LGREEN='\033[1;32m'
YELLOW='\033[1;33m'
LPURPLE='\033[1;35m'
LCYAN='\033[1;36m'
NC='\033[0m'

#Printing
ROBOT="c[○┬●]כ  "

printf "${LCYAN}\n${NC}"
printf "${LCYAN}    ╔═╗┬─┐┌─┐┬ ┬╔═╗┌─┐┌┐┌  ╔═╗╔═╗╔═╗     \n${NC}"
printf "${LCYAN}    ╠═╣├┬┘│  ├─┤║ ╦├┤ │││  ║  ╠═╝╠═╝     \n${NC}"
printf "${LCYAN}    ╩ ╩┴└─└─┘┴ ┴╚═╝└─┘┘└┘  ╚═╝╩  ╩       \n${NC}"
printf "${LCYAN}\n${NC}"
printf "${LGREEN}${ROBOT}[Start]:\t\t${YELLOW}Welcome to ArchGen for C++ setup\n${NC}"

#*********************************#
ARCH_PATH="$( cd "$(dirname "$0")" ; pwd -P )"
#*********************************#

mkdir ./includes ./includes/core ./includes/class ./srcs ./srcs/core ./srcs/class
cat $(echo "${ARCH_PATH}/srcs/Makefile_1") >> Makefile
cat $(echo "${ARCH_PATH}/srcs/main.cpp") >> ./srcs/core/main.cpp
while [ $# -ne 0 ]
do
	upper="$(echo "$1" | tr a-z A-Z)"
	if [ "${1:0:2}" != "I_" ]
	then
		printf "${LCYAN}${ROBOT}[new Class]:\t\t${LGREEN}Creating ${YELLOW}$1 ${LGREEN}Classe srcs (.hpp and .cpp)\n${NC}"
		touch "./srcs/class/$1.cpp" "./includes/class/$1.hpp"
		cat "$(echo "${ARCH_PATH}/srcs/class.cpp")" >> ./srcs/class/$1.cpp
		sed -i '' "s/Sample/$1/g" ./srcs/class/$1.cpp
		if [ "${1:0:2}" != "A_" ]
		then
			cat $(echo "${ARCH_PATH}/srcs/class.hpp") >> ./includes/class/$1.hpp
			sed -i '' "s/Sample/$1/g" ./includes/class/$1.hpp
			sed -i '' "s/SAMPLE_H/${upper}_H/g" ./includes/class/$1.hpp
		else
			cat $(echo "${ARCH_PATH}/srcs/abstract.hpp") >> ./includes/class/$1.hpp
			sed -i '' "s/Sample/$1/g" ./includes/class/$1.hpp
			sed -i '' "s/SAMPLE_H/${upper}_H/g" ./includes/class/$1.hpp
		fi
		echo "class_src += $1.cpp" >> Makefile
	else
		printf "${LPURPLE}${ROBOT}[new Interface]:\t${LGREEN}Creating ${YELLOW}$1 ${LGREEN}Interface srcs (.hpp and .cpp)\n${NC}"
		cat $(echo "${ARCH_PATH}/srcs/interface.hpp") >> ./includes/class/$1.hpp
		sed -i '' "s/Sample/$1/g" ./includes/class/$1.hpp
		sed -i '' "s/SAMPLE_H/${upper}_H/g" ./includes/class/$1.hpp
	fi
	touch "./includes/class/$1.hpp"

	#*********
	echo "#include \"class/$1.hpp\"" > $(echo "${ARCH_PATH}/srcs/tmp.cpp")
	#*********

	shift
done
printf "\n"
printf "${LRED}${ROBOT}[Makefile]:\t\tCreating project Makefile\n${NC}"
cat $(echo "${ARCH_PATH}/srcs/Makefile_2") >> Makefile

	#*********
printf "${LRED}${ROBOT}[Main.cpp]:\t\tCreating project placeholder main.cpp\n${NC}"
sed -i "" -e $'17 a\\\n'"$(cat $(echo "${ARCH_PATH}/srcs/tmp.cpp"))" ./srcs/core/main.cpp
rm $(echo "${ARCH_PATH}/srcs/tmp.cpp")
	#*********

printf "\n"
printf "${LCYAN}${ROBOT}[Binary name]: How you like to call your Binary ? $>  ${NC}"
read name
printf "\n"
if [ -n "$name" ]
	then
		sed -i '' "s/NAME = Binary/NAME = $name/" Makefile
		printf "${LCYAN}${ROBOT}[Binary]: You're binary is now : ${YELLOW}$name\n${NC}"
	else
		printf "${LCYAN}${ROBOT}[Binary]: You're binary is called : ${YELLOW}Binary\n${NC}"
	fi

