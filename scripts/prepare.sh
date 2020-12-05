#!/bin/bash

# Download all the required packages for taiga.io env

sudo apt-get update
sudo apt-get install -y build-essential binutils-doc autoconf flex bison libjpeg-dev
sudo apt-get install -y libfreetype6-dev zlib1g-dev libzmq3-dev libgdbm-dev libncurses5-dev
sudo apt-get install -y automake libtool curl git tmux gettext
sudo apt-get install -y nginx

sudo apt-get install -y postgresql-10 postgresql-contrib-10
sudo apt-get install -y postgresql-doc-10 postgresql-server-dev-10

sudo apt-get install -y python3 python3-pip python3-dev virtualenvwrapper
sudo apt-get install -y libxml2-dev libxslt-dev
sudo apt-get install -y libssl-dev libffi-dev

sudo adduser taiga
sudo adduser taiga sudo
sudo su taiga
cd ~

sudo -u postgres createuser taiga
sudo -u postgres createdb taiga -O taiga --encoding='utf-8' --locale=en_US.utf8 --template=template0
