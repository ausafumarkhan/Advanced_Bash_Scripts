#!/bin/bash

# Author: "Ausaf Umar Khan"
# Date Created : 2024-05-07
# Last Modified : 2024-05-07

# Description :
# organise the files within a given folder into	 different subfolders based on their file types.

# Usage
# ./folder_organiser.sh 


read -r -p "Enter the absolute path of a directory which you want to organise: " dir

while read -r line; do

case "$dir/$line" in 
	*.jpg | *.jpeg | *.png)
		if [[ -d "$dir/images" ]]; then
			mv "$dir/$line" "$dir/images"
		else
			mkdir "$dir/images"; mv "$dir/$line" "$dir/images" 
		fi ;;
	*.doc | *.docx | *.txt | *.pdf)
		if [[ -d "$dir/documents" ]]; then
                        mv "$dir/$line" "$dir/documents"
		else
			mkdir "$dir/documents"; mv "$dir/$line" "$dir/documents"
                fi ;;
	*.xls | *.xlsx | *.csv)
		if [[ -d "$dir/spreadsheets" ]]; then
                        mv "$dir/$line" "$dir/spreadsheets"
		else
			mkdir "$dir/spreadsheets"; mv "$dir/$line" "$dir/spreadsheets"
                fi ;;
	*.sh)
		if [[ -d  "$dir/scripts" ]]; then
                        mv  "$dir/$line" "$dir/scripts"
		else
			mkdir  "$dir/scripts"; mv "$dir/$line" "$dir/scripts"
                fi ;;
	*.zip | *.tar | *.tar.gz | *.tar.bz2)
		if [[ -d "$dir/archives" ]]; then
			mv  "$dir/$line" "$dir/archives"
		else
                        mkdir "$dir/archives"; mv "$dir/$line" "$dir/archives"
                fi ;;
	*.ppt | *.pptx)
		if [[ -d "$dir/presentations" ]]; then
                        mv "$dir/$line" "$dir/presentations"
		else
			mkdir "$dir/presentations"; mv "$dir/$line" "$dir/presentations"
                fi ;;
	*.mp3)
		if [[ -d "$dir/audio" ]]; then
                        mv "$dir/$line" "$dir/audio"
		else
			mkdir "$dir/audio"; mv "$dir/$line" "$dir/audio"
                fi ;;
	*.mp4)
		if [[ -d "$dir/video" ]]; then
                	mv "$dir/$line" "$dir/video"
		else
			mkdir "$dir/video"; mv "$dir/$line" "$dir/video"
                fi ;;
	*) echo "can't move $line. It might be an unsupported extension or a directory" ;;
esac
done < <(ls "$dir")

echo "Files are organised in $dir directory"
