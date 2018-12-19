#!/bin/bash

# karaf and maven

cd
mkdir Downloads Applications
cd Downloads
wget http://archive.apache.org/dist/karaf/3.0.5/apache-karaf-3.0.5.tar.gz
wget http://archive.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
tar -zxvf apache-karaf-3.0.5.tar.gz -C ../Applications/
tar -zxvf apache-maven-3.3.9-bin.tar.gz -C ../Applications/

# Oracle java 8

sudo apt-get install -y software-properties-common
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java8-installer oracle-java8-set-default

# ONOS source code (v1.6)

cd
sudo apt-get install -y git
git clone -b onos-1.6 https://github.com/opennetworkinglab/onos
cd onos

# Set configurations

. ~/onos/tools/dev/bash_profile
cp ~/lxc-controller/onos/cell/testbed ~/onos/tools/test/cells

echo >> ~/.bashrc
echo ". ~/onos/tools/dev/bash_profile" >> ~/.bashrc
echo "cell testbed" >> ~/.bashrc

# ONOS build

cd ~/onos
mvn clean install

# Dependencies

ssh-keygen -t rsa
sudo apt-get install -y zip unzip
