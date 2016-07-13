#!/bin/bash
set -e
# remove stdin error related messages
export DEBIAN_FRONTEND=noninteractive


# Add repo
wget -O - https://repo.saltstack.com/apt/ubuntu/14.04/amd64/latest/SALTSTACK-GPG-KEY.pub | sudo apt-key add -
echo 'deb http://repo.saltstack.com/apt/ubuntu/14.04/amd64/latest trusty main' >> /etc/apt/sources.list

# install salt-master
apt-get update -qq
apt-get -o Dpkg::Options::="--force-confold" install salt-master  -qq -y

# replace with already in place configs
sleep 1s
rm -rf /etc/salt
cp -r  /vagrant/provisioning/conf_files/saltmaster_etc /etc/salt
service salt-master restart
