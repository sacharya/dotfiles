#!/bin/bash

set -x

if [ -d ".env" ]; then 
	echo "virtualenv exists, exiting..."
	exit 1
else
	echo "virtualenv not found. installing..."
fi

if [[ $EUID -ne 0 ]]; then
	sudo apt-get update
	sudo apt-get install python-dev python-pip python-virtualenv
else
	apt-get update
	apt-get install python-dev python-pip python-virtualenv    
fi

virtualenv ~/.env
#source ~/.env/bin/activate



