#!/bin/bash

read -p "Please enter number to check:" num
if [ $num -eq 2 ]; then
echo "Please enter number greater than 2"
exit 0
fi
while [ $num -gt 2 ]
do
for ((i=2;i<=$num/2;i++)) 
do
 ans=$(( num%i ))
 if [ $ans -eq 0 ]
 then
   echo "$num is not prime"
   exit 0
 fi
done
echo "$num is prime."
exit 0
done
