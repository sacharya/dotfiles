#!/bin/bash

GO_VERSION="1.12.12"

bash < <(curl -s -S -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer)

source $HOME/.gvm/scripts/gvm

gvm install go$GO_VERSION -B
gvm use go$GO_VERSION --default

export GOROOT_BOOTSTRAP=$GVM_ROOT/gos/go$GO_VERSION
export NEW_GOROOT=$GVM_ROOT/gos/go$GO_VERSION

#sed -i "s#export GVM_ROOT.*#export GVM_ROOT; GVM_ROOT=\"$HOME\"/.gvm#g" ~/.gvm/environments/default
#sed -i "s#export GOROOT.*#export GOROOT; GOROOT=\"$NEW_GOROOT\"#g" ~/.gvm/environments/default

mkdir ~/gowork
mkdir ~/gowork/bin
echo "export GOPATH=$HOME/gowork" >> ~/.bashrc
echo "export NEW_GOROOT=$GVM_ROOT/gos/go$GO_VERSION" >> ~/.bashrc
echo "export GOROOT_BOOTSTRAP=$GVM_ROOT/gos/go$GO_VERSION" >> ~/.bashrc
echo "export PATH=$PATH:$GOPATH/bin" >> ~/.bashrc

source ~/.bashrc
