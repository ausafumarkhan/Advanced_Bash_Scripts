#!/bin/bash

# Author: "Ausaf Umar Khan"
# Date Created : 2024-03-26
# Last Modified : 2024-03-264

# Description :
# It will create a backup of a home directory with date and time using tar command  

# Usage
# ./backup_script 

echo "Hello ${USER^}"

echo "I will now back up your home directory $HOME"
echo
echo "**********************************"
echo
currentdir=$(pwd)
echo "You are running this script from $currentdir"
echo "Therefore, I will save the backup in $currentdir"
echo
echo "********Creating a backup*********"
echo

sudo tar -cf $currentdir/mybackup_"$(date +%d-%m-%Y_%H-%M-%S)".tar $HOME 3>/dev/null

echo "*********************************"
echo "********* Backup Completed Successfully. ***********"
exit 0
