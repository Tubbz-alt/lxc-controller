# lxc-controller
LXC-based controller environment

# Introduction
1. Run step1.sh to install LXC

	./step1.sh
  
  Then, set conbr0 and swbr0 in /etc/network/interfaces and reboot the system
  (see sample/interfaces as a reference)

2. Run step2.sh to create a lxc containers and install ONOS

	./step2.sh
  
3. Set eth0 with a static IP address in each container
