# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: phkevin <phkevin@42luxembourg.lu>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/02/19 12:48:38 by phkevin           #+#    #+#              #
#    Updated: 2024/06/04 10:22:45 by phkevin          ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

################################################################################
#	Makefile variables
################################################################################

CC		=	clang
FLAGWS	=	-Wall -Wextra -Werror
AR		=	ar rcs
RM		=	/bin/rm -f

################################################################################
#	Compilation Libft
################################################################################

LIBFT_DIR	=	./libft

################################################################################
#	Compilation printf
################################################################################

PRINTF_DIR	=	./ftprintf

################################################################################
#	Lib
################################################################################

LIB		=	-L$(LIBFT_DIR) -lft \
			-L$(PRINTF_DIR) -lftprintf \
			
################################################################################
#	Colors
################################################################################

NO_COLOR = \033[0;39m
GREEN = \033[0;92m
YELLOW = \033[0;93m
BLUE = \033[0;94m
CYAN = \033[0;96m
RED = \033[0;31m

################################################################################
#	Rules
################################################################################

all:	$(LIBFT_DIR)/libft.a \
		$(PRINTF_DIR)/libftprintf.a
		@make --silent good
		@echo "$(RED)ALL LIB COMPILED$(NO_COLOR)"
		@make --silent separate_green

$(LIBFT_DIR)/libft.a:
	@make --silent separate_green
	@$(MAKE) -sC $(LIBFT_DIR)
	
$(PRINTF_DIR)/libftprintf.a:
	@$(MAKE) -sC $(PRINTF_DIR)

clean:
	@make --silent separate_red
	@$(RM) $(C_OBJS) $(S_OBJS)
	@echo "$(BLUE)lib files cleaned!$(NO_COLOR)"
	@echo ""

fclean: clean
	@$(MAKE) -sC $(LIBFT_DIR) fclean
	@$(MAKE) -sC $(PRINTF_DIR) fclean
	@echo "$(CYAN)all lib files cleaned!$(NO_COLOR)"
	@make --silent separate_red

re: fclean all
	@echo "$(GREEN)all lib RE compiled!$(NO_COLOR)"

.PHONY: all clean fclean re

################################################################################
#	Extra
################################################################################

separate_blue:
	@echo "$(BLUE)\n#####################################################################\n$(NO_COLOR)"

separate_red:
	@echo "$(RED)\n#####################################################################\n$(NO_COLOR)"

separate_green:
	@echo "$(GREEN)\n#####################################################################\n$(NO_COLOR)"

good:
	@echo ""
	@echo "     /)                     (\\"
	@echo "    '/                       \'"
	@echo "___' (____               ____) '___"
	@echo ".... ((___)             (___)) ...."
	@echo ".....((____)           (____))....."
	@echo ".....((___)             (___))....."
	@echo "--.__((__)               (__))__.--"
	@echo ""

goodanime:
	@clear
	@echo ""
	@echo ""
	@echo ""
	@echo "__________               __________"
	@echo ".... ((___)             (___)) ...."
	@echo ".....((____)           (____))....."
	@echo ".....((___)             (___))....."
	@echo "--.__((__)               (__))__.--"
	@sleep 0.5
	@clear
	@echo ""
	@echo ""
	@echo ""
	@echo "____/)____               ____(\____"
	@echo ".... ((___)             (___)) ...."
	@echo ".....((____)           (____))....."
	@echo ".....((___)             (___))....."
	@echo "--.__((__)               (__))__.--"
	@sleep 0.5
	@clear
	@echo ""
	@echo ""
	@echo "    /)                       (\\"
	@echo "___' (____               ____) '___"
	@echo ".... ((___)             (___)) ...."
	@echo ".....((____)           (____))....."
	@echo ".....((___)             (___))....."
	@echo "--.__((__)               (__))__.--"
	@sleep 0.5
	@clear
	@echo ""
	@echo "     /)                     (\\"
	@echo "    '/                       \'"
	@echo "___' (____               ____) '___"
	@echo ".... ((___)             (___)) ...."
	@echo ".....((____)           (____))....."
	@echo ".....((___)             (___))....."
	@echo "--.__((__)               (__))__.--"
	@echo ""

cafe:
	@echo ""
	@echo "             (         ) "
	@echo "	              )        ("
	@echo "               ___)...----)----....___"
	@echo '           .-""      )    (           ""-.'
	@echo "      .-''''|-._      (       )        _.-|"
	@echo '     /  .--.|   `""---...........---""`   |'
	@echo "    /  /    |                             |"
	@echo "    |  |    |                             |"
	@echo "     \  \   |                             |"
	@echo "      '\ '\ |                             |"
	@echo "        '\ '|                             |"
	@echo "        _/ /\                             /"
	@echo "       (__/  \                           /"
	@echo '    _..---""` \                         /`""---.._'
	@echo " .-'           \                       /          '-."
	@echo ":               '-.__             __.-'              :"
	@echo ':                  ) ""---...---"" (                :'
	@echo "\'._                '"--...___...--"'              _.'"
	@echo '   \""--..__                              __..--""/'
	@echo "     '._     """----.....______.....----"""         _.'"
	@echo '         ""--..,,_____            _____,,..--"""'''
	@echo ' 
	@echo ""

cafeanime:
	@clear
	@echo ""
	@echo "                   ("
	@echo "	                     )     ("
	@echo "               ___...(-------)-....___"
	@echo '           .-""       )    (          ""-.'
	@echo "      .-''''|-._             )         _.-|"
	@echo '     /  .--.|   `""---...........---""`   |'
	@echo "    /  /    |                             |"
	@echo "    |  |    |                             |"
	@echo "     \  \   |        COFFEE BREAK         |"
	@echo "      '\ '\ |                             |"
	@echo "        '\ '|                             |"
	@echo "        _/ /\                             /"
	@echo "       (__/  \                           /"
	@echo '    _..---""` \                         /`""---.._'
	@echo " .-'           \                       /          '-."
	@echo ":               '-.__             __.-'              :"
	@echo ':                  ) ""---...---"" (                :'
	@echo "\'._                '"--...___...--"'              _.'"
	@echo '   \""--..__                              __..--""/'
	@echo "     '._     """----.....______.....----"""         _.'"
	@echo '         ""--..,,_____            _____,,..--"""'''
	@echo '                      """------"""'
	@sleep 0.5
	@clear
	@echo ""
	@echo "                 ("
	@echo "	                  )      ("
	@echo "               ___..(.------)--....___"
	@echo '           .-""       )   (           ""-.'
	@echo "      .-''''|-._      (       )        _.-|"
	@echo '     /  .--.|   `""---...........---""`   |'
	@echo "    /  /    |                             |"
	@echo "    |  |    |                             |"
	@echo "     \  \   |                             |"
	@echo "      '\ '\ |                             |"
	@echo "        '\ '|                             |"
	@echo "        _/ /\                             /"
	@echo "       (__/  \                           /"
	@echo '    _..---""` \                         /`""---.._'
	@echo " .-'           \                       /          '-."
	@echo ":               '-.__             __.-'              :"
	@echo ':                  ) ""---...---"" (                :'
	@echo "\'._                '"--...___...--"'              _.'"
	@echo '   \""--..__                              __..--""/'
	@echo "     '._     """----.....______.....----"""         _.'"
	@echo '         ""--..,,_____            _____,,..--"""'''
	@echo '                      """------"""'
	@sleep 0.5
	@clear
	@echo ""
	@echo "               ("
	@echo "	                  )     ("
	@echo "               ___..(.------)--....___"
	@echo '           .-""      )    (           ""-.'
	@echo "      .-''''|-._      (       )        _.-|"
	@echo '     /  .--.|   `""---...........---""`   |'
	@echo "    /  /    |                             |"
	@echo "    |  |    |                             |"
	@echo "     \  \   |        COFFEE BREAK         |"
	@echo "      '\ '\ |                             |"
	@echo "        '\ '|                             |"
	@echo "        _/ /\                             /"
	@echo "       (__/  \                           /"
	@echo '    _..---""` \                         /`""---.._'
	@echo " .-'           \                       /          '-."
	@echo ":               '-.__             __.-'              :"
	@echo ':                  ) ""---...---"" (                :'
	@echo "\'._                '"--...___...--"'              _.'"
	@echo '   \""--..__                              __..--""/'
	@echo "     '._     """----.....______.....----"""         _.'"
	@echo '         ""--..,,_____            _____,,..--"""'''
	@echo '                      """------"""'
	@sleep 0.5
	@clear
	@echo ""
	@echo "             (         ) "
	@echo "	              )        ("
	@echo "               ___)...----)----....___"
	@echo '           .-""      )    (           ""-.'
	@echo "      .-''''|-._      (       )        _.-|"
	@echo '     /  .--.|   `""---...........---""`   |'
	@echo "    /  /    |                             |"
	@echo "    |  |    |                             |"
	@echo "     \  \   |                             |"
	@echo "      '\ '\ |                             |"
	@echo "        '\ '|                             |"
	@echo "        _/ /\                             /"
	@echo "       (__/  \                           /"
	@echo '    _..---""` \                         /`""---.._'
	@echo " .-'           \                       /          '-."
	@echo ":               '-.__             __.-'              :"
	@echo ':                  ) ""---...---"" (                :'
	@echo "\'._                '"--...___...--"'              _.'"
	@echo '   \""--..__                              __..--""/'
	@echo "     '._     """----.....______.....----"""         _.'"
	@echo '         ""--..,,_____            _____,,..--"""'''
	@echo '                      """------"""'
	@echo ""
	@sleep 0.5
	@clear
	@echo ""
	@echo "                   ("
	@echo "	                     )     ("
	@echo "               ___...(-------)-....___"
	@echo '           .-""       )    (          ""-.'
	@echo "      .-''''|-._             )         _.-|"
	@echo '     /  .--.|   `""---...........---""`   |'
	@echo "    /  /    |                             |"
	@echo "    |  |    |                             |"
	@echo "     \  \   |        COFFEE BREAK         |"
	@echo "      '\ '\ |                             |"
	@echo "        '\ '|                             |"
	@echo "        _/ /\                             /"
	@echo "       (__/  \                           /"
	@echo '    _..---""` \                         /`""---.._'
	@echo " .-'           \                       /          '-."
	@echo ":               '-.__             __.-'              :"
	@echo ':                  ) ""---...---"" (                :'
	@echo "\'._                '"--...___...--"'              _.'"
	@echo '   \""--..__                              __..--""/'
	@echo "     '._     """----.....______.....----"""         _.'"
	@echo '         ""--..,,_____            _____,,..--"""'''
	@echo '                      """------"""'
	@sleep 0.5
	@clear
	@echo ""
	@echo "                 ("
	@echo "	                  )      ("
	@echo "               ___..(.------)--....___"
	@echo '           .-""       )   (           ""-.'
	@echo "      .-''''|-._      (       )        _.-|"
	@echo '     /  .--.|   `""---...........---""`   |'
	@echo "    /  /    |                             |"
	@echo "    |  |    |                             |"
	@echo "     \  \   |                             |"
	@echo "      '\ '\ |                             |"
	@echo "        '\ '|                             |"
	@echo "        _/ /\                             /"
	@echo "       (__/  \                           /"
	@echo '    _..---""` \                         /`""---.._'
	@echo " .-'           \                       /          '-."
	@echo ":               '-.__             __.-'              :"
	@echo ':                  ) ""---...---"" (                :'
	@echo "\'._                '"--...___...--"'              _.'"
	@echo '   \""--..__                              __..--""/'
	@echo "     '._     """----.....______.....----"""         _.'"
	@echo '         ""--..,,_____            _____,,..--"""'''
	@echo '                      """------"""'
	@sleep 0.5
	@clear
	@echo ""
	@echo "               ("
	@echo "	                  )     ("
	@echo "               ___..(.------)--....___"
	@echo '           .-""      )    (           ""-.'
	@echo "      .-''''|-._      (       )        _.-|"
	@echo '     /  .--.|   `""---...........---""`   |'
	@echo "    /  /    |                             |"
	@echo "    |  |    |                             |"
	@echo "     \  \   |        COFFEE BREAK         |"
	@echo "      '\ '\ |                             |"
	@echo "        '\ '|                             |"
	@echo "        _/ /\                             /"
	@echo "       (__/  \                           /"
	@echo '    _..---""` \                         /`""---.._'
	@echo " .-'           \                       /          '-."
	@echo ":               '-.__             __.-'              :"
	@echo ':                  ) ""---...---"" (                :'
	@echo "\'._                '"--...___...--"'              _.'"
	@echo '   \""--..__                              __..--""/'
	@echo "     '._     """----.....______.....----"""         _.'"
	@echo '         ""--..,,_____            _____,,..--"""'''
	@echo '                      """------"""'
	@sleep 0.5
	@clear
	@echo ""
	@echo "             (         ) "
	@echo "	              )        ("
	@echo "               ___)...----)----....___"
	@echo '           .-""      )    (           ""-.'
	@echo "      .-''''|-._      (       )        _.-|"
	@echo '     /  .--.|   `""---...........---""`   |'
	@echo "    /  /    |                             |"
	@echo "    |  |    |                             |"
	@echo "     \  \   |                             |"
	@echo "      '\ '\ |                             |"
	@echo "        '\ '|                             |"
	@echo "        _/ /\                             /"
	@echo "       (__/  \                           /"
	@echo '    _..---""` \                         /`""---.._'
	@echo " .-'           \                       /          '-."
	@echo ":               '-.__             __.-'              :"
	@echo ':                  ) ""---...---"" (                :'
	@echo "\'._                '"--...___...--"'              _.'"
	@echo '   \""--..__                              __..--""/'
	@echo "     '._     """----.....______.....----"""         _.'"
	@echo '         ""--..,,_____            _____,,..--"""'''
	@echo '                      """------"""'
	@echo ""

mfrcomplainte:
	@clear
	@echo ""
	@echo "$(GREEN)HOOOO grand makfile divint, je t'implore de compiler mon program.$(NO_COLOR)"
	@sleep 0.5
	@echo ""
	@echo "$(CYAN)Non.$(NO_COLOR)"
	@sleep 0.5
	@echo ""
	@echo "$(GREEN)Mais tu m'avais promis de compiler.$(NO_COLOR)"
	@sleep 0.5
	@echo ""
	@echo "$(CYAN)Non j'ai pas enive.$(NO_COLOR)"
	@sleep 0.5
	@echo ""
	@echo "$(GREEN)Mais pourquoi ?$(NO_COLOR)"
	@sleep 0.5
	@echo ""
	@echo "$(CYAN)Tu me relira jusqu'a temps aue tu trouve ton erreur ou aue sombre dans la folie.$(NO_COLOR)"
	@sleep 0.3
	@echo "$(CYAN)HAAAA HAHAHAHAHA$(NO_COLOR)"
	@sleep 0.5
	@echo ""
	@echo "$(GREEN)Cruel que tu est.$(NO_COLOR)"
	@echo ""

mengcomplainte:
	@clear
	@echo ""
	@echo "$(GREEN)HOOOO great makfile divint, I implore you to compile my program.$(NO_COLOR)"
	@sleep 0.5
	@echo ""
	@echo "$(CYAN)No.$(NO_COLOR)"
	@sleep 0.5
	@echo ""
	@echo "$(GREEN)But you promised me to compile.$(NO_COLOR)"
	@sleep 0.5
	@echo ""
	@echo "$(CYAN)No I do not want to.$(NO_COLOR)"
	@sleep 0.5
	@echo ""
	@echo "$(GREEN)But why ?$(NO_COLOR)"
	@sleep 0.5
	@echo ""
	@echo "$(CYAN)You reread me until you find your error or sink into madness.$(NO_COLOR)"
	@sleep 0.3
	@echo "$(CYAN)HAAAA HAHAHAHAHA$(NO_COLOR)"
	@sleep 0.5
	@echo ""
	@echo "$(GREEN)Cruel that you are.$(NO_COLOR)"
	@echo ""