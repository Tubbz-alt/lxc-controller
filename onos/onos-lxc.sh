#!/bin/bash

# create lxc containers

sudo lxc-create -n onos1 -t ubuntu
sudo lxc-create -n onos2 -t ubuntu
sudo lxc-create -n onos3 -t ubuntu

# add onos configurations to the configuration of each containter

cat lxc/onos1 | sudo tee -a /var/lib/lxc/onos1/config
cat lxc/onos2 | sudo tee -a /var/lib/lxc/onos2/config
cat lxc/onos3 | sudo tee -a /var/lib/lxc/onos3/config

# start the containers

sudo lxc-start -n onos1 -d
sudo lxc-start -n onos2 -d
sudo lxc-start -n onos3 -d
