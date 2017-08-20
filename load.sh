#!/bin/bash

clear

INFO=""

clear

LOOP="true"

clear

black=$(tput setaf 0)
white=$(tput setaf 7)
bg=$(tput smso)
bold=$(tput bold)
reset=$(tput sgr0)

clear

loadCard() {

echo "                                      "
echo "                                      "
sleep 0.1
echo "     ${bg}${white}###############${reset}"
sleep 0.1
echo "     ${bg}${white}###############${reset}"
sleep 0.1
echo "     ${bg}${white}######${black}###${white}######${reset}"
sleep 0.1
echo "     ${bg}${white}####${black}#######${white}####${reset}"
sleep 0.1
echo "     ${bg}${white}###${black}#########${white}###${reset}"
sleep 0.1
echo "     ${bg}${white}##${black}###########${white}##${reset}"
sleep 0.1
echo "     ${bg}${white}##${black}###########${white}##${reset}"
sleep 0.1
echo "     ${bg}${white}#####${black}#####${white}#####${reset}"
sleep 0.1
echo "     ${bg}${white}####${black}#######${white}####${reset}"
sleep 0.1
echo "     ${bg}${white}###############${reset}"
sleep 0.1
echo "     ${bg}${white}###############${reset}"
sleep 0.1
echo -e "\n"
sleep 3.5
clear
LOOP=$(cat /home/$(whoami)/jackofspades/status.txt)
clear

}

for i in 1 2 3
do
	loadCard
done

clear

echo -n "Hello Jack.. How are you?.. (scale of 1 to 10): " | pv -qL 10

read -p "?: " HOWAREYOU

clear

if [ $HOWAREYOU = "5" ]
then
	echo "..your updates.." | pv -qL 10
	curl -s $INFO | pg

else
	echo "..until next time.." | pv -qL 10
fi

clear


