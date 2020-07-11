#!/bin/bash

echo "Setup zsh"

cd "$(dirname $0)"/..

# symlink
ln -sfn $(pwd)/zsh/.zshrc "${HOME}"/.zshrc

