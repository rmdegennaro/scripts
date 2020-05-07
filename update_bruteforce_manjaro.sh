#!/bin/bash
# WARNING:        1. Use are you own risk!  This script comes with no warranty, express or implied.
#                 2. DO NOT run as root.  I could have done things different ways, and this keeps scripts uniform and build capable.
# OTHER NOTES:    1. If you are behind a webfilter and need weblogin, try w3m.
#                 2. One should check the orphaned packages.  I will eventually ask about piping that out to terminal.
#
sudo pacman -Syyu
sudo paccache -rvk3
sudo mkdir -p /home/System/scripts/updates/
sudo pacman -Qdtq > /home/System/scripts/updates/orphaned_packages_removed.txt
sudo pacman -Rsn $(pacman -Qdtq)
yaourt -Syua
yaourt -Qdt
