#!/bin/bash
# Remove any older backup folder
rm -rf ../mods-backup
# Make a new backup folder
mkdir ../mods-backup
# Move all the mods currently in this directory into the backup folder
mv *.jar ../mods-backup
# Use the modlist.txt file to query the most recent version of each of your mods
wget --trust-server-names -i modlist.txt
# Make a diff list showing anything that has changed
diff -r ./ ../mods-backup | grep ./
