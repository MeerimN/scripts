#!/bin/bash
read -p "Enter numbers space separated: " -a numbers
for num in "${numbers[@]}"; 
do
if (( num % 2 == 0 )); then
   echo "$num is even"
   else 
   echo "$num is odd"
fi
done