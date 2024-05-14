#!/bin/bash

# Author: "Ausaf Umar Khan"
# Date Created : 2024-05-10
# Last Modified : 2024-05-14

# Description :
# Script will ping and telnet the instance on particular port
# Usage
# ./server_reach.sh

read -p "Enter FQDN of an instance or url: " instance
read -p "Enter the port: " port
ping -c 3 "$instance"

if [ $? -eq 0 ]; then
	sleep 2 | telnet "$instance"  "$port"
	echo "===================================================="
	echo "Intance is reachable and able to telnet the instance"
	echo "===================================================="
else
	echo "Instance is unreachable"
fi

exit 0
