# lxc-controller
LXC-based controller environment

# Introduction
1. Run step1.sh to install LXC

	./step1.sh
  
  Attach '[user_id] ALL=NOPASSWD:ALL' at the end of /etc/sudoers
  Set conbr0 and swbr0 in /etc/network/interfaces and reboot the system
  (see sample/interfaces as a reference)

2. Run step2.sh to create a lxc containers and install ONOS

	./step2.sh

  Attach ~/lxc-controller/onos/lxc/onos1 at the end of /var/lib/lxc/onos1/config
  Attach ~/lxc-controller/onos/lxc/onos2 at the end of /var/lib/lxc/onos2/config
  Attach ~/lxc-controller/onos/lxc/onos3 at the end of /var/lib/lxc/onos3/config

  Run ~/lxc-start.sh

  Run ~/lxc-attach.sh onos1
    Attach 'ubuntu ALL=NOPASSWD:ALL' at the end of /etc/sudoers
    Install Oracle Java 8 (see ~/lxc-controller/onos/java-install.sh)
    Set eth0 with a static IP address

  Run ~/lxc-attach.sh onos2
    Attach 'ubuntu ALL=NOPASSWD:ALL' at the end of /etc/sudoers
    Install Oracle Java 8 (see ~/lxc-controller/onos/java-install.sh)
    Set eth0 with a static IP address

  Run ~/lxc-attach.sh onos3
    Attach 'ubuntu ALL=NOPASSWD:ALL' at the end of /etc/sudoers
    Install Oracle Java 8 (see ~/lxc-controller/onos/java-install.sh)
    Set eth0 with a static IP address

  Run 'onos-package'
  Run 'onos-push-keys $OC1'
  Run 'onos-push-keys $OC2'
  Run 'onos-push-keys $OC3'
  Run 'stc teardown'
  Run 'stc setup'
