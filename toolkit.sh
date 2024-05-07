#!/bin/bash

# Author: "Ausaf Umar Khan"
# Date Created : 2024-05-07
# Last Modified : 2024-05-07

# Description :
# an interactive menu that your user can use to select which utility they want to run.

# Usage
# ./toolkit.sh

PS3="Select the script to run: "

select script in cruft_remover folder_organiser;
do

case $script in
	cruft_remover)
		bash cruft_remover.sh;;
	folder_organiser)
		bash folder_organiser.sh;;
	*)
		echo "Invalid option";;
esac

break
done

