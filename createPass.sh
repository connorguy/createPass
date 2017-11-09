#!/bin/bash

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

hash1=$(echo -n $seedString | shasum -a 256 -t)
hash2=$(echo -n $hash1 | shasum -a 256 -t)

newPassword=$(echo $hash2 | cut -c1-17) 
echo -n $newPassword | pbcopy

tput setaf 3
tput cup 10 15
echo "New Password for $website: $newPassword"
tput sgr0
tput cup 11 15
echo "Copied to your clipboard!"


# Burn password

tput cup 13 15
read -p "All Done? [return] " isDone;
printf "\033c" # Actually clears text from terminal





