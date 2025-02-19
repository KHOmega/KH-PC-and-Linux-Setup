#!/bin/bash
cd
mkdir ~/OpenKHSetup
cd ~/OpenKHSetup
wget https://github.com/OpenKH/OpenKh/releases/download/latest/openkh.zip
wget https://download.visualstudio.microsoft.com/download/pr/a1da19dc-d781-4981-84e9-ffa0c05e00e9/46f3cd2015c27a0e93d7c102a711577e/windowsdesktop-runtime-6.0.31-win-x64.exe
unzip openkh.zip -d ~/Documents
mv ~/Documents/openkh ~/Documents/OpenKH
mv ~/OpenKHSetup/windowsdesktop-runtime-6.0.31-win-x64.exe ~/Downloads
cd
rm -rf ~/OpenKHSetup
exit
