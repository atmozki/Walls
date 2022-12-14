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

dir="$HOME/Pictures/Walls/"
current_dir=$(pwd)

echo "Creating directory '$dir' (if it doesn't exist)..."

if [[ ! -d "$dir" ]] ; then
    mkdir -p "$dir"
fi

echo ""
echo "Moving to Save Space..."
echo ""

read -p "Do you want to move both Desktop and Smartphone Wallpapers? ? [y/n] " answer
if [[ $answer =~ [Yy]$ ]]
then
    echo "Moving both Desktop and Smartphone Wallpapers..."
    mv -n "$current_dir/Walls/Desktop" $dir
    mv -n "$current_dir/Walls/Smartphone" $dir
    echo "Done!"
fi
if [[ $answer =~ [Nn]$ ]]
then
    read -p "Which wallpapers to Move 1)Desktop or 2)Smartphone 3)Exit ? [1/2/3] " op
    if [[ $op = 1 ]] ; then
    echo "Moving Desktop Wallpapers..."
    mv -n "$current_dir/Walls/Desktop" $dir
    echo "Done!"
    fi
    if [[ $op = 2 ]] ; then
    echo "Moving Smartphone Wallpapers..."
    mv -n "$current_dir/Walls/Smartphone" $dir
    echo "Done!"
    fi
    if [[ $op = 3 ]] ; then
    echo "Exiting"
    exit 1
    fi
fi

#Delete the directory after moving the wallpapers to $HOME/Pictures/Walls
read -p "Do you want to Delete this directory? [y/n] " answer
if [[ $answer = y ]] ; then
    echo "Cleaning up..."
    rm -rf "$current_dir/Walls"
fi
if [[ $answer = n ]] ; then
    echo "Exiting"
    exit 1
fi

echo "Done!"