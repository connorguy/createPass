#!/bin/bash
# Bash script to create password for different sites.
# This script will store no data on your HD nor will it send data anywhere else. However you can 
# always comeback and retrieve the password by entering your createPass password and website.

# Prompt users for inputs
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
echo "Please Enter Your createPass Password:"
tput cup 8 15
read -sp "::" password;
echo ""

seedString="$password$website"
# Double has the users input
hash1=$(echo -n "$seedString" | shasum -a 256 -t)
hash2=$(echo -n "$hash1" | shasum -a 256 -t)
echo $hash1

# Trim hash to something more usable.
newPassword=$(echo $hash2 | cut -c1-17) 
echo -n $newPassword | pbcopy

# Output to user the new password.
tput setaf 3
tput cup 10 15
echo "Password for $website: $newPassword"
tput sgr0
tput cup 11 15
echo "Copied to your clipboard!"

tput cup 13 15
read -p "All Done? [return] " isDone;
printf "\033c" # Actually clears text from terminal
