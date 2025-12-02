#!/bin/bash
cd
mkdir ~/OpenKHSetup
cd ~/OpenKHSetup
wget https://github.com/OpenKH/OpenKh/releases/download/latest/openkh.zip
wget https://builds.dotnet.microsoft.com/dotnet/WindowsDesktop/8.0.22/windowsdesktop-runtime-8.0.22-win-x64.exe
unzip openkh.zip -d ~/Documents
mv ~/OpenKHSetup/windowsdesktop-runtime-8.0.22-win-x64.exe ~/Downloads
cd
rm -rf ~/OpenKHSetup
exit
