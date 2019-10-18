# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: nrechati <nrechati@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/09/05 16:33:44 by nrechati          #+#    #+#              #
#    Updated: 2019/10/18 15:50:11 by nrechati         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

#Pretty name [Calvin S]
	HEADER += "╔╦╗┌─┐┬┌─┌─┐┌─┐┬┬  ┌─┐\n"
	HEADER += "║║║├─┤├┴┐├┤ ├┤ ││  ├┤ \n"
	HEADER += "╩ ╩┴ ┴┴ ┴└─┘└  ┴┴─┘└─┘\n"

#Binary name
NAME = Binary

#Compilation
DB = 0
COMP_MODE = "Standard Compilation"
CXX = clang++
ifeq ($(DB),1)
    COMP_MODE = "Debug Compilation"
    CXXFLAGS = -g3 -Werror -Wall -Wextra -I $(INC_DIR)
else
	CXXFLAGS =  -Werror -Wall -Wextra -I $(INC_DIR)
endif

#Directories
INC_DIR = includes/
OBJ_DIR = obj/

#Directories tree
all_dir += $(CLASS_DIR)
all_dir += $(CORE_DIR)

#Sources
CLASS_DIR = class/
class_src += Class.cpp

CORE_DIR = core/
core_src += main.cpp

#Reference sources
src += $(addprefix $(CLASS_DIR), $(class_src:.cpp=.cpp))
src += $(addprefix $(CORE_DIR), $(core_src:.cpp=.cpp))

#Reference objs directories
OBJ_DIRS = $(addprefix $(OBJ_DIR), $(all_dir))

#Create objs paths
obj = $(addprefix obj/, $(src:.cpp=.o))

#Colors
NC = "\033[0m"
BLACK = "\033[0;30m"
RED = "\033[1;31m"
GREEN = "\033[1;32m"
YELLOW = "\033[1;33m"
BLUE = "\033[1;34m"
PURPLE = "\033[1;35m"
CYAN = "\033[1;36m"
WHITE = "\033[1;37m"

#Printing
ARROW = "▬▬ι═══════ﺤ"
ROBOT = "c[○┬●]כ  "
GENTLEMAN = "ಠ_ರೃ  "

#Rules
all: header $(NAME)

$(NAME): obj $(obj)
	@$(CXX) -o $@ $(obj)
	@echo $(CYAN)"\n"$(ROBOT)"[SUCCESS]      [↪ \"$(NAME)\" Binary created]"$(NC)

obj:
	@echo $(RED)"\n"$(ROBOT)"[MODE]         [↪ $(COMP_MODE)]"$(NC)
	@echo $(YELLOW)""$(ROBOT)"[CREATE]       [↪ object directories]\n"$(NC)
	@mkdir -p $(OBJ_DIRS)

obj/%.o: srcs/%.cpp
	@echo $(GREEN)$(ROBOT)"[COMPILING]\t[↪ $<]"$(NC)
	@$(CXX) $(CXXFLAGS) -o $@ -c $^

clean: header
	@rm -rf $(OBJ_DIR)
	@echo $(PURPLE)$(ROBOT)"[CLEAN]\t[↪ Objects deleted painfully]"$(NC)

fclean: clean
	@rm -rf $(NAME)
	@echo $(PURPLE)$(ROBOT)"[CLEAN]\t[↪ Binary deleted painfully]"$(NC)

re: header fclean $(NAME)

header:
	@echo $(GREEN) $(HEADER) $(NC)

.PHONY: all clean fclean re
