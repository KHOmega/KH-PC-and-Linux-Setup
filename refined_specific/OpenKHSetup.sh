#!/bin/bash
# This three commands makes sure you're in your root folder and will make a dedicated OpenKH Setup Folder
cd
mkdir ~/OpenKHSetup
cd ~/OpenKHSetup
# The following two commands will download the latest OpenKH download and .NET 8.0.26 into that new folder.
wget https://github.com/OpenKH/OpenKh/releases/download/latest/openkh.zip
wget https://builds.dotnet.microsoft.com/dotnet/WindowsDesktop/8.0.26/windowsdesktop-runtime-8.0.26-win-x64.exe
# This will then unzip OpenKH and place it into your Documents folder, and delete the unzipped folder.
unzip openkh.zip -d ~/Documents
rm -r -f openkh.zip
exit
