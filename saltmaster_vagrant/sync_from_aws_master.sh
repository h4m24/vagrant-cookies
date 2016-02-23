#clean current files
rm -rf srv-salt/*  etc-salt/*
# git clone formulas
cd srv-salt/
git clone git@github.com:zipjet/machines_description.git


# get all configs
scp -r  ubuntu@intwash-ie-salt:/etc/salt/* etc-salt/
