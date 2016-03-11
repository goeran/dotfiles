#!/bin/sh

vimrcPath=~/.vimrc

mv $keyBindingsPath $vimrcPath.bak

ln -s $(pwd)/.vimrc $vimrcPath

