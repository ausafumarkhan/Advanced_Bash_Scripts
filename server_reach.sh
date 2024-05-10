#!/bin/bash

read -p "Enter FQDN or URL: " instance
read -p "Enter the port: " port
ping -c 3 "$instance"

if [ $? -eq 0 ]; then
	sleep 2 | telnet "$instance"  "$port"
	echo "===================================================="
	echo "Server is reachable and able to telnet the Server"
	echo "===================================================="
else
	echo "Server is unreachable"
fi

exit 0
