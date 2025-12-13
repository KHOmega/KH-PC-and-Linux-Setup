#!/bin/bash
echo "Updating OpenKH Mods Manager..."
cd
mkdir OpenKHTemp
cd OpenKHTemp
wget https://github.com/OpenKH/OpenKh/releases/latest/download/openkh.zip
unzip -o ~/OpenKHTemp/openkh.zip -d ~/OpenKHTemp/
rsync -avh --progress --checksum ~/OpenKHTemp/openkh/ /home/em/Documents/openkh/
cd
rm -rf ~/OpenKHTemp
echo "OpenKH Mod's Manager should now be updated."
exit
