#!/bin/bash
# WARNING:        1. Use are you own risk!  This script comes with no warranty, express or implied.
#                 2. DO NOT run as root.  I could have done things different ways, and this keeps scripts uniform and build capable.
# OTHER NOTES:    1. For various personal reasons and some technical reasons, I've rebuilt the "Linux Beta" a few times with this script.
#                 2. This works on X86 chromebooks, still testing on ARM chromebooks.
#
echo ===============================
echo   Update the system first!!!
echo ===============================
sudo apt-get update
sudo apt-get -y install git git-doc git-cola apt-utils apt-file
sudo apt-get -y dist-upgrade
sudo apt-get -y autoremove
sudo apt-get clean
echo ===============================
echo   Install stuff I like:
echo ===============================
echo --- Internet Tools
sudo apt-get -y install firefox filezilla
echo --- Office Tools
sudo apt-get -y install cups-pdf simple-scan libreoffice libreoffice-pdfimport libreoffice-templates openclipart-libreoffice
echo --- Content Consumption
sudo apt-get -y install clementine vlc mediainfo mediainfo-gui
echo --- Content Creation
sudo apt-get -y install calibre blender handbrake handbrake-cli audacity kid3 lame ripperx gimp inkscape hugo
echo --- System Tools
sudo apt-get -y install mc nano wget curl unrar gnome-software gnome-packagekit gnome-tweak-tool
sudo apt-get -y install dolphin kate systemsettings5 kde-config-gtk-style
echo --- Developement Tools
#sudo apt-get -y install kdevelop
#sudo apt-get -y install eclipse
curl -L https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt-get update
sudo apt-get -y install atom
#echo --- install Android Studio and Flutter
#sudo apt-get install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386
#echo now go to https://developer.android.com/studio/install#linux
#echo then go to https://flutter.dev/docs/get-started/install/linux
#echo --- install node.js & npm
#sudo apt-get -y install nodejs npm
#sudo npm install npm@latest -g
#echo --- install dart environment
#sudo apt-get update
#sudo apt-get -y install apt-transport-https
#sudo sh -c 'wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
#sudo sh -c 'wget -qO- https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
#sudo apt-get update
#sudo apt-get -y install dart
#echo --- install ruby on rails & jekyll
#check ruby stuff already installed
#dpkg-query -l '*ruby*'
#sudo apt-get -y install ruby-dev
#gem install jekyll bundler
echo configure git:
echo git config --global user.name "YOUR NAME"
echo git config --global user.email "YOUR EMAIL ADDRESS"
#
######################
# install other stuff
######################
#echo --- install youtube-dl
#curl -L https://yt-dl.org/latest/youtube-dl -o /usr/bin/youtube-dl
#sudo chmod 755 /usr/bin/youtube-dl
#
echo ===============================
echo   Now clean up stuff again
echo ===============================
sudo apt-get -y autoremove
sudo apt-get clean
