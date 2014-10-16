#!/bin/sh

keyBindingsPath=~/Library/Developer/Xcode/UserData/KeyBindings
fontAndColorThemesPath=~/Library/Developer/Xcode/UserData/FontAndColorThemes

mv $keyBindingsPath $keyBindingsPath.bak
mv $fontAndColorThemesPath $fontAndColorThemesPath.bak

ln -s $(pwd)/KeyBindings $keyBindingsPath
ln -s $(pwd)/FontAndColorThemes $fontAndColorThemesPath

