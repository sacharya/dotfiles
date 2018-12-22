#!/bin/bash

DIR="$HOME/MyDocuments/go"
GO_VERSION="1.11.4"

mkdir $DIR > /dev/null 2>&1

bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)

source $HOME/.gvm/scripts/gvm

gvm install go$GO_VERSION -B
gvm use go$GO_VERSION --default

export GOROOT_BOOTSTRAP=$GVM_ROOT/gos/go$GO_VERSION
export NEW_GOROOT=$GVM_ROOT/gos/go$GO_VERSION

#sed -i "s#export GVM_ROOT.*#export GVM_ROOT; GVM_ROOT=\"$HOME\"/.gvm#g" ~/.gvm/environments/default
#sed -i "s#export GOROOT.*#export GOROOT; GOROOT=\"$NEW_GOROOT\"#g" ~/.gvm/environments/default

echo "export GOPATH=$HOME/MyDocuments/CloudLabs/gowork" >> ~/.bashrc
echo "export NEW_GOROOT=$GVM_ROOT/gos/go$GO_VERSION" >> ~/.bashrc
echo "GOROOT_BOOTSTRAP=$GVM_ROOT/gos/go$GO_VERSION" >> ~/.bashrc

source ~/.bashrc
