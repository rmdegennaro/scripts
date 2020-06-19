#!/bin/bash
# WARNING:        1. Use are you own risk!  This script comes with no warranty, express or implied.
#                 2. DO NOT run as root.  I could have done things different ways, and this keeps scripts uniform and build capable.
# OTHER NOTES:    1. Updating Linux in Chrome OS is not handled by anything besides manual actions.
#                 2. This works on X86 chromebooks, still testing on ARM chromebooks.
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
sudo apt-get update
echo ===============================
echo   Installing updated packages
echo ===============================
sudo apt-get dist-upgrade
echo ===============================
echo   Cleaning up packages
echo ===============================
sudo apt-get -y autoremove
sudo apt clean
echo ===============================
echo   Updating source-based
echo ===============================
echo --- Updating Flutter
flutter upgrade
echo ===============================
echo   Updating other stuff
echo ===============================
echo --- sudo youtube-dl -U
sudo youtube-dl -U
