#!/bin/bash

_create_user() {
    read -p "Enter username for new user: " username
    useradd $username -p passwd123
    echo "User $username created successfully - $(date)" > /var/log/userlogs.log
}

_delete_user() {
    read -p "Enter username to delete: " username
    userdel $username
    echo "User $username deleted successfully - $(date) " > /var/log/userlogs.log
}

read -p "Do you want to 'create' or 'delete' user?: " input

if [ $input = "create" ]; then
_create_user
elif [ $input = "delete" ]; then
_delete_user
else
echo "Invalid option; try again"
exit
fi