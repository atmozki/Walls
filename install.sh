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

echo "Creating directory '$dir' if it doesn't exist"

if [[ ! -d "$dir" ]] ; then
    mkdir -p "$dir"
fi

read -p "Do you want to move both Desktop and Smartphone Wallpapers? ? [y/n]" answer

if [[ $answer = y ]] ; then
    echo "Moving both Desktop and Smartphone Wallpapers"
    mv "/Desktop" $dir
    mv "/Smartphone" $dir
fi

if [[ $answer = n ]] ; then
    read -p "Which wallpapers to Move 1)Desktop or 2)Smartphone 3) ? [1/2/3]" op
    if [[ $op = 1 ]] ; then
    echo "Moving Desktop Wallpapers"
    mv "/Desktop " $dir
    fi
    if [[ $op = 2 ]] ; then
    echo "Moving Smartphone Wallpapers"
    cp "/Smartphone" $dir
    fi
    if [[ $op = 3 ]] ; then
    echo "Exiting"
    exit 1
    fi
fi

#if [[ "$1" == "" ]] ; then
#    echo "Copying all wallpapers to '$dir'"
#    cp -r /Desktop "$dir"
#    exit 1
#fi

#echo "Copying Wallpapers to $dir"

#cp -r  "$dir"

echo "Done!"