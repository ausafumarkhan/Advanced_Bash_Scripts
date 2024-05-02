#!/bin/bash

# Author: "Ausaf Umar Khan"
# Date Created : 2024-05-02
# Last Modified : 2024-05-02

# Description :
# This is used to log memory usage to check performance issue

# Usage
# ./memory_logger.sh

if [[ -d $HOME/performance ]]; then
	echo "Folder $HOME/performance exists"
else
	mkdir $HOME/performance
	echo "Folder $HOME/performance created"
fi

echo $(free -m) >> $HOME/performance/memory.log
echo "Memory log copied to ~/performamce/memory.log"

exit 0
