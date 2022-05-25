#!/bin/bash

if [[ -n $1 ]] && [[ -d $1 ]]
then
	echo "You have entered dir path, taking a backup"
	tar -zcvf backupdir.tar.gz $1
elif [[ -n $1 ]] && [[ -e $1 ]]
then
	echo "You have entered a file path, taking a backup"
	tar -zcvf backupfile.tar.gz $1
elif [ -z $1 ]
then
	echo "Please enter any argument."
else
	echo "You have entered invalid argument, please try again"
fi

