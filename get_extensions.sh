#!/bin/bash

# Author: "Ausaf Umar Khan"
# Date Created : 2024-04-26
# Last Modified : 2024-04-27

# Description :
# It will take first name, surname, extenison and access code from user and redirect them to extension.csv file.

# Usage
# ./get_extension.sh

read -p "What is your first name?: " firstname
read -p "What is your surname/family name?: " lastname
read -N 4 -p "What is your extension number? (must be 4 digits): " extension
echo
read -s -N 4 -p "What access code would you like to use when dialing in?: (must be 4 digits) " access
echo

echo "$firstname,$lastname,$extension,$access" >> extension.csv

exit 0

