#!/bin/bash
#
# simple script to rsync local media directory to location, assumes source is master copy that is fully synced
#
# sample local directories, the whole source dir is sync'ed to a dir named the same in the destination dir
#vSourceDirectory="/home/someuser/MediaDir"
#vDestinationDirectory="/media/someuser/MediaLocation/"
# sample local from remote, assumes ssh keys setup or type password each time
#vDestinationDirectory="/home/someuser/GDrive/"
#vSourceDirectory="someuser@127.0.0.1:/home/Shared/Media"
# sample local to remote, assumes ssh keys setup
#vSourceDirectory="/home/someuser/GDrive/Media"
#vDestinationDirectory="someuser@127.0.0.1:/home/SomeSharedDir/"
#rsync --verbose --recursive --update --copy-unsafe-links --times --whole-file --delete-during --force --human-readable --progress $vSourceDirectory $vDestinationDirectory

# redoing script so can separately define:
#  0) checks for config file and creates one if not found (~/.config/rsync_folders.conf)
#  1) folder structures to copy (in matrix in rsync_folders.conf)
#  2) locations available as source or destination for folder structures (also in rsync_folders.conf)
#  3) choose default behaviour
#  4) choose "quick options" so just hit number
#  5) manually select file structure, source, and destination for one time execution
