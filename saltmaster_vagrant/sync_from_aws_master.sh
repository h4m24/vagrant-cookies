#clean current files
rm -rf srv-salt/*  etc-salt/*

# git clone formulas
cd srv-salt/
git clone git@github.com:zipjet/machines_description.git
cd ../



# get all configs

ssh ubuntu@intwash-ie-salt " sudo cp -r /etc/salt /tmp; sudo chown -R ubuntu.ubuntu /tmp/salt"
scp -r  ubuntu@intwash-ie-salt:/tmp/salt/* saltmaster_etc/
