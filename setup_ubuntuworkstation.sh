#!/bin/bash
# WARNING:        1. Use are you own risk!  This script comes with no warranty, express or implied.
#                 2. DO NOT run as root.  I could have done things different ways, and this keeps scripts uniform and build capable.
# OTHER NOTES:    1. I use this on Kubuntu, Lubuntu, and elementary OS
#                 2. if you are behind a webfilter and need weblogin, try w3m
#
echo ===============================
echo   Update the system first!!!
echo ===============================
apt-get update
apt-get -y install aptitude git
aptitude -y --full-resolver safe-upgrade
apt-get -y upgrade
apt-get -y autoremove
apt-get clean
echo ===============================
echo   Install stuff I like:
echo ===============================
echo --- Internet Tools
sudo apt-get -y install firefox filezilla
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt -y install ./google-chrome*.deb
sudo apt-get -y install -f
echo --- Office Tools
sudo apt-get -y install gscan2pdf cups-pdf simple-scan libreoffice-impress libreoffice-pdfimport libreoffice-templates openclipart-libreoffice openclipart2-libreoffice
echo --- Media Consumption
sudo apt-get -y install clementine vlc mediainfo mediainfo-gui
echo --- Media Editting
sudo apt-get -y install blender handbrake handbrake-cli audacity kid3 lame ripperx gimp inkscape
echo --- System Tools
sudo apt-get -y install mc mutt pv curl git git-doc go-mtpfs mtpfs mtp-tools wine-stable ubuntu-restricted-extras unetbootin unrar marble cpu-checker
echo --- Make your system pretty
sudo apt-get -y install ubuntu-wallpapers kde-wallpapers kde-wallpapers-default kdewallpapers peace-wallpapers tropic-wallpapers lubuntu-artwork xubuntu-wallpapers
echo --- Developement Tools
sudo apt-get -y install kdevelop eclipse git-cola
curl -L https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update
sudo apt-get -y install atom
# echo --- install node.js & npm
#sudo apt-get -y install nodejs
#sudo npm install npm@latest -g
# echo --- install dart environment
#sudo apt-get update
#sudo apt-get -y install apt-transport-https
#sudo sh -c 'curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
#sudo sh -c 'curl https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
#sudo apt-get update
#sudo apt-get -y install dart
# echo --- install ruby on rail & jekyll
#check ruby stuff already installed
#dpkg-query -l '*ruby*'
#sudo apt-get -y install ruby-dev
#gem install jekyll bundler
#
######################
# install other stuff
######################
# echo --- install kodi
#sudo apt-get -y install software-properties-common
#sudo add-apt-repository ppa:team-xbmc/ppa
#sudo apt-get update
#sudo apt-get -y install kodi
#
# echo --- install java
#add-apt-repository -y ppa:webupd8team/java
#apt-get update
#apt-get -y install oracle-java7-installer
#apt-get -f -y install
#
echo ===============================
echo   Now clean up stuff again
echo ===============================
sudo apt-get -y autoremove
sudo apt-get clean
