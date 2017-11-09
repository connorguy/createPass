#!/bin/bash

# MENU SETUP
# Move cursor to screen location X,Y (top left is 0,0)
tput clear
tput cup 3 15
# Set a foreground colour using ANSI escape
tput setaf 6
echo "Welcome To creatPASS"
tput sgr0
tput cup 5 15
echo 'Enter The Website URL:'
tput cup 6 15
read -p "::" website;
tput cup 7 15
read -sp "Please Enter Your createPass Password:" password;
echo ""

seedString=$password$website
echo $"$seedString"
echo ""

echoPass="echo -n $seedString"
hashCommand="shasum -a 256 -t"
hash1=eval $echoPass | $hashCommand
echo $hash1
echoPass="echo -n $hash1"
hash2=eval $echoPass | $hashCommand

newPassword=$(echo $hash2 | cut -c2-7) 
echo $newPassword


# echo $newPassword



# Burn password


read -p "All Done? [return] " isDone;
printf "\033c" # Actually clears text from terminal





