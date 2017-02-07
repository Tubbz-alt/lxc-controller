#!/bin/bash

# create lxc containers for ONOS

onos/onos-lxc.sh

# install ONOS

onos/onos-install.sh

# copy lxc-related scripts to HOME

cp bin/* ~

# configure eth0 in each container

echo "set eth0 with a static IP address in each container"
