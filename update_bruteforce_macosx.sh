#!/bin/bash
# WARNING:        1. Use are you own risk!  This script comes with no warranty, express or implied.
#                 2. DO NOT run as root.  I could have done things different ways, and this keeps scripts uniform and build capable.
# OTHER NOTES:    1. If you are behind a webfilter and need weblogin, try w3m.
#                 2. Sometimes this acts weird with the Mac OS updates; I need to figure out why/what.
#
echo ===============================
echo   Updating mac os x packages
echo ===============================
sudo softwareupdate --install --all
echo ===============================
echo   Fetching brew package lists
echo ===============================
brew update
echo ===============================
echo   Updating brew packages
echo ===============================
brew upgrade
echo ===============================
echo   Cleaning up packages
echo ===============================
brew cleanup
echo ===============================
echo   Source updates
echo ===============================
echo /Users/System/scripts/
cd /Users/System/scripts/
sudo git pull
echo /Users/System/SysArtwork/
cd /Users/System/SysArtwork/
sudo git pull
echo ===============================
echo   manual updates
echo ===============================
flutter upgrade
sudo youtube-dl -U
