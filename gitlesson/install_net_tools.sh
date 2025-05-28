#!/bin/bash

_install () {
    dnf install $1 -y > /dev/null
   if [ $? -ne 0 ]; then
   echo "Failed to install $1"
   else 
   echo "Successfully installed $1"
   fi

   dnf update $1 -y
}

_install net-tools