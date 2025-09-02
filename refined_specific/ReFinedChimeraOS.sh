#!/bin/bash
echo "Hello! Welcome to the scuffed auto-Re:Fined installer by KHOmega! (ChimeraOS Script by Raflos10)"
sleep 3
echo "During this setup, a version of Winetricks will replace the one included within Protontricks taken from an install of Heroic Games Launcher. This is because it has the necessary dependencies needed to run Re:Fined, Panacea, and LuaBackend on your Linux device."
sleep 3
echo "If you have any questions, please feel free to reach out in the Re:Fined server in the #linux-and-steamdeck channel!"
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
echo "Installing dependencies into 2552430..."
sleep 3
flatpak run com.github.Matoking.protontricks 2552430 -q -f dotnet8 dotnetdesktop8 vcrun6 xaudio29 win11
sleep 3
echo "Cleaning up setup files..."
sleep 3
cd
rm -r refined_temp
echo "All complete!"
