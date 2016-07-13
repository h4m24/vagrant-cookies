#!/bin/bash
set -eu

# remove stdin error related messages
export DEBIAN_FRONTEND=noninteractive


ROLES="blank_role"

ROLES="`echo $ROLES| awk -F":" '{print $2}' | sed 's#,#  #g'`"



# set hostname
echo  "192.168.66.66   salt.zipjet.live salt" >> /etc/hosts



# Install Salt
curl -L https://bootstrap.saltstack.com -o install_salt.sh
sh install_salt.sh

# install packages
apt-get install python-pip -y ;pip install python-gnupg

# Config Salt
echo  "master: salt.zipjet.live" >> /etc/salt/minion
echo -e  "grains:\n  roles:" >> /etc/salt/minion

for ROLE in $ROLES
  do
    echo '  '"  - $ROLE" >> /etc/salt/minion
done



service salt-minion restart
