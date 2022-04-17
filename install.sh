#!/bin/bash 

FILE="/tmp/out.$$"
GREP="/bin/grep"


if ["$(id -u)" != "0"]; then
        printf "This script must be ran as root"
        printf "using sudo"
        exit 1

fi

#....

printf "run this script at your own risk\n"

printf "I am no responsible for what happens to your system\n"

printf "when you install this script\n"

while true;do 
        read -p "Do you want to run this script? " yn
        case $yn in
                [Yy]*)make install; break;;
                [Nn]*)exit;;
                *)printf "please answer yes or no.";;
        esac
done

cp pacman.conf /etc/

cp .bashrc.bak /home/"$USERNAME"/ 

pacman -S - < pkg.txt

pacman -R - < remove.txt

systemctl enable gdm.service 

reboot

exit








