#!/bin/bash
# WARNING:        1. Use are you own risk!  This script comes with no warranty, express or implied.
#                 2. DO NOT run as root.  I could have done things different ways, and this keeps scripts uniform and build capable.
# OTHER NOTES:    1. If you are behind a webfilter and need weblogin, try w3m.
#                 2. Not much else, I have to revisit this script.
#
echo ===============================
echo   Update the system first!!!
echo ===============================
sudo apt-get update
sudo apt-get -y install aptitude
sudo aptitude -y --full-resolver safe-upgrade
sudo apt-get -y upgrade
sudo apt-get -y autoremove
sudo apt-get clean
#
# install "standard" apps for server
sudo apt-get -y install mc
sudo apt-get -y install w3m w3m-img
sudo apt-get -y install mutt
sudo apt-get -y install git git-doc
#
# install webmin
#echo "" >> /etc/apt/sources.list
#echo "# repositories added for webmin installation/update" >> /etc/apt/sources.list
#echo "deb http://download.webmin.com/download/repository sarge contrib" >> /etc/apt/sources.list
#echo "deb http://webmin.mirror.somersettechsolutions.co.uk/repository sarge contrib" >> /etc/apt/sources.list
#cd /root
#sudo wget http://www.webmin.com/jcameron-key.asc
#sudo apt-key add /root/jcameron-key.asc
#sudo apt-get update
#sudo apt-get -y install webmin
#
# install "maybe" apps for server
#sudo apt-get -y install openssh-server
#sudo apt-get -y install screen # some versions don't have it installed by default
#
# cleanup after everything is done
sudo apt-get -y autoremove
sudo apt-get clean
