#!/bin/bash

# Oracle java 8

sudo apt-get install -y wget
wget -P /tmp/ http://www.sdx4u.net/downloads/jdk-8u202-linux-x64.tar.gz

sudo mkdir -p /usr/lib/java
sudo tar xvfz /tmp/jdk-8u202-linux-x64.tar.gz -C /usr/lib/java/

echo "PATH=$PATH:/usr/lib/java/jdk1.8.0_202/bin" | sudo tee -a /etc/environment
echo "JAVA_HOME=/usr/lib/java/jdk1.8.0_202/" | sudo tee -a /etc/environment
echo "JRE_HOME=/usr/lib/java/jdk1.8.0_202/jre" | sudo tee -a /etc/environment

. /etc/environment

sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/java/jdk1.8.0_202/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/java/jdk1.8.0_202/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/java/jdk1.8.0_202/bin/javaws" 1
