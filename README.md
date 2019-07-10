# lxc-controller
LXC-based SDN controller environment

# Instruction
1. Run step1.sh to install LXC<br />

	./step1.sh<br />
  
  - Add '[user_id] ALL=NOPASSWD:ALL' at the end of /etc/sudoers<br />
  - Configure conbr0 and swbr0 in /etc/network/interfaces and reboot the machine (refer to samples/interfaces)<br />

2. Run step2.sh to create a lxc containers and install ONOS<br />

	./step2.sh<br />

3. Run ~/lxc-attach.sh onos1<br />
  - Add 'ubuntu ALL=NOPASSWD:ALL' at the end of /etc/sudoers<br />
  - Install Oracle Java 8 (refer to ~/lxc-controller/onos/java-install.sh)<br />

4. Run ~/lxc-attach.sh onos2<br />
  - Add 'ubuntu ALL=NOPASSWD:ALL' at the end of /etc/sudoers<br />
  - Install Oracle Java 8 (refer to ~/lxc-controller/onos/java-install.sh)<br />

5. Run ~/lxc-attach.sh onos3<br />
  - Add 'ubuntu ALL=NOPASSWD:ALL' at the end of /etc/sudoers<br />
  - Install Oracle Java 8 (refer to ~/lxc-controller/onos/java-install.sh)<br />

6. Run 'stc setup'<br />

# Requirement
Optimized for Ubuntu 14.04<br />
Need at least two more interfaces for the control and data planes respectively<br />
