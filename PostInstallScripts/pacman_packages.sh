#!/bin/bash
if [ "`id -u`" != "0" ]; then
    echo "Must be run as root"
    exit 1
fi
echo "------------------------------------"
echo "--------- Updating mirrors ---------"
echo "------------------------------------"
pacman-mirrors -g &&

echo "------------------------------------"
echo "-------- Updating packages ---------"
echo "------------------------------------"
pacman -Syyuu --noconfirm &&

# Install general stuff
echo "------------------------------------"
echo "------- Installing packages --------"
echo "------------------------------------"
pacman -S --noconfirm --needed \
    termite docker docker-compose \
    git code zsh flameshot yay \
    13lock feh i3-gaps polybar \

sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

if [ $? != 0 ]; then
    echo ""
    echo "ERROR running pacman -- must check if all packages are available"
    exit 1
fi

echo "------------------------------------"
echo "-------- Install finished ----------"
echo "------------------------------------"