#!/bin/bash

read -p "Enter intance name: " instance
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
