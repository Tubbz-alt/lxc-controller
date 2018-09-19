# lxc-controller
LXC-based SDN controller environment

# Instruction
1. Run step1.sh to install LXC<br />

	./step1.sh<br />
  
  - Add '[user_id] ALL=NOPASSWD:ALL' at the end of /etc/sudoers<br />
  - Set conbr0 and swbr0 in /etc/network/interfaces and reboot the system (see samples/interfaces)<br />

2. Run step2.sh to create a lxc containers and install ONOS<br />

	./step2.sh<br />

  - Add the contents of ~/lxc-controller/onos/lxc/onos1 at the end of /var/lib/lxc/onos1/config<br />
  - Add the contents of ~/lxc-controller/onos/lxc/onos2 at the end of /var/lib/lxc/onos2/config<br />
  - Add the contents of ~/lxc-controller/onos/lxc/onos3 at the end of /var/lib/lxc/onos3/config<br />

3. Run ~/lxc-start.sh<br />

4. Run ~/lxc-attach.sh onos1<br />
  - Add 'ubuntu ALL=NOPASSWD:ALL' at the end of /etc/sudoers<br />
  - Install Oracle Java 8 (see ~/lxc-controller/onos/java-install.sh)<br />
  - Set eth0 with a static IP address (10.0.0.11)<br />

5. Run ~/lxc-attach.sh onos2<br />
  - Add 'ubuntu ALL=NOPASSWD:ALL' at the end of /etc/sudoers<br />
  - Install Oracle Java 8 (see ~/lxc-controller/onos/java-install.sh)<br />
  - Set eth0 with a static IP address (10.0.0.12)<br />

6. Run ~/lxc-attach.sh onos3<br />
  - Add 'ubuntu ALL=NOPASSWD:ALL' at the end of /etc/sudoers<br />
  - Install Oracle Java 8 (see ~/lxc-controller/onos/java-install.sh)<br />
  - Set eth0 with a static IP address (10.0.0.13)<br />

7. Run 'onos-package'<br />
8. Run 'onos-push-keys $OC1'<br />
9. Run 'onos-push-keys $OC2'<br />
10. Run 'onos-push-keys $OC3'<br />
11. Run 'stc teardown'<br />
12. Run 'stc setup'<br />

# Requirement
Optimized for Ubuntu 14.04<br />
Need at least two interfaces for the control plane and the data plane respectively<br />
