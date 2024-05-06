#!/bin/bash

readarray -t urls < urls.txt

for url in ${urls[@]}; do
	curl --head "$url" > $(echo "$url" | cut --delimiter "." --fields 2).txt
done
