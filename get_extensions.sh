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
PS3="What type of phone do you have?: "

select  phone in headset handheld; do
echo "Your phone type is $phone"
break
done

PS3="What department do you work in? :"
select department in finance sales "customer service" engineering; do
echo "Your department is $department"
break
done 

read -N 4 -p "What is your extension number? (must be 4 digits): " extension
echo
read -N 4 -s -p "What access code would you like to use when dialing in?: (must be 4 digits) " access
echo

echo "$firstname,$lastname,$phone,$department,$extension,$access" >> extension.csv

exit 0

