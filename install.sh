#!/bin/bash

echo " ---------------------------------------------------------------------"
echo "                                                                      "
echo "                                                                      "
echo " ███╗░░░███╗██╗░░░██╗  ░██╗░░░░░░░██╗░█████╗░██╗░░░░░██╗░░░░░░██████╗ "
echo " ████╗░████║╚██╗░██╔╝  ░██║░░██╗░░██║██╔══██╗██║░░░░░██║░░░░░██╔════╝ "
echo " ██╔████╔██║░╚████╔╝░  ░╚██╗████╗██╔╝███████║██║░░░░░██║░░░░░╚█████╗░ "
echo " ██║╚██╔╝██║░░╚██╔╝░░  ░░████╔═████║░██╔══██║██║░░░░░██║░░░░░░╚═══██╗ "
echo " ██║░╚═╝░██║░░░██║░░░  ░░╚██╔╝░╚██╔╝░██║░░██║███████╗███████╗██████╔╝ "
echo " ╚═╝░░░░░╚═╝░░░╚═╝░░░  ░░░╚═╝░░░╚═╝░░╚═╝░░╚═╝╚══════╝╚══════╝╚═════╝░ "
echo "                                                                      " 
echo "----------------------------------------------------------------------"

dir="$HOME/Pictures/Walls3/"
current_dir=$(pwd)

echo "Creating directory '$dir' if it doesn't exist"

if [[ ! -d "$dir" ]] ; then
    mkdir -p "$dir"
fi

echo ""
echo "Moving to Save Space"
echo ""

rm -rf .git

read -p "Do you want to move both Desktop and Smartphone Wallpapers? ? [y/n]" answer
if [[ $answer = y ]] ; then
    echo "Moving both Desktop and Smartphone Wallpapers"
    mv "$current_dir/Desktop" $dir
    mv "$current_dir/Smartphone" $dir
fi
if [[ $answer = n ]] ; then
    read -p "Which wallpapers to Move 1)Desktop or 2)Smartphone 3) ? [1/2/3]" op
    if [[ $op = 1 ]] ; then
    echo "Moving Desktop Wallpapers"
    mv "$current_dir/Desktop " $dir
    fi
    if [[ $op = 2 ]] ; then
    echo "Moving Smartphone Wallpapers"
    cp "$current_dir/Smartphone" $dir
    fi
    if [[ $op = 3 ]] ; then
    echo "Exiting"
    exit 1
    fi
fi

#Delete the directory after moving the wallpapers to 
echo "Cleaning up"
rm -rf "$current_dir"

echo "Done!"