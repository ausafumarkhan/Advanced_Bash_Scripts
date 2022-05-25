#!/bin/bash

BackUpFile=script_backup.tar.gz

echo "Taking a bakup of $1"
echo
echo "Archiving of $1"
tar -czvf $BackUpFile $1
echo "Moving $BackUpFile to $2"
echo
echo "Backup Completed Successfull"
