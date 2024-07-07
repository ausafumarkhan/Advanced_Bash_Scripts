#!/bin/bash

# Hello from the main  OS.
#read -p "Enter username which you want to create: " user

#sudo useradd ${user}

# Display the UID

echo "Your User ID is ${UID}"


# Display the Username 

username=$(id -un)
# Another way to extarct username using id command 
#  username=`id -un`

echo "Your Username is ${username}"

# Display if the user is the root user or not

if [[ ${UID} -eq 0 ]]; then
	echo "You are root"
else
	echo "You are not root"
fi


# Display if UID does NOT match with 1000
UID_TO_TEST_FOR='1000'
if [[ ${UID} -ne UID_TO_TEST_FOR ]]
then
	echo "Your UID doesnot match with ${UID_TO_TEST_FOR}."
	exit 1
fi

# Display Username

username=$(id -un)

# test if the command succeeded

if [[ ${?} -ne 0 ]]; then
	echo "Command Executed successfully"
	exit 1
fi
echo "Username is ${username}"


# Test for username

USERNAME_TO_TEST_FOR='vagrant'

if [[ ${username} == ${USERNAME_TO_TEST_FOR} ]];then
	echo  "Your username matched with vagrant"
fi


# Test for != username
if [[ ${username} != ${USERNAME_TO_TEST_FOR} ]]; then
	echo "Your username doesnot match with vagrant"
	exit 1
fi

exit 0
