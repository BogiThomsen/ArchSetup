#!/bin/bash
echo "------------------------------------"
echo "------ Updating AUR packages -------"
echo "------------------------------------"
yay -Syu --noconfirm
## Adding discord gpg key
gpg --recv-keys 0FC3042E345AD05D

echo "------------------------------------"
echo "----- Installing AUR packages ------"
echo "------------------------------------"
yay -S --noconfirm --needed \
  spotify google-chrome \
  slack-desktop discord
  
if [ $? != 0 ]; then
  echo ""
  echo "ERROR running yay -- must check if all packages are available"
  exit 1
fi

echo "------------------------------------"
echo "-------- Install finished ----------"
echo "------------------------------------"