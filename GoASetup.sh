#!/bin/bash
cd
mkdir ~/SeedSetup
mkdir ~/Documents/SeedGenerator
cd ~/SeedSetup
wget https://github.com/OpenKH/OpenKh/releases/download/latest/openkh.zip
wget https://github.com/tommadness/KH2Randomizer/releases/latest/download/KH2.Randomizer.exe
wget https://download.visualstudio.microsoft.com/download/pr/a1da19dc-d781-4981-84e9-ffa0c05e00e9/46f3cd2015c27a0e93d7c102a711577e/windowsdesktop-runtime-6.0.31-win-x64.exe
unzip openkh.zip -d ~/Documents
mv ~/Documents/openkh ~/Documents/OpenKH
mv ~/SeedSetup/KH2.Randomizer.exe ~/Documents/SeedGenerator
mv ~/SeedSetup/windowsdesktop-runtime-6.0.31-win-x64.exe ~/Downloads
cd
rm -rf ~/SeedSetup
exit
