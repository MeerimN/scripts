#!/bin/bash
age=$1
if [ -z $1 ]; then
    read -p "Please enter your age: " age
fi

if [ $age -lt 21 ]; then
   echo "You are too young"
   echo "Come back when you're 21"
   exit

elif [ $age -ge 65 ]; then
   read -p "Enter your name: " name
else
   read -p "Enter your name: " name
   read -p "Enter your DOB: " dob
   read -p "What school did you attend: " school
fi

echo "Presenting images of WAR:"