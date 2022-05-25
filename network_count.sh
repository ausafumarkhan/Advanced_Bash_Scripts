#!/bin/bash

value=$(ip addr show | grep -v LOOPBACK | grep -ic mtu)

if [ $value -eq 1 ]
then
	echo "Found a network Interface"
elif [ $value -gt 1 ]
then
	echo "Found multiple network interface"
else
	echo "No active network interface"
fi
