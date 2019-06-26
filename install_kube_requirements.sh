#!/bin/bash

if ! which minikube 2>/dev/null ; then
  curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64 \
    && chmod +x minikube && sudo mv minikube /usr/local/bin/.
fi

if ! which docker-machine-driver-kvm2 >/dev/null ; then
  curl -LO https://storage.googleapis.com/minikube/releases/latest/docker-machine-driver-kvm2 \
    && sudo install docker-machine-driver-kvm2 /usr/local/bin/
fi

if ! which kubectl 2>/dev/null ; then
  curl -LO https://storage.googleapis.com/kubernetes-release/release/$(curl -s https://storage.googleapis.com/kubernetes-release/release/stable.txt)/bin/linux/amd64/kubectl \
    && chmod +x kubectl && sudo mv kubectl /usr/local/bin/.
fi

# https://github.com/operator-framework/operator-sdk/blob/master/doc/user/install-operator-sdk.md
RELEASE_VERSION=v0.8.1
if ! which operator-sdk 2>/dev/null ; then
  curl -LO curl -OJL https://github.com/operator-framework/operator-sdk/releases/download/${RELEASE_VERSION}/operator-sdk-${RELEASE_VERSION}-x86_64-linux-gnu \
    && chmod +x operator-sdk-${RELEASE_VERSION}-x86_64-linux-gnu && sudo mv operator-sdk-${RELEASE_VERSION}-x86_64-linux-gnu /usr/local/bin/operator-sdk
fi

if ! which dep 2>//dev/null ; then
   curl https://raw.githubusercontent.com/golang/dep/master/install.sh | sh
fi

if ! which virsh 2>/dev/null ; then
  sudo yum -y install libvirt libvirt-devel libvirt-daemon-kvm qemu-kvm
  sudo yum -y libvirt-client virt-manager
  sudo systemctl enable libvirtd.service
  sudo systemctl start libvirtd.service
  sudo systemctl status libvirtd.service
  sudo usermod -a -G libvirt $(whoami)
  newgrp libvirt
  groups
fi
