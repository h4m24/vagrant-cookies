
echo  'deb http://us.archive.ubuntu.com/ubuntu trusty main universe' >> /etc/apt/sources.list
apt-get update -qq
apt-get install   mitmproxy figlet  libnss3-tools git -y -qq
