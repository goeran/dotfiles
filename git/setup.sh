#!/bin/bash

if ! [ -x "$(command -v git)" ]; then
    echo "Git is not installed. Not able to setup"
    exit 0
fi

echo "Setup gitconfig\n"

read -p "Git author name: " git_author_name
read -p "Git author e-mail: " git_author_email

echo "Git author will be configured with:
    - name: $git_author_name
    - e-mail $git_author_email"

#echo "Do you wish to continue?"
while true; do
    read -p "Do you wish to configure Git like this? (Y/n) " yn
    case $yn in
        [Yy]* ) 
            echo "yes"; 
            git config --global user.name $git_author_name;
            git config --global user.email $git_author_email;
            git config --global editor "vim";
            echo -e "\xEE\x90\x9F G✅it sucessfully configured ";
            break;;
        [Nn]* ) echo -e "\xEE\x90\xA1 Git was not configured "; break;;
        * ) echo "Please answer yes/no or y/n";;
    esac
done

