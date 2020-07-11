#!/bin/bash

if ! [ -x "$(command -v go)" ]; then
    echo "Install golang"
    sudo apt install golang-1.14-go
else
    echo "Golang already installed"
fi

