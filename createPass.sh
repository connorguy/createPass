#!/bin/bash

# Bash script to create and store unique secure passwords that are stored in an encrypted file. 
# Check if a createPass file is available, if not create one and encrypt it.
# Ask user what website the password is for so that it can be stored in createPass file.
# Use “openssl rand -base64 20”.
# Convert to base58 encoding.
# Store password in createPass file and output password to shell.
# Close encrypted file. 
# Ask if user is done with password, clean screen.
# createPass should ideally be stored in a backed up location.

# This is where you can change the location of your file.
fileName="text"

# read -sp "Password:" passw;
# echo ""
# echo  -n $'Website Name: \n::'
# read website;
# echo -n $'\nPlease select a function\nView: v\nNew: n\n::'
# read option;

# clear the screen
tput clear
# Move cursor to screen location X,Y (top left is 0,0)
tput cup 3 15
read -sp "Please Enter Your Password:" passw;

# clear the screen
tput clear
# Move cursor to screen location X,Y (top left is 0,0)
tput cup 3 15
# Set a foreground colour using ANSI escape
tput setaf 3
echo "Terminal Password Tool"
tput sgr0
tput cup 5 17
# Set reverse video mode
tput rev
echo "M A I N - M E N U"
tput sgr0
tput cup 7 15
echo "1. Create A New Password"
tput cup 8 15
echo "2. View A Password"
# Set bold mode
tput bold
tput cup 10 15
read -p "Enter your choice [1-2] " option;


echo  -n $'\nWebsite Name: \n::'
read website;



# Check that password file exists
#TODO

# Decrypt file for use
# openssl aes-256-cbc -d -a -in text -out text
# perferably this will store a tmp copy in memory to be modded then write the new modded vsn over the old

# For Generating a new password.
if [ $option -eq 1 ]; then
	# Append website name
	# Append site password

	# Generate a new password using openssl
	opensslCommand="openssl rand -base64 18"
	newPassword=eval $opensslCommand
	echo ""
	echo $'\nAll done. Website $website saved.\n'
fi

# For retrieving a password
if [ $option -eq 2 ]; then
	# Get website password from file
	echo "Site: $website"
	echo "Password: "
fi

read -p "All Done? [return] " isDone;
printf "\033c" # Actually clears text from terminal


# Encrypt file
# openssl aes-256-cbc -a -in $fileName -out $fileName -pass pass:$passw #Encrypting file

# Burn password




