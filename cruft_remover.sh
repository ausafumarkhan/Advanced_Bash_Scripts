#!/bin/bash

# Author: "Ausaf Umar Khan"
# Date Created : 2024-05-07
# Last Modified : 2024-05-07

# Description :
# Script will  delete files that haven’t been modified for a certain period of time.
# Usage
# ./cruft_remover.sh 

read -r -p "Enter the days of unmodified file: " num
read -r -p "Enter the directory absolute path: " path
readarray -t files < <(find "$path" -maxdepth 3 -type f -mtime "$num") # it will delete the file which is n days

for file in "${files[@]}"; do
	rm -i "$file"
	echo "removed $file"
done

echo "Files has been deleted"
