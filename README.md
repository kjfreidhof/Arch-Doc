# Hello im techdoc 

# This is my installer script for arch linux post setup 

# what this script does is it installs all my applications for arch linux 

# Before using this script 
make sure to back up your pacman.conf file because it will over write the pacman.conf file 

# how to use this script 

Do run this script do 

chmod +x install.sh

this will make the script executable 

then run 

sudo ./install.sh 

make sure to run this script with sudo other wise it will not work 

# The bashrc file 

in this is my bashrc 

this script copies the bashrc in to the home directory but renames it as .bashrc.bak 

to use this youll need to remove the orignal bashrc just do 

rm .bashrc 

then rename .bashrc.bak by runing this command 

mv .bashrc.bak .bashrc 

then source the new bashrc by doing

source .bashrc 

then youll have a new .bashrc 
