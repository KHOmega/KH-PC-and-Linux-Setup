#!/bin/bash
cd
mkdir ~/SeedSetup
mkdir ~/Documents/SeedGenerator
cd ~/SeedSetup
wget https://github.com/OpenKH/OpenKh/releases/download/latest/openkh.zip
wget https://github.com/tommadness/KH2Randomizer/releases/latest/download/KH2.Randomizer.exe
wget https://download.visualstudio.microsoft.com/download/pr/f6b6c5dc-e02d-4738-9559-296e938dabcb/b66d365729359df8e8ea131197715076/windowsdesktop-runtime-6.0.36-win-x64.exe
unzip openkh.zip -d ~/Documents
mv ~/Documents/openkh ~/Documents/OpenKH
mv ~/SeedSetup/KH2.Randomizer.exe ~/Documents/SeedGenerator
mv ~/SeedSetup/windowsdesktop-runtime-6.0.36-win-x64.exe ~/Downloads
cd
rm -rf ~/SeedSetup
exit
