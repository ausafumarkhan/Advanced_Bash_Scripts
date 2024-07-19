#!/bin/bash

# This script generates a list of random password


# Random number as password

PASSWORD="${RANDOM}"

echo "${PASSWORD}"



# Three Random numbers together

PASSWORD="${RANDOM}${RANDOM}${RANDOM}"

echo "${PASSWORD}"


# Use the current date/time as the basis for the password
PASSWORD=$(date +%s)
echo "${PASSWORD}"


# Use nanosecond to act as randomization
PASSWORD=$(date +%s%N)
echo "${PASSWORD}"

# A better password

PASSWORD=`date +%s%N | sha1sum | head -c32`
echo "${PASSWORD}"

# A better password

PASSWORD=$(date +%s%N${RANDOM}${RANDOM}${RANDOM} | sha256sum | head -c32)
echo "${PASSWORD}"


# Append a special charater to a password

SPECIAL_CHARACTER=$(echo '!@#$%^&*()' | fold -w1 | shuf | head -c1)

echo "${PASSWORD}${SPECIAL_CHARACTER}"

