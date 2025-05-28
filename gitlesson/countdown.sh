#!/bin/bash
read -p "Enter a number to start countdown: " num
while [ $num -ge 1 ]; do
    echo $num
    ((num--))
    sleep 1
done
echo "Times up!"