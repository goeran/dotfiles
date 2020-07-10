#!/bin/bash

set -eu

# install 1password
sudo apt-get install -qq \
    unzip \
    --no-install-recommends \

if ! [ -x "$(command -v op)" ]; then
    echo "Download and install 1password CLI"
    export OP_VERSION="v1.2.0"
    curl -sS -o 1password.zip https://cache.agilebits.com/dist/1P/o
p/pkg/${OP_VERSION}/op_linux_386_${OP_VERSION}.zip
    unzip 1password.zip -d /usr/local/bin
    rm -f 1password.zip
fi

echo "Login with 1Password"
eval $(op signin my.1password.com)

echo "Downloading secrets"
op get document PrivateKey > id_rsa_github

rm -f ~/.ssh/id_rsa_github
ln -sfn $(pwd)/id_rsa_github ~/.ssh/id_rsa_github
chmod 0600 ~/.ssh/id_rsa_github

