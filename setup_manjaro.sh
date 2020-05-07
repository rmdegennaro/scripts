#!/bin/bash
# WARNING:        1. Use are you own risk!  This script comes with no warranty, express or implied.
#                 2. DO NOT run as root.  I could have done things different ways, and this keeps scripts uniform and build capable.
# OTHER NOTES:    1. If you are behind a webfilter and need weblogin, try w3m.
#                 2. I like Manjaro, but use it infrequently.  I need to revisit this script.
#
echo ===============================
echo   Update the system first!!!
echo ===============================
sudo pacman-mirrors -g
sudo pacman -Syyu
# install some tools
sudo pacman -S findutils mlocate git mc mutt gparted wget base-devel git yaourt
# make some directories used in script
sudo mkdir -p /root/setup
sudo mkdir -p /home/System/scripts
#
# clean up (allow for downgrade command)
sudo paccache -rvk3 # keeps last three versions of package
cd /root/setup
sudo pacman -Qdtq > ./orphaned_packages_removed.txt
sudo pacman -Rsn $(pacman -Qdtq)
#
# choose your desktop
#sudo pacman -S lxqt openbox qterminal oxygen-icons xscreensaver manjaro-pulse pavucontrol
#sudo pacman -S kde kdeplasma-applets-plasma-nm
#
# choose your apps
sudo pacman -S firefox filezilla
sudo pacman -S gimp inkscape
sudo pacman -S audacity clementine kid3-qt lame
sudo pacman -S vlc blender handbrake mediainfo mediainfo-gui
sudo pacman -S libreoffice
sudo pacman -S menda-themes-dark menda-themes mediterraneannight-theme qtcurve-qt4 qtcurve-qt5
sudo pacman -S atom
# install some "Arch User Repository" packages
yaourt google-chrome
yaourt ripperx
#
# install node.js & npm
#sudo pacman -S nodejs npm
#sudo npm install npm@latest -g
#
# download script for "unattended" updating
cd /home/System/scripts/
sudo wget https://raw.githubusercontent.com/rmdegennaro/scripts/master/update_bruteforce_manjaro.sh
sudo chmod a+x /home/System/scripts/update_bruteforce_manjaro.sh


####################
# everything below is copied from ubunut script
####################
#
# install stuff I like
#sudo apt-get -y install kdevelop eclipse
#sudo apt-get -y install ubuntu-wallpapers kde-wallpapers kde-wallpapers-default kdewallpapers peace-wallpapers tropic-wallpapers lubuntu-artwork xubuntu-wallpapers
# no longer in Kubuntu 16.04 or above
#sudo apt-get -y install kscreensaver screensaver-default-images
#sudo apt-get -y install libreoffice-impress libreoffice-pdfimport libreoffice-kde libreoffice-templates openclipart-libreoffice openclipart2-libreoffice
#sudo apt-get -y install gimp inkscape
#sudo apt-get -y install audacity clementine kid3 lame ripperx
#sudo apt-get -y install vlc blender mediainfo mediainfo-gui
#sudo apt-get -y install wine kubuntu-restricted-extras unetbootin unrar marble
#
# for Ubuntu Mate on Raspberry Pi 2/3
#sudo apt-get install gddrescue xz-utils
#
# install dart environment
#sudo apt-get update
#sudo apt-get -y install apt-transport-https
#sudo sh -c 'curl https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -'
#sudo sh -c 'curl https://storage.googleapis.com/download.dartlang.org/linux/debian/dart_stable.list > /etc/apt/sources.list.d/dart_stable.list'
#sudo apt-get update
#sudo apt-get -y install dart
#
# install ruby on rail & jekyll
#check ruby stuff already installed
#dpkg-query -l '*ruby*'
#sudo apt-get install ruby-dev
#gem install jekyll bundler
#
# install kodi
#sudo apt-get -y install software-properties-common
#sudo add-apt-repository ppa:team-xbmc/ppa
#sudo apt-get update
#sudo apt-get -y install kodi
#
# clean up
#sudo apt-get -y autoremove
#sudo apt-get clean
