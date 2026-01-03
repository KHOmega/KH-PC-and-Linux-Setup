# Installation

> [!IMPORTANT]
> - This guide assumes you are installing this on Steam Deck! For other OS's, please adjust accordingly. 
>   - If you are using a different Linux distro, please proceed to [Non-SteamOS Linux Script Workaround](https://github.com/KHOmega/KH-PC-and-Linux-Setup/blob/main/refined-steam-linux-setup.md#non-steamos-linux-script-workaround).
> - This guide also assumes that you have some knowledge in how to navigate Linux based OSs!
> - ***Steam Deck***: Please launch into Desktop Mode and use a mouse and keyboard! While this is doable without a mouse or keyboard, it will be frustrating!
> - As of this writing, the only version with a Re:Fined release is ``KINGDOM HEARTS II FINAL MIX``.
> - If you are ***updating*** an existing installation of Re:Fined and were already using this guide, [please click here](https://github.com/KHOmega/KH-PC-and-Linux-Setup/blob/main/refined-steam-linux-setup.md#updating-refined).
> - If you are using an ***Epic Games Store*** or an unofficial copy, [please follow this tutorial](https://github.com/KHOmega/KH-PC-and-Linux-Setup/blob/main/refined-egs-linux-setup.md).

## Prerequisites
To get started, the following will be utilized:

- [**KINGDOM HEARTS -HD 1.5+2.5 ReMIX-**](https://store.steampowered.com/app/2552430/KINGDOM_HEARTS_HD_1525_ReMIX/)
   - This guide assumes you have the game downloaded to your ***Internal Storage***.

- [**OpenKH**](https://github.com/OpenKH/OpenKh/releases)
   - Will be downloaded from the `OpenKHSetup.sh` Script

- **Protontricks (Flatpak)**
   - Download and run once.

- **Flatseal**
   - Only necessary if you have your game installed on an external storage device.
      - Please [see here.](https://steamcommunity.com/app/221410/discussions/0/4615641262428372654/#c4615641262428405703)

# Setting Up OpenKH's Prefix

- Step 1: In Konsole, enter and run the following code:
  - `wget https://raw.githubusercontent.com/KHOmega/KH-PC-and-Linux-Setup/refs/heads/main/refined_specific/OpenKHSetup.sh -O - | sh`

- Step 2: In Steam, click `Add a Game` on the bottom right, select `Add a Non-Steam Game...`, select `Browse`, navigate to `~/Documents/OpenKH`, select `OpenKH.Tools.ModsManager.exe`, and click `Open`. Then click `Add Selected Programs`.

![OpenKH Steam Library](https://github.com/user-attachments/assets/6b7af2e3-3d06-4acb-9e02-2c0f1003c58f)

- Step 3: Right Click `OpenKH.Tools.ModsManager.exe` in your Steam Library, and click `Properties`
   - Click `Compatibility`, and then select `Force the use of a specific Steam Play compatibility tool`, and select `Proton Experimental`
   - ***Optional:*** Rename `OpenKH.Tools.ModsManager.exe` to something more cleaner such as `OpenKH Mods Manager` in the properties window.

- Step 4: Load up OpenKH. This will generate a prefix and it will error out telling you that **.NET 8** needs to be installed. Select `No` and proceed to the next step.

- Step 5: Navigate to your `Downloads` folder and open `windowsdesktop-runtime-8.0.22-win-x64.exe`.
   - Protontricks should now open up. When it does, locate OpenKH on the game selection and select it to install **.NET 8** to it's prefix.

- After a couple minutes, open OpenKH Mods Manager again and proceed with the tutorial.

# Setting up OpenKH:

In this section, we will be setting up OpenKH's Mods Manager to patch the necessary files to run Re:Fined.

- Step 1: A window will pop up saying "Welcome to OpenKH Mods Manager".

  On the `Welcome to OpenKH Mods Manager` screen, click `Next >`, then under `Game edition`, select `PC Release`, then select `Global`, and then `Steam` under the next two opions.

  Select `Detect Installations`. If this fails to find where your game is installed, please manually find the folder where the game is installed
  - This is usually located in `~\.local\share\Steam\steamapps\common\KINGDOM HEARTS -HD 1.5+2.5 ReMix-`

- Step 5: Click `Next >` and choose `Install Panacea`. We will be using Panacea for this tutorial.
   - OpenKH Panacea allows you to load your mods without modifying the game files.

- Step 6: OpenKH will ask if you want to install `Lua Backend`. This is *not* necessary for Re:Fined, so feel free to click `Next >` if you do not wish to install it.

- Step 7: - On the next screen, it will ask if you want to `Launch Games Directly (Steam)`. Skip this, as this method does not work on Linux as it bypasses dll overrides, which will result in mods not loading.

- Step 8: Make sure `KH2-43GB` is checked, and then click `Extract game data`. This may take roughly *thirty* or more minutes.
   - **This step is necessary!**
   - If you encounter any errors extracting the game files, please either try again, or re-download your game!

- Step 9: After extraction, click `Next >` and then click `Finish`

When you are done, you should be at this screen!

![image](https://github.com/KHOmega/KH-Linux-Setup/assets/93887977/3c0d26c6-1ef5-4f3e-ba84-9e29a8e0291a)

# Downloading and Patching in Re:Fined files using OpenKH:

In this section, we will be downloading the necessary patches to properly run Re:Fined.

- Step 1: In OpenKH, select the `Mods` button on the top, and then select `Install a new mod`.
   - Under `Add a new mod from GitHub`, we will be pasting in `KH-ReFined/KH2-MAIN`, and then click `Install`.
   - **Optional**: Additional Re:Fined Mods, such as Voice Packs, Heartless Colors, and Vanilla OST can be found [here](https://github.com/KH-ReFined/KH-ReFined?tab=readme-ov-file#kingdom-hearts-ii-1).
      - *Note*: If you download the additional add-ons, please make sure to place the add-ons ***above*** the main patch!

![image](https://github.com/KHOmega/KH-Linux-Setup/assets/93887977/f34df394-93a1-4186-a3b4-5d57204bd665)

- Step 2: You will see `Kingdom Hearts II - Re:Fined` added into your mods list. Tick the little box so a checkmark appears in it.

- Click `Mod Loader` ->  `Build Only`

![image](https://github.com/KHOmega/KH-Linux-Setup/assets/93887977/ab132d5d-5f2b-4732-8eea-f42418dbfa70)

- Step 3: After everything is done installing, you can exit out of OpenKH.

# Downloading and Installing Re:Fined Dependencies Script:

- Step 1: Run the following code in `Terminal / Konsole` depending on your distro:
  - `wget https://raw.githubusercontent.com/KHOmega/KH-PC-and-Linux-Setup/refs/heads/main/refined_specific/dependencysetup.sh -O - | sh`

- If for some reason `add_registry.bat` fails to install into your prefix, please add the following to your launch options in Steam:
    - `WINEDLLOVERRIDES="version=n,b" %command%`

# Launching Re:Fined.

Congratulations! You are very close into launching Re:Fined!

***STEAM DECK / 16:10 DEVICES ONLY DO NOT SKIP***
   - add `-noaspect` to your Launch Options in the game properties. (If you are using any other DLL Overrides and/or launching any other commands, please put `-noaspect` ***AFTER*** `%command%`

<img width="629" height="163" alt="image" src="https://github.com/user-attachments/assets/fc08a0c5-4360-43c8-9c71-a832c37ccde7" />

- Step 1: Click play on `KINGDOM HEARTS -HD 1.5+2.5 HD ReMIX-` and select `KINGDOM HEARTS II FINAL MIX`.

And there you go! Kingdom Hearts II Final Mix - Re:Fined has been successfully installed! You will know it has worked when you see `Re:Fined by TopazTK` on the title screen.

![title screen](https://github.com/user-attachments/assets/b34ee907-0247-4c0b-94d0-fd76385fb3a4)

----

### Optional:

If you wish to also have Discord RPC (via [EnderIce2's rpc-bridge](https://github.com/EnderIce2/rpc-bridge)), and LuaBackend as well:
- Step 1: Right click `KINGDOM HEARTS -HD 1.5+2.5 HD ReMIX-` and then `Properties...`
   - `WINEDLLOVERRIDES="discord_game_sdk,LuaBackend=n,b" %command%`

<img width="622" height="135" alt="image" src="https://github.com/user-attachments/assets/1d21733a-7dae-4650-aa18-ef52727cfcb3" />

----

# Working Screenshots
<p align="center">
<img width="1920" height="1080" alt="Screenshot 2025-09-02 150943" src="https://github.com/user-attachments/assets/d7035075-1f0c-4f2b-b83a-3c76ee68d842" />
<img width="1920" height="1080" alt="Screenshot 2025-09-02 150911" src="https://github.com/user-attachments/assets/2c70d4d1-d93e-4416-89f8-49f1cd5d03fa" />
<img width="1920" height="1080" alt="Screenshot 2025-09-02 150847" src="https://github.com/user-attachments/assets/1a0bfa3d-a37e-48de-a32c-a21b88518194" />
<img width="3440" height="1440" alt="image" src="https://github.com/user-attachments/assets/0f4a1924-762a-4d87-a802-3f778da1a0c4" />
</p>

- *Note*, if controller inputs are not working, simply either tap your screen, or hold down the `STEAM` button and click down the right touch pad.

# Updating Re:Fined

- Step 1: Make sure OpenKH Mods Manager is fully updated by running this script:
   - `wget https://raw.githubusercontent.com/KHOmega/KH-PC-and-Linux-Setup/refs/heads/main/misc_scripts/updateopenkh -O - | sh`
   - If necessary, please also re-run the wizard [Alt+W] and uninstall and re-install Panacea.

- Step 2:
   - Open OpenKH Mods Manager, and if there is an update available, download the update (you can see them by looking for the `Update available` note) and [build the patch as you did previously](#downloading-and-patching-in-refined-files-using-openkh). 

![image](https://github.com/KHOmega/KH-Linux-Setup/assets/93887977/10045628-4da7-4b4a-a86f-d619a30155f1)

# Non-SteamOS Linux Script Workaround

- Please enter the following commands in Terminal:
   - `cd ~`
   - `wget https://raw.githubusercontent.com/KHOmega/KH-PC-and-Linux-Setup/refs/heads/main/refined_specific/add_registry.bat`
   - `flatpak run com.github.Matoking.protontricks 2552430 -q -f dotnet8 dotnetdesktop8 ucrtbase2019 vcrun6 xaudio29`
   - `flatpak run --command=protontricks-launch com.github.Matoking.protontricks --appid 2552430 /home/$USER/Desktop/add_registry.bat`
   - `rm add_registry.bat`
    
If necessary, please also enter this into the game's properties in Steam:
- `WINEDLLOVERRIDES="version=n,b" SteamDeck=1 %command%`
