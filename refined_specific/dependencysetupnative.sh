#!/bin/bash

echo "Re:Fined Dependency Installer by KHOmega (Native)"
sleep 3
cd "$HOME"
wget https://raw.githubusercontent.com/KHOmega/KH-PC-and-Linux-Setup/refs/heads/main/refined_specific/add_registry.bat
echo "Now installing..."
sleep 3
protontricks 2552430 -q -f dotnet8 dotnetdesktop8 vcrun6 ucrtbase2019 xaudio29
protontricks -c '"$WINE" cmd.exe /c Z:$(echo "$HOME/add_registry.bat" | sed "s|/|\\\\|g")' 2552430
sleep 3
echo "Cleaning up setup files..."
sleep 3
rm "add_registry.bat"
echo "Complete. You may now close this window."
