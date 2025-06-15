#!/bin/bash
echo "Hello! Welcome to the scuffed auto-Re:Fined installer by KHOmega! (ChimeraOS Script by Raflos10)"
sleep 3
echo "During this setup, a version of Winetricks will replace the one included within Protontricks taken from an install of Heroic Games Launcher. This is because it has the necessary dependencies needed to run Re:Fined, Panacea, and LuaBackend on your Linux device."
sleep 3
echo "If you have any questions, please feel free to reach out in the Re:Fined server in the #linux-and-steamdeck channel!"
sleep 3
echo "If you have not done so, please make sure you have deleted your old prefix and created a new one using Proton-GE 9.23 as stated in the guide, or else this script will not work correctly!"
sleep 3
echo "Starting the script now!"
sleep 3
cd
echo "Creating temporary directory..."
mkdir refined_temp
cd refined_temp
echo "Downloading Winetricks from KH-PC-and-Linux-Setup..."
sleep 3
wget https://raw.githubusercontent.com/KHOmega/KH-PC-and-Linux-Setup/refs/heads/main/refined_specific/winetricks
echo "Moving downloaded winetricks to Protontricks's directory..."
sleep 3
cp ~/refined_temp/winetricks ~/.local/share/flatpak/app/com.github.Matoking.protontricks/current/active/files/bin/
echo "Installing all Re:Fined dependencies into 2552430..."
sleep 3
flatpak run com.github.Matoking.protontricks 2552430 -q -f dotnet48 vcrun6 xaudio29 win11
echo "Making a backup of KINGDOM HEARTS II FINAL MIX.exe"
sleep 3
cd ~/.local/share/Steam/steamapps/common/KINGDOM\ HEARTS\ -HD\ 1.5+2.5\ ReMIX-
mkdir backup
mv KINGDOM\ HEARTS\ II\ FINAL\ MIX.exe backup/KINGDOM\ HEARTS\ II\ FINAL\ MIX.exe
echo "Moving WaitTitleProject to the Backup EXE Folder..."
mv WaitTitleProject.exe backup/WaitTitleProject.exe
echo "Downloading Re:Fined [Steam] from GitHub and placing it into game directory..."
sleep 3
cd ~/refined_temp
wget https://github.com/KH-ReFined/KH-ReFined/releases/download/v4.00/KH2-STEAM.exe
mv KH2-STEAM.exe ~/.local/share/Steam/steamapps/common/KINGDOM\ HEARTS\ -HD\ 1.5+2.5\ ReMIX-/KINGDOM\ HEARTS\ II\ FINAL\ MIX.exe
sleep 3
echo "Cleaning up setup files..."
sleep 3
cd
rm -r refined_temp
echo "All complete! Please continue on with the guide and make sure you switch to Proton 9.0-4!"
