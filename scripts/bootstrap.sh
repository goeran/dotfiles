#!/bin/bash

# Bootstrap my dotfiles

# Exit immediately if a command exits with non-error status
set -e

cd "$(dirname $0)"/..

# Run installers
echo "About to run installers"
./scripts/install
echo "Completed running installers"

# Run setups
echo "About to run setup scripts"
./git/setup.sh
./zsh/setup.sh
./vim/setup.sh
echo "Completed running setup scripts"

