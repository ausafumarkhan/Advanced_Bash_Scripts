#!/bin/bash

while read line; do
	echo "$line"


# This is taking a file as std input
#done < "$1"

# This is taking input as process substitution 
done < <(ls $HOME)
