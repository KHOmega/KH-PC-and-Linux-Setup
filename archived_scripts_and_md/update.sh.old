#!/bin/bash
echo "Starting update."
sleep 3
echo "Creating temporary directory..."
cd
mkdir refined_temp
echo "Making a backup of KINGDOM HEARTS II FINAL MIX.exe"
sleep 3
cd ~/.local/share/Steam/steamapps/common/KINGDOM\ HEARTS\ -HD\ 1.5+2.5\ ReMIX-
mkdir backup
mv KINGDOM\ HEARTS\ II\ FINAL\ MIX.exe backup/KINGDOM\ HEARTS\ II\ FINAL\ MIX.exe
echo "Moving WaitTitleProject to the backup Folder..."
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
echo "Update Complete. Please make sure to update the mod via OpenKH as well, or re-run the game with version.dll and MOD_DATA deleted from your game directory."
