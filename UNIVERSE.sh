#!/bin/bash

# this is the os-release where update gonna take place 
osfile= /etc/os-release

# so in that file when the word Arch is gonna be found, updates gonna take place
# mean while this is only for arch linux...........
if grep -q "Arch" $osfile
then
    sudo pacman -Syu
fi

# this is debian part of update 
if grep -q "Debian" $osfile
then
    sudo apt update && sudo apt upgrade
fi

# this is ubuntu part of update
if grep -q "Ubuntu" $osfile
then
    sudo apt update && sudo apt upgrade
fi

