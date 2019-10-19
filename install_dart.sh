#!/bin/bash
#
# install dart environment
sudo apt-get update
sudo apt-get -y install apt-transport-https
sudo sh -c 'curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
sudo sh -c 'curl https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
sudo apt-get update
sudo apt-get -y install dart
#
# clean up
sudo apt-get -y autoremove
sudo apt-get clean
