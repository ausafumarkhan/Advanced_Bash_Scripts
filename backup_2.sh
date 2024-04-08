#!/bin/bash

# Author: "Ausaf Umar Khan"
# Date Created : 2024-03-26
# Last Modified : 2024-03-264

# Description :
# It will create a backup of a home directory with date and time using tar command  

# Usage
# ./backup_script 

echo "**********************************"
echo "********Creating a backup*********"

sudo tar -cf ~/bash_course/backup/my_backup_"$(date +%d-%m-%Y_%H-%M-%S)".tar ~/* 3>/dev/null

echo "*********************************"
echo "*********End of script***********"

exit 0
