#!/bin/bash


# Author: "Ausaf Umar Khan"
# Date Created : 2024-04-25
# Last Modified : 2024-04-25

# Description :
# performs arithematic operation +/- for a number upto 9.

# Usage
# ./calculator + 3 4 5 7

echo $(( ${2:-0} $1 ${3:-0} $1 ${4:-0} $1 ${5:-0} $1 ${6:-0} $1 ${7:-0} $1 ${8:-0} $1 ${9:-0} ))

exit 0
