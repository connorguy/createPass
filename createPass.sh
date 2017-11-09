#!/bin/bash

# This is where you can change the location of your file.
fileName="text"

# Validate that a passwordfile has been setup

echo $'Now would be a greate time to check your surroundings!\n'
echo $'**Note that I  can\'t handle any ctrl^c exits and data maybe lost or exposed!\n'
read -p "Got it! [return] " isDone;
printf "\033c" # Actually clears text from terminal

# Get password for password file
read -sp "Please Enter Your Password:" passw;
printf "\033c" # Actually clears text from terminal

# Decrypt file for use
# openssl aes-256-cbc -d -a -in text -out text
# validate user entered the correct password
# perferably this will store a tmp copy in memory to be modded then write the new modded vsn over the old

# MENU SETUP
# Move cursor to screen location X,Y (top left is 0,0)
tput cup 3 15
# Set a foreground colour using ANSI escape
tput setaf 6
echo "Welcome To creatPASS"
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

#test
echo $'\nWebsite Name:'
read -p "::" website;


# For Generating a new password.
if [ $option -eq 1 ]; then
	# Generate a new password using openssl
	opensslCommand="openssl rand -base64 18"
	newPassword=eval $opensslCommand

	# Append website name

	# Append site password

	echo ""
	echo "Website <$website> saved."
fi

# For retrieving a password
if [ $option -eq 2 ]; then
	# Get website password from file
	# assuming a grep might work for this
	echo "Password: "
fi

read -p "All Done? [return] " isDone;
printf "\033c" # Actually clears text from terminal


# Encrypt file
# openssl aes-256-cbc -a -in $fileName -out $fileName -pass pass:$passw #Encrypting file

# Burn password




