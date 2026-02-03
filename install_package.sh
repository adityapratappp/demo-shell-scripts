#!/bin/bash
<<info 
This script will install the package that you pass in the arguments

e.g., ./install_package.ssh nginx
./install_package.ssh docker.io
./install_package.ssh unzip
info

echo "installing $1"
sudo apt-get update
sudo apt-get install $1 -y
echo "Installation Completed"
