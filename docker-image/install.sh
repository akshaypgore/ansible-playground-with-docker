#!/bin/bash

set -ex

LIST_OF_APPS="iputils-ping net-tools openssh-server openssh-client vim"
apt-get update  # To get the latest package lists
apt-get upgrade -y  # To upgrade all packages to the latest version
apt-get install -y $LIST_OF_APPS
mkdir -p /root/ansible
ssh-keygen -t rsa -q -N "" -f ~/.ssh/id_rsa
sed -i 's/\#PubkeyAuthentication/PubkeyAuthentication/g' /etc/ssh/sshd_config
cp ~/.ssh/id_rsa.pub ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
