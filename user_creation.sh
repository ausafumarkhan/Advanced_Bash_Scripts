#!/bin/bash

# This script will create an account  on the local system
# You will prompted for teg account name and password


# Ask for the username 
read -p "Enter the username to create the account: " username

# Ask for the real name
read -p "Enter the name of the person who this account is for: " comment

# Ask for the password 
read -p "Enter the password for ${username}: " password

# Create the user
useradd -c "${comment}" -m ${username}

# Set the password for the user
echo ${password} | passwd --stdin ${username}

# Force password change on first login 
passwd -e ${username}
