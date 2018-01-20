#!/bin/bash

# create lxc containers for ONOS

onos/onos-lxc.sh

# install ONOS

onos/onos-install.sh

# copy lxc-related scripts to HOME

cp bin/* ~

# add onos configurations to the configuration of each containter

echo
echo "Add the contents of ~/lxc-controller/onos/lxc/onos1 at the end of /var/lib/lxc/onos1/config"
echo "Add the contents of ~/lxc-controller/onos/lxc/onos2 at the end of /var/lib/lxc/onos2/config"
echo "Add the contents of ~/lxc-controller/onos/lxc/onos3 at the end of /var/lib/lxc/onos3/config"
echo
echo "Start onos1, onos2, and onos3 containers"
echo
echo "Add 'ubuntu ALL=NOPASSWD:ALL' at the end of /etc/sudoers"
echo "Install Oracle Java 8 (see ~/lxc-controller/onos/java-install.sh)"
echo "Set eth0 with a static IP address in each container"
echo
echo "$ onos-package"
echo
echo "$ onos-push-keys $OC1"
echo "$ onos-push-keys $OC2"
echo "$ onos-push-keys $OC3"
echo
echo "$ stc teardown"
echo "$ stc setup"
echo
