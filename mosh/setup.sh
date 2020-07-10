#!/bin/sh

if ! [ -x "$(command -v mosh)" ]; then
    echo "Install mosh"
    sudo add-apt-repository ppa:keithw/mosh
    sudo apt-get update
    sudo apt-get install mosh
else
    echo "Mosh already installed"
fi

