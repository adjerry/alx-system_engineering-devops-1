#!/bin/bash
#script that installs and configures mysql on webserver1 and webserver2

sudo apt update
sudo apt install wget -y
wget https://dev.mysql.com/get/mysql-apt-config_0.8.12-1_all.deb

#install the repository
sudo dpkg -i mysql-apt-config_0.8.12-1_all.deb

sudo apt-get update

#install MySQL5.7 client and server
sudo apt install -f mysql-client=5.7* mysql-community-server=5.7* mysql-server=5.7*

