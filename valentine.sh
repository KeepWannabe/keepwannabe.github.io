#!/bin/bash
#### Colors Output

RESET="\033[0m"			# Normal Colour
RED="\033[0;31m" 		# Error / Issues
GREEN="\033[0;32m"		# Successful       
BOLD="\033[01;01m"    	# Highlight
WHITE="\033[1;37m"		# BOLD
YELLOW="\033[1;33m"		# Warning
PADDING="  "
DPADDING="\t\t"


#### Other Colors / Status Code

LGRAY="\033[0;37m"		# Light Gray
LRED="\033[1;31m"		# Light Red
LGREEN="\033[1;32m"		# Light GREEN
LBLUE="\033[1;34m"		# Light Blue
LPURPLE="\033[1;35m"	# Light Purple
LCYAN="\033[1;36m"		# Light Cyan
SORANGE="\033[0;33m"	# Standar Orange
SBLUE="\033[0;34m"		# Standar Blue
SPURPLE="\033[0;35m"	# Standar Purple      
SCYAN="\033[0;36m"		# Standar Cyan
DGRAY="\033[1;30m"		# Dark Gray

clear

typingTextAnimate_1(){
    tput setaf 2 &>/dev/null # green powaaa
    for ((i=0; i<=${#1}; i++)); do
        printf '%s' "${1:$i:1}"
        sleep 0.$(( (RANDOM % 2) + 1 ))
    done
    tput sgr0 2 &>/dev/null
}

printf "\n\n\n${LGREEN}"
typingTextAnimate_1 ' Welcome, Please login first'
printf "\n\n${WHITE}"

printf " Username    :       [       ${LGREEN}" 
typingTextAnimate_1 ' ayuanom' 
printf "${WHITE}        ]\n"
printf " Password    :       [      ${LGREEN}" 
typingTextAnimate_1 ' *********' 
printf "${WHITE}       ]\n\n${LGREEN} Loading, Please Wait\n\n"

count=0
total=17
pstr="[=======================================================================]"

while [ $count -lt $total ]; do
  sleep 0.5 # this is work
  count=$(( $count + 1 ))
  pd=$(( $count * 73 / $total ))
  printf "\r%3d.%1d%% %.${pd}s" $(( $count * 100 / $total )) $(( ($count * 1000 / $total) % 10 )) $pstr
done


loveBanner(){
echo -e "oo"
sleep 0.015
echo -e "   oo     @@@@@@@@:       @@@@@@@@!"
sleep 0.015
echo -e "      o@@@@!!!!;;;;@    @@.......:;!@"
sleep 0.015
echo -e "     'O@@!!!;;;;;;;;@  @.......:   ;!@"
sleep 0.015
echo -e "     @@@!!!!;;::::::.@@........:    ;!@"
sleep 0.015
echo -e "     @@!!!!;;:::::..............:   ;!@"
sleep 0.015
echo -e "     @@@!!!;::::::..............:   ;!@"
sleep 0.015
echo -e "      @@!!;;::::::.............:   ;!@"
sleep 0.015
echo -e "       @@!;;::::::......oo.....::::!@"
sleep 0.015
echo -e "         @!!;::::::........oo..:::@"
sleep 0.015
echo -e "           !!!;:::::..........oo@"
sleep 0.015
echo -e "              !!;:::::.......@   oo      *"
sleep 0.015
echo -e "                ;;::::.....@        oo   ***"
sleep 0.015
echo -e "                   :::..@              ooo*##"
sleep 0.015
echo -e "                     ::.             _##ooo###"
sleep 0.015
echo -e "                      :            **##########"
}

for randomColor in {36..31}; do
    clear
    printf "\033[1;${randomColor}m"
    loveBanner
done

typingTextAnimate(){
    tput setaf 2 &>/dev/null # green powaaa
    for ((i=0; i<=${#1}; i++)); do
        printf '%s' "${1:$i:1}"
        sleep 0.$(( (RANDOM % 3) + 1 ))
    done
    tput sgr0 2 &>/dev/null
}

printf "\n\n ${YELLOW}(EMAIL)${WHITE} : New Email Received from ${SPURPLE}abi@localheart${WHITE}\n\n"
printf "\n${LGREEN} ayu${RESET}@${SPURPLE}anom${RESET}:~$ ${WHITE}"
typingTextAnimate 'cat message.txt'
printf "\n ${LBLUE}From${WHITE}: abi@localheart\n ${LBLUE}To${WHITE}: ayu@localheart\n ${LBLUE}Subject${WHITE}: For you.\n\n Happy ${SPURPLE}Valentines${WHITE} Day !\n But I love you not just for today, but ${SPURPLE}forever${WHITE}.\n\n"

printf "${LGREEN} ayu${RESET}@${SPURPLE}anom${RESET}:~$ ${WHITE}"
sleep 2
typingTextAnimate 'less message_2.txt'
printf "\n ${LBLUE}From${WHITE}: abi@localheart\n ${LBLUE}To${WHITE}: ayu@localheart\n ${LBLUE}Subject${WHITE}: Cute Website\n\n Oh, Almost forget,\n i have something cute for you.\n You want to open it ? (Y/n) "
read openBrowser

openBrowser=${openBrowser,,}    # tolower
if [[ "${openBrowser}" =~ ^(yes|y)$ ]]; then
    open -a Safari https://keepwannabe.github.io/valetine.html
else
    printf " Alright, maybe you can open it later...\n\n"
fi
