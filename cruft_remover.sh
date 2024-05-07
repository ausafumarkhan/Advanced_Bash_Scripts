#!/bin/bash


read -r -p "Enter the days of unmodified file: " num
read -r -p "Enter the directory absolute path: " path
readarray -t files < <(find "$path" -maxdepth 3 -type f -mtime "$num") # it will delete the file which is n days

for file in "${files[@]}"; do
	rm -i "$file"
	echo "removed $file"
done

echo "Files has been deleted"
