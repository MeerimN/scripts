#!/bin/bash

read -p "Enter a file name: " file

if [ -f $file ]; then
    echo "File exists"
else
    echo "File does not exist"
fi

if [ -r $file ]; then
  echo "File $file is readable"
else
  echo "File $file is not readable"
fi

if [ -w $file ]; then
  echo "File $file is writable"
else
  echo "File $file is not writable"
fi

if [ -x $file ]; then
  echo "File $file is executable"
else
  echo "File $file is not executable"
fi