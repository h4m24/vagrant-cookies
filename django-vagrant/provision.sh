#!/bin/bash
apt-get update -qq
apt-get install python3-pip tree screen figlet -qq -y
pip3 install django
echo 'alias python="python3"' >> /etc/profile
echo 'alias pip="pip3"' >> /etc/profile



#
# cd /opt
# virtualenv env
# source env/bin/activate
# pip install django
# pip install djangorestframework
# pip install pygments  # We'll be using this for the code highlighting
echo ###########################################
figlet welcome   to  django dev box
echo ###########################################
echo to run dev server tun this command
echo python manage.py runserver 0.0.0.0:8000
