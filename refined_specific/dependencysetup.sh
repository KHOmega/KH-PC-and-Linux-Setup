#!/bin/bash
echo "Re:Fined Dependency Installer by KHOmega"
sleep 3
cd ~
sleep 3
cd Desktop
wget https://raw.githubusercontent.com/KHOmega/KH-PC-and-Linux-Setup/refs/heads/main/refined_specific/add_registry.bat
echo "Now installing..."
sleep 3
flatpak run com.github.Matoking.protontricks 2552430 -q -f dotnet8 dotnetdesktop8 vcrun6 ucrtbase2019 xaudio29
flatpak run --command=protontricks-launch com.github.Matoking.protontricks --appid 2552430 /home/$USER/Desktop/add_registry.bat
sleep 3
echo "Cleaning up setup files..."
sleep 3
rm add_registry.bat
echo "Complete. You may now close this window."
