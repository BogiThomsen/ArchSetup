#!/bin/bash
echo "------------------------------------"
echo "---------- Moving configs ----------"
echo "------------------------------------"

cp -r blurlock i3 polybar rofi termite ~/.config/
cp .bashrc .zshrc ~/

if [ $? != 0 ]; then
  echo ""
  echo "ERROR copying folders"
  exit 1
fi

echo "------------------------------------"
echo "------ Config move finished --------"
echo "------------------------------------"