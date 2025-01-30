# Installation

> [!IMPORTANT]
> - This guide assumes you are installing this on Steam Deck! For other OS's, please adjust accordingly.
>   - The script below assumes you are running this on Steam Deck.
> - This guide also assumes that you have some knowledge in how to navigate Linux based OSs!
> - ***Steam Deck***: Please launch into Desktop Mode and use a mouse and keyboard! While this is doable without a mouse or keyboard, it will be frustrating!
> - As of this writing, the only version with a Re:Fined release is ``KINGDOM HEARTS II FINAL MIX``.
> - If you are using an ***Epic Games Store*** or an unofficial copy, [please follow this tutorial](https://github.com/KHOmega/KH-PC-and-Linux-Setup/blob/main/refined-egs-linux-setup.md).

## Pre-requisites
To get started you need to download and install the following:

- [**KINGDOM HEARTS -HD 1.5+2.5 ReMIX-**](https://store.steampowered.com/app/2552430/KINGDOM_HEARTS_HD_1525_ReMIX/)
   - This guide assumes you have the game downloaded to your ***Internal Storage***.
   - If not, please syslink it to your Internal Storage's game directory.
      - [eg. `~/.local/Steam/steamapps/common/KINGDOM HEARTS -HD 1.5+2.5 ReMIX-/`]

- [**OpenKH**](https://github.com/OpenKH/OpenKh/releases)
   - Download `openkh.zip` from the latest numbered build.
   - Extract OpenKH somewhere safe on your system.

- **ProtonUp-QT (Flatpak)**
   - Download from Discover

- **Protontricks (Flatpak)**
   - Download from Discover

- Password set in Konsole
   - Enter `passwd` in Konsole to setup a password if you haven't already.

# Downloading and Installing GE-Proton 9-23:

In this section, we will be downloading **GE-Proton 9-23**.

- Step 1: Launch **ProtonUp-QT**

- Step 2: Under "Install For", select "Steam", and then click `Add Version`
   - From here, under "Compatibility tool:" select GE-Proton. Then under "Version:", select the latest version of **GE-Proton 9-23**, and then click `Install`.

![image](https://github.com/user-attachments/assets/598130ad-1580-4c2c-aa7a-022aeb0f3b22)

- Step 3: After it is done installing, exit out of ProtonUp-QT ***AND*** Steam. Then, re-open Steam.

![Exit Steam](https://github.com/user-attachments/assets/60dc174e-888c-4a9f-8076-57415efdf227)

# Setting Up OpenKH's Prefix

- In this section, we will be setting up OpenKH.
 - A prefix is where WINE has all it's files setup, and is similar to a `C:\` drive on a regular Windows computer. This is where data such as your save data will be located in.

- Step 1: In Steam, click `Add a Game` on the bottom right, select `Add a Non-Steam Game...`, select `Browse`, and where you have OpenKH extracted, select `OpenKH.Tools.ModsManager.exe`, and click `Open`. Then click `Add Selected Programs`.

![OpenKH Steam Library](https://github.com/user-attachments/assets/6b7af2e3-3d06-4acb-9e02-2c0f1003c58f)

- Step 2: Right Click `OpenKH.Tools.ModsManager.exe` in your Steam Library, and click `Properties`
   - Click `Compatibility`, and then select `Force the use of a specific Steam Play compatibility tool`, and select `Proton 9.0-4`
   - Optional: Rename `OpenKH.Tools.ModsManager.exe` to something more cleaner such as `OpenKH Mods Manager` in the properties window.

- Step 3: Load up OpenKH. This will generate a prefix and it will error out telling you that .NET6 needs to be installed. Close out of this window and proceed to the next step.

- Step 4: Load up `Protontricks` and do any first time setups it tells you to do. When it is setup, you should be at this window:
   - Take note of the numbers preceeding the name of the game. In this instance, OpenKH Mods Manager's Prefix folder for me is `2895334390`, which may be different than yours.

![Protontricks window](https://github.com/user-attachments/assets/069e08fc-a99a-479a-8f4c-35af7ed4e457)

- Step 5: Load up Konsole and enter the following code here and click enter:
   - `flatpak run com.github.Matoking.protontricks PREFIXNUMBERHERE -q -f dotnetdesktop6 dotnet6`

- After a couple minutes, open OpenKH Mods Manager again and proceed with the tutorial.

# Setting up OpenKH:

In this section, we will be setting up OpenKH's Mods Manager to patch the necessary files to run Re:Fined.

- Step 1: A window will pop up saying "Welcome to OpenKH Mods Manager".

  On the `Welcome to OpenKH Mods Manager` screen, click `Next >`, then under `Game edition`, select `PC Release`, then select `Global`, and then `Steam` under the next two opions.

  Select `Detect Installations`. If this fails to find where your game is installed, please manually find the folder where the game is installed
  - This is usually located in `Z:\home\deck\.local\share\Steam\steamapps\common\KINGDOM HEARTS -HD 1.5+2.5 ReMix-`

- Step 5: Click `Next >` and choose `Install Panacea`. We will be using Panacea for this tutorial.
   - OpenKH Panacea allows you to load your mods without modifying the game files.

- Step 6: OpenKH will ask if you want to install `Lua Backend`. This is *not* necessary for Re:Fined, so feel free to click `Next >` if you do not wish to install it.

- Step 7: - On the next screen, it will ask if you want to `Launch Games Directly (Steam)`. Skip this, as this method does not work on Steam Deck/Linux.

- Step 8: Make sure `KH2-43GB` is checked, and then click `Extract game data`. This may take roughly *thirty* or more minutes.
   - If you encounter any errors extracting the game files, please either try again, or re-download your game!

- Step 9: After extraction, click `Next >` and then click `Finish`

When you are done, you should be at this screen!

![image](https://github.com/KHOmega/KH-Linux-Setup/assets/93887977/3c0d26c6-1ef5-4f3e-ba84-9e29a8e0291a)

# Downloading and Patching in Re:Fined files using OpenKH:

In this section, we will be downloading the necessary patches to properly run Re:Fined.

- Step 1: In OpenKH, select the `Mods` button on the top, and then select `Install a new mod`.
   - Under `Add a new mod from GitHub`, we will be pasting in `KH-ReFined/KH2-MAIN`, as seen in the screenshot below, and then will click `Install`.
   - **Optional**: Additional Re:Fined Mods, such as Voice Packs, Heartless Colors, and Vanilla OST can be found [here](https://github.com/KH-ReFined/KH-ReFined?tab=readme-ov-file#kingdom-hearts-ii-1).
      - *Note*: If you download the additional add-ons, please make sure to place the add-ons ***above*** the main patch!
   - *Note*: `KH-ReFined/KH2-JapaneseVO` and `KH-ReFined/KH2-SpanishVO` take a ***very long time*** to download and install, as it is a rather large repository! If it looks like the program is unresponsive, it is simply because it is downloading the files.

![image](https://github.com/KHOmega/KH-Linux-Setup/assets/93887977/f34df394-93a1-4186-a3b4-5d57204bd665)

- Step 2: You will see `Kingdom Hearts II - Re:Fined` added into your mods list. Tick the little box so a checkmark appears in it.

- Click `Mod Loader` ->  `Build Only`

![image](https://github.com/KHOmega/KH-Linux-Setup/assets/93887977/ab132d5d-5f2b-4732-8eea-f42418dbfa70)

- Step 3: After everything is done installing, you can exit out of OpenKH.

# Downloading and Installing Re:Fined Pre-Requisite Script:

> [!IMPORTANT]
> If you are on a different Linux Distro, this step might not work due to the script being made for SteamOS users in mind!
> We are working on an auto detection and will update the guide accordingly!
> For a workaround, please look towards the bottom of the guide.

- Step 1: In Steam, right click 1.5/2.5 HD ReMix and select `Compatibility`, and then select `GE-Proton9-23` and then Launch Game.
   - After the game successfully opens, exit out of the game.

- Step 2: Open Konsole, enter `passwd`, and create a password to use in Konsole.
   - If you have already done this in the past, you do not need to do this again.

- Step 3: In Konsole, type in the following code and hit enter:
   - `wget https://raw.githubusercontent.com/KHOmega/KH-PC-and-Linux-Setup/refs/heads/main/refined_specific/ReFinedPreReq.sh`

- Step 4: In Konsole, type in the following code and hit enter:
   - `sh ReFinedPreReq.sh`

- You will now be prompted to type in the password you made in Step 1. Enter your password and then click enter, and the installer will do all the work for you.
   - If Konsole asks you to overwrite any files, follow the steps on screen and overwrite.

- Step 5: Right click KINGDOM HEARTS 1.5 + 2.5 HD ReMIX in Steam and select `Properties`
   - Under launch options, paste the following code: `WINEDLLOVERRIDES="version,keystone,newtonsoft.json,dinput8=n,b" %command%`

![image](https://github.com/user-attachments/assets/5003536f-a103-4863-bce9-74ffabf4e9c3)

# Launching Re:Fined.

Congratulations! You are very close into launching Re:Fined!

- Step 1: Right click `KINGDOM HEARTS -HD 1.5+2.5 HD ReMIX-` -> `Properties...` -> `Compatiblity` and change the compatibility to `Proton 9.0-4`
- Step 2: Click play on `KINGDOM HEARTS -HD 1.5+2.5 HD ReMIX-`
- Step 3: Select `KINGDOM HEARTS II FINAL MIX`
 - If you get this error in the screenshot listed below, just click `No`.

![image](https://github.com/user-attachments/assets/4e208067-e2f2-40d7-a2c3-21a6f7a5516a)

And there you go! Kingdom Hearts II Final Mix - Re:Fined has been successfully installed! You will know it has worked when you see `Re:Fined by TopazTK` on the title screen.

![title screen](https://github.com/user-attachments/assets/b34ee907-0247-4c0b-94d0-fd76385fb3a4)

- *Note*, if controller inputs are not working, simply either tap your screen, or hold down the `STEAM` button and click down the right touch pad.

# Non-SteamOS Linux Script Workaround

> [!WARNING]
> - This is untested!

- Please enter the following commands in Terminal:

    - `sudo chmod -R 777 ~/var/lib/flatpak/app/com.github.Matoking.protontricks/current/active/files/bin/`
    - `wget https://raw.githubusercontent.com/KHOmega/KH-PC-and-Linux-Setup/refs/heads/main/refined_specific/winetricks`
    - `cp ~/winetricks /var/lib/flatpak/app/com.github.Matoking.protontricks/current/active/files/bin/`
    - `flatpak run com.github.Matoking.protontricks 2552430 -q -f dotnet40 dotnet48 dotnet6 dotnet7 dotnet8 dotnet9 dotnetdesktop6 dotnetdesktop7 dotnetdesktop8 dotnetdesktop9 vcrun2022 vcrun6 xaudio29 win11`

- Please then proceed to download the [latest release](https://github.com/KH-ReFined/KH-ReFined/releases/latest) and place all the files into the game directory.
