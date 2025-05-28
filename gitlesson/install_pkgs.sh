#!/bin/bash
_say_hello() {
    echo "Hello there"
    echo "I am your friendly bot"
    echo "You can ask me anything"
    read -p "What is your name?: " name
}
_say_hello


_install () {
    dnf install $1 -y
    dnf update $1 -y
}

_install httpd
_install git
_install vim