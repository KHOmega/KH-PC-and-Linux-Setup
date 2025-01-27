#!/bin/bash
echo "Attempting to get permission to access Protontrick's directory..."
sudo chmod 777 /var/lib/flatpak/app/com.github.Matoking.protontricks/current/active/files/bin/
cd
echo "Downloading Winetricks from KH-PC-and-Linux-Setup..."
wget https://raw.githubusercontent.com/KHOmega/KH-PC-and-Linux-Setup/refs/heads/main/refined_specific/winetricks
echo "Backing up KH Prefix folder..."
mv /home/deck/.steam/steam/steamapps/compatdata/2552430/ /home/deck/.steam/steam/steamapps/compatdata/2552430.bak/
mkdir /home/deck/.steam/steam/steamapps/compatdata/2552430/
echo "Moving winetricks to Protontricks's directory..."
cp /home/deck/winetricks /var/lib/flatpak/app/com.github.Matoking.protontricks/current/active/files/bin/
 echo "Installing all Re:Fined prerequisites into 1.5/2.5's Prefix folder..."
flatpak run com.github.Matoking.protontricks 2552430 -q -f dotnet40 dotnet48 dotnet6 dotnet7 dotnet8 dotnet9 dotnetdesktop6 dotnetdesktop7 dotnetdesktop8 dotnetdesktop9 vcrun2022 vcrun6 xaudio29
echo "Now downloading Re:Fined 2.60 (Steam) from GitHub..."
cd
wget https://github.com/KH-ReFined/KH-ReFined/releases/download/v2.60/KH2-ReFined-STEAM-v2.60.zip
echo "Making a backup of the vanilla KH2 exe..."
cd /home/deck/.local/share/Steam/steamapps/common/KINGDOM\ HEARTS\ -HD\ 1.5+2.5\ ReMIX-
mkdir Backup\ EXE
mv KINGDOM\ HEARTS\ II\ FINAL\ MIX.exe Backup\ EXE/KINGDOM\ HEARTS\ II\ FINAL\ MIX.exe.bak
cd
echo "Unzipping ReFined and placing the files into KH 1.5/2.5..."
unzip KH2-ReFined-STEAM-v2.60.zip -d /home/deck/.local/share/Steam/steamapps/common/KINGDOM\ HEARTS\ -HD\ 1.5+2.5\ ReMIX-
echo "Deleting zip file..."
cd
rm KH2-ReFined-STEAM-v2.60.zip
rm winetricks
rm ReFinedPreReq.sh
echo "Done! You may now exit."
