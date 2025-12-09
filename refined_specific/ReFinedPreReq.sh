#!/bin/bash
echo "Re:Fined Dependency Installer (SteamOS/Bazzite) by KHOmega"
sleep 3
echo "During this setup, we will upgrade the included `winetricks` to the latest version from their official repository.. This is because it has the necessary dependencies needed to run Re:Fined, Panacea, and LuaBackend on your Linux device."
sleep 3
echo "If you have any questions, please feel free to reach out in the Re:Fined server in the #linux-and-steamdeck channel!"
sleep 3
echo "If you do not have a password set, please exit this script and setup a password for Konsole by using passwd!"
sleep 3
echo "Starting the script now!"
sleep 3
echo "Attempting to get permission to access Protontrick's directory, you will need to type in your password!"
sleep 3
sudo chmod -R 777 /var/lib/flatpak/app/com.github.Matoking.protontricks/current/active/files/bin/
cd
echo "Creating temporary directory..."
mkdir refined_temp
cd refined_temp
echo "Downloading Winetricks from KH-PC-and-Linux-Setup..."
sleep 3
wget https://raw.githubusercontent.com/Winetricks/winetricks/refs/heads/master/src/winetricks
echo "Moving downloaded winetricks to Protontricks's directory..."
sleep 3
cp ~/refined_temp/winetricks /var/lib/flatpak/app/com.github.Matoking.protontricks/current/active/files/bin/
echo "Installing dependencies into 2552430..."
sleep 3
flatpak run com.github.Matoking.protontricks 2552430 -q -f dotnet8 dotnetdesktop8 vcrun6 ucrtbase2019 xaudio29 win11
sleep 3
cd ~/refined_temp
sleep 3
echo "Cleaning up setup files..."
sleep 3
cd
rm -r refined_temp
echo "All complete!"
