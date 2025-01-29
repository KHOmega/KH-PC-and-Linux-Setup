#!/bin/bash
echo "If you do not have a password set, please exit this script and setup a password for Konsole by using passwd!"
echo "Attempting to get permission to access Protontrick's directory..."
sudo chmod -R 777 /var/lib/flatpak/app/com.github.Matoking.protontricks/current/active/files/bin/
cd
echo "Downloading Winetricks from KH-PC-and-Linux-Setup..."
wget https://raw.githubusercontent.com/KHOmega/KH-PC-and-Linux-Setup/refs/heads/main/refined_specific/winetricks
echo "Moving downloaded winetricks to Protontricks's directory..."
cp ~/winetricks /var/lib/flatpak/app/com.github.Matoking.protontricks/current/active/files/bin/
echo "Installing all Re:Fined prerequisites into 2552430..."
flatpak run com.github.Matoking.protontricks 2552430 -q -f dotnet40 dotnet48 dotnet6 dotnet7 dotnet8 dotnet9 dotnetdesktop6 dotnetdesktop7 dotnetdesktop8 dotnetdesktop9 vcrun2022 vcrun6 xaudio29 win11
echo "Downloading Re:Fined [Steam] from GitHub..."
cd
wget https://github.com/KH-ReFined/KH-ReFined/releases/download/v2.60/KH2-ReFined-STEAM-v2.60.zip
echo "Making a backup of KINGDOM HEARTS II FINAL MIX.exe"
cd ~/.local/share/Steam/steamapps/common/KINGDOM\ HEARTS\ -HD\ 1.5+2.5\ ReMIX-
mkdir Backup\ EXE
mv KINGDOM\ HEARTS\ II\ FINAL\ MIX.exe Backup\ EXE/KINGDOM\ HEARTS\ II\ FINAL\ MIX.exe.bak
cd
echo "Unzipping ReFined and placing the files into KH 1.5/2.5..."
unzip KH2-ReFined-STEAM-v2.60.zip -d ~/.local/share/Steam/steamapps/common/KINGDOM\ HEARTS\ -HD\ 1.5+2.5\ ReMIX-
echo "Deleting setup files..."
cd
rm KH2-ReFined-STEAM-v2.60.zip
rm winetricks
rm ReFinedPreReq.sh
echo "Done! You may now exit!"
