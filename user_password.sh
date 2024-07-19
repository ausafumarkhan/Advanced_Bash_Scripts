#!/bin/bash

# This script generates a random password for each user specified on the comand line.

# Display what the user typed on the command line.
echo "You executed this command: ${0}"

# Display the path and filename of the script.
echo "You used this path $(dirname ${0}) and filename is $(basename ${0})"

# Tell them how many arguments they passed in.
# (Inside the script they are parameters, outside they are arguments.)
NUMBER_OF_ARGUMENTS="${#}"
echo "You have supplied ${NUMBER_OF_ARGUMENTS} argument(s) on the command line"

# Make sure they at least supply one argument.
if [[ "${NUMBER_OF_ARGUMENTS}" -lt 1 ]]
then
	echo "Usage: ${0} USER_NAME USER_NAME..."
	exit 1
fi

# Generate and display a password for each parameter
for USER_NAME in ${@}
do
	PASSWORD=$(date +%s%N|sha256sum|head -c48)
	echo "${USER_NAME}: ${PASSWORD}"
done
