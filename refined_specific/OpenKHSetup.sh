#!/bin/bash
cd
mkdir ~/OpenKHSetup
cd ~/OpenKHSetup
wget https://github.com/OpenKH/OpenKh/releases/download/latest/openkh.zip
wget https://builds.dotnet.microsoft.com/dotnet/WindowsDesktop/8.0.20/windowsdesktop-runtime-8.0.20-win-x64.exe
unzip openkh.zip -d ~/Documents
mv ~/Documents/openkh ~/Documents/OpenKH
mv ~/OpenKHSetup/windowsdesktop-runtime-6.0.31-win-x64.exe ~/Downloads
cd
rm -rf ~/OpenKHSetup
exit
