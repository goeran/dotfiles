#!/bin/bash

echo "Setup Vim"

cd "$(dirname $0)"/..

# symlink
ln -sfn $(pwd)/vim/.vimrc "${HOME}"/.vimrc
ln -sfn $(pwd)/vim/pack "${HOME}"/.vim/pack

