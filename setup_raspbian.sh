#!/bin/bash
# WARNING:        1. Use are you own risk!  This script comes with no warranty, express or implied.
#                 2. DO NOT run as root.  I could have done things different ways, and this keeps scripts uniform and build capable.
# OTHER NOTES:    1. If you are behind a webfilter and need weblogin, try w3m.
#                 2. Not much else because Raspberry Pis are used for so many different things.
#
echo ===============================
echo   Update the system first!!!
echo ===============================
sudo apt --fix-broken install
sudo apt-get update
sudo apt-get -y dist-upgrade
sudo rpi-update
# clean up everything, drives are big, but images should be small.  :-)
sudo apt-get -y autoremove
sudo apt-get clean
#
# install some tools
sudo apt-get -y install mc mutt git git-doc mlocate
#
# install stuff I like
#right now, nothing besides tools above
#
# clean up
sudo apt-get -y autoremove
sudo apt-get clean
