#!/usr/bin/env bash

echo "---- PROVISIONING VM ----"

activatorVersion="1.3.2"

sudo yum update

sudo yum -y install java-1.7.0-openjdk-devel
sudo yum -y install wget

#install typesafe activator
cd /home/vagrant
wget http://downloads.typesafe.com/typesafe-activator/$activatorVersion/typesafe-activator-$activatorVersion.zip

unzip -d /home/vagrant typesafe-activator-$activatorVersion.zip
rm typesafe-activator-$activatorVersion.zip

#add activator to environment variables
echo "export PATH=/home/vagrant/activator-$activatorVersion:\$PATH" >> ~/.bashrc

#load the newly configured bash
source ~/.bashrc

echo "---- PROVISIONING COMPLETED ----"