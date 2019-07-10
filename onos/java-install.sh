#!/bin/bash

# Oracle java 8

sudo apt-get install -y wget
wget -P /tmp/ http://www.sdx4u.net/downloads/jdk-8u202-linux-x64.tar.gz

sudo mkdir -p /usr/lib/jvm
sudo tar xvfz /tmp/jdk-8u202-linux-x64.tar.gz -C /usr/lib/jvm/

echo "PATH=$PATH:/usr/lib/jvm/jdk1.8.0_202/bin" | sudo tee -a /etc/environment
echo "JAVA_HOME=/usr/lib/jvm/jdk1.8.0_202/" | sudo tee -a /etc/environment
echo "CLASSPATH=JAVA_HOME=/usr/lib/jvm/jdk1.8.0_202/lib" | sudo tee -a /etc/environment

sudo update-alternatives --install "/usr/bin/java" "java" "/usr/lib/jvm/jdk1.8.0_202/bin/java" 1
sudo update-alternatives --install "/usr/bin/javac" "javac" "/usr/lib/jvm/jdk1.8.0_202/bin/javac" 1
sudo update-alternatives --install "/usr/bin/javaws" "javaws" "/usr/lib/jvm/jdk1.8.0_202/bin/javaws" 1

#sudo apt-get update
#sudo apt-get install -y software-properties-common
#sudo add-apt-repository -y ppa:webupd8team/java

#sudo apt-get update
#sudo apt-get install -y oracle-java8-installer oracle-java8-set-default
