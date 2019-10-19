#!/bin/bash
#
# install kodi
sudo apt-get -y install software-properties-common
sudo add-apt-repository ppa:team-xbmc/ppa
sudo apt-get update
sudo apt-get -y install kodi
#
# clean up
sudo apt-get -y autoremove
sudo apt-get clean
