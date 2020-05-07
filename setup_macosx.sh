#!/bin/bash
# WARNING:        1. Use are you own risk!  This script comes with no warranty, express or implied.
#                 2. DO NOT run as root.  I could have done things different ways, and this keeps scripts uniform and build capable.
# OTHER NOTES:    1. If you are behind a webfilter and need weblogin, try w3m.
#                 2. This script is definitely a work in progress.
#
echo ===============================
echo   Update the system first!!!
echo ===============================
softwareupdate --install --all
#
# make some directories used in script
mkdir -p ~/System/
#
# install homebrew (https://brew.sh/)
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
#
# install dart (https://webdev.dartlang.org/tools/sdk#install)
brew tap dart-lang/dart
brew install dart
#
# install youtube-dl (https://rg3.github.io/youtube-dl/download.html)
sudo curl -L https://yt-dl.org/downloads/latest/youtube-dl -o /usr/local/bin/youtube-dl
sudo chmod a+rx /usr/local/bin/youtube-dl

#
# update system first
#apt-get update
#apt-get -y dist-upgrade
#rpi-update
# clean up everything, drives are big, but images should be small.  :-)
#apt-get -y autoremove
#apt-get clean
#
# install some tools
#apt-get -y install mc mutt git git-doc
#
# download script for "unattended" updating
#cd /home/System/scripts/
#wget https://raw.githubusercontent.com/rmdegennaro/scripts/master/update_bruteforce_rpi.sh
#chmod a+x /home/System/scripts/update_bruteforce_rpi.sh
#
# install stuff I like
#
# clean up
#sudo apt-get -y autoremove
#sudo apt-get clean
