#!/bin/bash
cd
mkdir ~/SeedSetup
mkdir ~/Documents/SeedGenerator
cd ~/SeedSetup
wget https://github.com/OpenKH/OpenKh/releases/download/latest/openkh.zip
wget https://github.com/tommadness/KH2Randomizer/releases/latest/download/KH2.Randomizer.exe
wget https://builds.dotnet.microsoft.com/dotnet/WindowsDesktop/8.0.20/windowsdesktop-runtime-8.0.20-win-x64.exe
unzip openkh.zip -d ~/Documents
mv ~/Documents/openkh ~/Documents/OpenKH
mv ~/SeedSetup/KH2.Randomizer.exe ~/Documents/SeedGenerator
mv ~/SeedSetup/windowsdesktop-runtime-8.0.20-win-x64.exe ~/Downloads
cd
rm -rf ~/SeedSetup
exit
