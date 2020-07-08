#!/bin/bash

set -eu

echo "Login with 1Password"
eval $(op signin my.1password.com)

echo "Downloading secrets"
op get document PrivateKey > id_rsa_github

rm -f ~/.ssh/id_rsa_github
ln -sfn $(pwd)/id_rsa_github ~/.ssh/id_rsa_github
chmod 0600 ~/.ssh/id_rsa_github

