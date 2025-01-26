#!/bin/bash
echo "Copying Winetricks from Heroic's directory and placing it into Protontricks..."
cp /home/deck/.var/app/com.heroicgameslauncher.hgl/config/heroic/tools/winetricks /home/deck/.local/share/flatpak/app/com.github.Matoking.protontricks/current/active/files/bin/
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
echo "Done! You may now exit."
