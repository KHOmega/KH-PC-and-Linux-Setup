#!/bin/bash
echo "Updating OpenKH Mods Manager..."
cd
mkdir OpenKHTemp
cd OpenKHTemp
wget https://github.com/OpenKH/OpenKh/releases/latest/download/openkh.zip
unzip -o ~/OpenKHTemp/openkh.zip -d ~/OpenKHTemp/
rsync -avh --progress --checksum ~/OpenKHTemp/openkh/ ~/Documents/openkh/
cd
rm -rf ~/OpenKHTemp
echo "OpenKH Mods Manager should now be updated."
exit
