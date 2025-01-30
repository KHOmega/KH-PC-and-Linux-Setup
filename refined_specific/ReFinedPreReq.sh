#!/bin/bash
echo "Hello! Welcome to the scuffed auto-Re:Fined installer by KHOmega!"
sleep 3
echo "During this setup, we will be downloading a version of Winetricks that has the ability to install the necessary dependencies needed to run Re:Fined, Panacea, and LuaBackend on your Linux device!"
sleep 3
echo "If you have any questions, please feel free to reach out in the Re:Fined server in the #linux-and-steamdeck channel!"
sleep 3
echo "If you have not done so, please make sure you have deleted your old prefix as stated in the guide, or else this script might not work correctly!"
sleep 3
echo "If you do not have a password set, please exit this script and setup a password for Konsole by using passwd!"
sleep 3
echo "Starting the script now!"
sleep 3
echo "Attempting to get permission to access Protontrick's directory..."
sleep 3
sudo chmod -R 777 /var/lib/flatpak/app/com.github.Matoking.protontricks/current/active/files/bin/
cd
echo "Downloading Winetricks from KH-PC-and-Linux-Setup..."
sleep 3
wget https://raw.githubusercontent.com/KHOmega/KH-PC-and-Linux-Setup/refs/heads/main/refined_specific/winetricks
echo "Moving downloaded winetricks to Protontricks's directory..."
sleep 3
cp ~/winetricks /var/lib/flatpak/app/com.github.Matoking.protontricks/current/active/files/bin/
echo "Installing all Re:Fined dependencies into 2552430..."
sleep 3
flatpak run com.github.Matoking.protontricks 2552430 -q -f dotnet40 dotnet48 dotnet6 dotnet7 dotnet8 dotnet9 dotnetdesktop6 dotnetdesktop7 dotnetdesktop8 dotnetdesktop9 vcrun2022 vcrun6 xaudio29
flatpak run com.github.Matoking.protontricks 2552430 -q -f win11
echo "Downloading Re:Fined [Steam] from GitHub..."
sleep 3
cd
wget https://github.com/KH-ReFined/KH-ReFined/releases/download/v2.60/KH2-ReFined-STEAM-v2.60.zip
echo "Making a backup of KINGDOM HEARTS II FINAL MIX.exe"
sleep 3
cd ~/.local/share/Steam/steamapps/common/KINGDOM\ HEARTS\ -HD\ 1.5+2.5\ ReMIX-
mkdir Backup\ EXE
mv KINGDOM\ HEARTS\ II\ FINAL\ MIX.exe Backup\ EXE/KINGDOM\ HEARTS\ II\ FINAL\ MIX.exe.bak
cd
echo "Unzipping ReFined and placing the files into KH 1.5/2.5..."
sleep 3
unzip KH2-ReFined-STEAM-v2.60.zip -d ~/.local/share/Steam/steamapps/common/KINGDOM\ HEARTS\ -HD\ 1.5+2.5\ ReMIX-
echo "Cleaning up setup files..."
sleep 3
cd
rm KH2-ReFined-STEAM-v2.60.zip
rm winetricks
rm ReFinedPreReq.sh
echo "All complete! Please continue on with the guide and make sure you switch to Proton Experimental!"
