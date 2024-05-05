#!/bin/bash

getopts "m:s:" opt

if [[ $opt ==  m ]]; then
	total_sec=$(( $OPTARG * 60 ))
else
	total_sec=$OPTARG
fi



while [[ total_sec -ne 0 ]]; do
	echo "Remaining time: $total_sec seconds"
	sleep 1s
	total_sec=$(( $total_sec - 1 ))
done

echo "Time is up"
