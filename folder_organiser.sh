#!/bin/bash

# Author: "Ausaf Umar Khan"
# Date Created : 2024-05-07
# Last Modified : 2024-05-07

# Description :
# organise the files within a given folder into	 different subfolders based on their file types.

# Usage
# ./folder_organiser.sh 


read -r -p "Enter the absolute path of a folderectory which you want to organise: " folder

while read filename; do

case "$filename" in
	*.jpg | *.jpeg | *.png)
		subfolder="images" ;;
	*.doc | *.docx | *.txt | *.pdf)
		subfolder="documents" ;;
	*.xls | *.xlsx | *.csv)
		subfolder="spreadsheets" ;;
	*.sh)
		subfolder="scripts" ;;
	*.zip | *.tar | *.tar.gz | *.tar.bz2)
		subfolder="archives" ;;
	*.ppt | *.pptx)
		subfolder="presentations" ;;
	*.mp3)
		subfolder="audio" ;;
	*.mp4)
		subfolder="video" ;;
	*)
		subfolder="."; echo "No need to move/organise" ;;
esac

if [ ! -d "$folder/$subfolder" ]; then
	mkdir "$folder/$subfolder"
fi


mv "$folder/$filename" "$folder/$subfolder"

done < <(ls "$folder")

echo "Files are organised in $folder directory"
