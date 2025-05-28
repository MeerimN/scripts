#!/bin/bash

cat << HEREDOC
Select an option:
1) Show date
2) List files
3) Show user
4) Exit
HEREDOC

read -p "Choose an option [1-4]: " choice

case $choice in
    "1")
        echo "Today's date is: $(date)"
        ;;
    "2")
        echo "Files in the current directory:"
        ls
        ;;
    "3")
        echo "Current user: $(whoami)"
        ;;
    "4")
        echo "Exiting..."
        ;;

    *)
        echo "Invalid option. Please try again."
        ;;
esac