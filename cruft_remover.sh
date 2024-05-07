#!/bin/bash


read -r -p "Enter the number days: " num
read -r -p "Enter the directory absolute path: " path
readarray -t files < <(find "$path" -type f -mtime "$num") # it will delete the file which is n days

for file in "${files[@]}"; do
	rm -r "$file"
	echo "removed $file"
done

echo "Files has been deleted"
