#!/bin/bash

# install lxc

sudo apt-get update
sudo apt-get install -y bridge-utils lxc

# set bridges and reboot

echo
echo "Add '[user_id] ALL=NOPASSWD:ALL' at the end of /etc/sudoers"
echo
echo "Set conbr0 and swbr0 in /etc/network/interfaces"
echo "(Refer to samples/interfaces as a reference)"
echo
echo "Then, reboot the system"
echo
