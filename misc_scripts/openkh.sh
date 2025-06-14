#!/bin/bash
echo "Updating OpenKH..."
cd
mkdir temp
cd temp
wget https://github.com/OpenKH/OpenKh/releases/download/latest/openkh.zip
unzip openkh.zip
mv openkh OpenKH
cp ~/temp/OpenKH -rf ~/Documents
cd
rm -rf ~/temp
echo "Done!"
exit
