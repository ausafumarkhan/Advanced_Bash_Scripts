#!/bin/bash

readarray -t files < files.txt

for file in "${files[@]}"; do
	if [ -e "$file" ]; then
		echo "$file already existed"
	else
		touch "$file"
		echo "$file was created"
	fi
done
