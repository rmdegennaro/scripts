#!/bin/bash
# WARNING:        1. Use are you own risk!  This script comes with no warranty, express or implied.
#                 2. DO NOT run as root.  I could have done things different ways, and this keeps scripts uniform and build capable.
# OTHER NOTES:    1. If you are behind a webfilter and need weblogin, try w3m.
#                 2. I use this on Kubuntu, Lubuntu, elementary OS, and Ubuntu Server.
#
echo ===============================
echo   Updating script\(s\), does not relaunch yet
echo ===============================
cd /home/System/scripts/
sudo git pull
echo "CTRL-C if you think updated script should be run"
read -p "Otherwise, press any key to continue."
echo ===============================
echo   Retreiving updated packages
echo ===============================
sudo apt update
echo ===============================
echo   Installing updated packages
echo ===============================
sudo apt upgrade -y
echo ===============================
echo   Cleaning up packages
echo ===============================
sudo apt autoremove -y
sudo apt clean
echo ===============================
echo   Updating source-based
echo ===============================
echo --- SysArtwork \(in /home/System/SysArtwork/\)
cd /home/System/SysArtwork/
sudo git pull
echo --- Updating Flutter
flutter upgrade
echo ===============================
echo   Updating other stuff
echo ===============================
echo --- sudo youtube-dl -U
sudo youtube-dl -U
