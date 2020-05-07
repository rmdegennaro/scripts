#!/bin/bash
# WARNING:        1. Use are you own risk!  This script comes with no warranty, express or implied.
#                 2. DO NOT run as root.  I could have done things different ways, and this keeps scripts uniform and build capable.
# OTHER NOTES:    1. If you are behind a webfilter and need weblogin, try w3m.
#                 2. Nothing more at this point.  Should figure out way to add in updates relevant to individual setup.
#
echo ===============================
echo   Retreiving updated packages
echo ===============================
apt-get update
echo ===============================
echo   Installing updated packages
echo ===============================
apt-get -y dist-upgrade
echo ===============================
echo   update firmware/kernel
echo ===============================
rpi-update
echo ===============================
echo   Cleaning up packages
echo ===============================
apt-get -y autoremove
apt -y autoremove
apt-get clean
echo ===============================
echo   manual updates
echo ===============================
