# Installation

 - This guide assumes you are installing this on Steam Deck! For other OS's, please adjust accordingly. 
 - This guide also assumes that you have some knowledge in how to navigate Linux based OSs!
 - ***Steam Deck***: Please launch into Desktop Mode and use a mouse and keyboard! While this is doable without a mouse or keyboard, it will be frustrating!
 - This guide is written with the intention of installing Re:Fined v.5.00 and up.
  - As of this writing, the only version with a Re:Fined v.5.00 release is ``KINGDOM HEARTS II FINAL MIX``
  - If you wish to install ``KINGDOM HEARTS FINAL MIX`` or ``KINGDOM HEARTS HD Dream Drop Distance``, please follow [this guide](https://github.com/KHOmega/KH-PC-and-Linux-Setup/blob/main/vanilla-linux-setup.md) instead to setup a prefix and then follow [these directions](https://github.com/KH-ReFined/KH-ReFined/blob/mother/SETUP.md#installing-refined-v315) on installing those versions.

## Pre-requisities
To get started you need to download the following:

- **Heroic Games Launcher**
   - Steam Deck - Download from the Discover Store
   - Linux - Download from your preferred repository

- [**Kingdom Hearts II Final Mix Re:Fined**](https://github.com/KH-ReFined/KH-ReFined/releases)
   - Download Re:Fined from the latest build.

- [**OpenKH**](https://github.com/OpenKH/OpenKh/releases)
   - Download `openkh.zip` from the latest build.

- [**.NET 6.0 Desktop Runtime**](https://dotnet.microsoft.com/en-us/download/dotnet/6.0)
   - Install the latest ``.NET Desktop Runtime 6.0`` x64 .exe
![image](https://github.com/KHOmega/KH-PC-and-Linux-Setup/assets/93887977/195bcbcc-1610-44eb-a368-4a628a2cb44b)

# Heroic Games Launcher Initial Setup:

In this section, we will be setting up Heroic Games Launcher. This is where we will be launching OpenKH and `KINGDOM HEARTS HD 1.5+2.5 ReMIX`. 
- Later towards the end of the guide, we will create shortcuts to add both programs to our Steam Library.

- Step 1: Launch `Heroic Games Launcher` and click `Log in` on the top left, and then click `Epic Games Login` and proceed to login into your Epic Games Store Account.

- Step 2: After you are logged in, click `Wine Manager` on the left, select `WINE-GE`, and then click the refresh button which will then refresh the window with different Wine versions.
   - From here, download the latest ***non-LoL*** numbered Wine-GE version
   - `WINE-GE-Proton8-25` is the latest supported version as of this writing

![image](https://github.com/KHOmega/KH-Linux-Setup/assets/93887977/1790ac9b-e161-49b7-8829-a1abef93134d)

# Setting up your KINGDOM HEARTS 1.5+2.5 HD ReMIX, OpenKH, and Re:Fined WINE Prefix.

- In this section, we will be setting up the base game, OpenKH, and then Re:Fined under one prefix.
 - A prefix is where WINE has all it's files setup, and is similar to a `C:\` drive on a regular Windows computer. This is where data such as your save data will be located in.

- Step 1: Click `KINGDOM HEARTS 1.5+2.5 HD ReMix`, proceed to download it, and once it is done, click the settings icon.

![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/784f663c-3527-4935-9cb8-1e203a2acae0)

- Step 2: Scroll down and then click `WINETRICKS`.

![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/8025ed8a-1b81-4c12-8d2d-1a4ff6a7c6c4)

- A new window will open that will look like this:

![image](https://github.com/KHOmega/KH-Linux-Setup/assets/93887977/941f9674-04da-4cc6-a079-9a3844271e87)

- Click where it says `Search fonts or components`, type in `dotnet48`, and click `Install`
   - If you get a window asking about winetricks developments, just select either `Yes` or `No`.

![image](https://github.com/KHOmega/KH-Linux-Setup/assets/93887977/c5e21ee4-53c8-4ce6-8ca1-77ff926e319b)

- When this is done installing, proceed to exit out of the Winetricks window by click the `X` button above the `OPEN WINETRICKS GUI` button.

- Step 3: From this window, select `Run winecfg`, and then click `OK`
    - A new window (`Wine configuration`) will open.

Step 4: From this window, you must do the following:

![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/607a69d4-2410-4cc1-addb-feb2d2782bca)

- Select `Libraries`
- Under `New override for library:`, type in `keystone.dll` and then click `Add`.
- Under `New override for library:`, type in `VERSION.DLL` and then click `Add`.
- Click `Apply` and `OK`

After this, you will be brought back to your Wineprefix window. Go ahead and click `Cancel` until you are back to the Heroic Games Launcher window.

- Step 5: Click `RUN EXE ON PREFIX`, and locate your `windowsdesktop-runtime-6.0.25-win-x64.exe` file you downloaded earlier, and select it. After a couple seconds, this window will open, and go ahead and go through the installer.
    - Note: The image below shows an older version of .NET 6 being installed. Please make sure to install the latest .NET 6!
      
![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/7d04eda5-66aa-4322-8683-bddcdca33874)

# Setting up OpenKH:

In this section, we will be setting up OpenKH's Mods Manager to patch the necessary files to run Re:Fined 5.00.

- Step 1: Right click `openkh.zip` and extract the folder somewhere where it won't accidently get deleted.
   - eg: `/home/deck/Documents/OpenKH`

- In Heroic Games Launcher, select `Library`. and then select `ADD GAME`.
   - Under `Game/App Title`, name it `OpenKH`, and under WinePrefix, click the little folder icon and select the Wineprefix that was created for Kingdom Hearts. [eg. `/home/deck/Games/Heroic/Prefixes/default/KINGDOM HEARTS HD 1.52.5 ReMIX`]
   - Under `Select Executable`, Go into your `openkh` folder and look for a program named `OpenKh.Tools.ModsManager.exe`, click it and then press `Choose`, and then click `Finish`.

- Step 2: Click the green play button on OpenKH, and OpenKH will load up.
   - If you get an error message saying `rundll32.exe - This program could not be started.`, click `No` and continue.

- Step 3: A window will pop up saying "Welcome to OpenKH Mods Manager".
- As of this writing, the current versions of OpenKH contains a bug where using the Dark Mode UI will prevent users from seeing if certain options are checked during setup. We will disable Dark Mode and revert to Light Mode UI to continue on with the tutorial.
    - Click `Cancel`
    - Click `Settings` and ***uncheck*** `Dark Mode`
    - Click `Run Wizard`
  
- Step 4: On the `Welcome to OpenKH Mods Manager` screen, click `Next >`, then under `Game edition`, select `PC Release via Epic Game Store`, and then you are going to click the little folder icon to select the location of your game.
    - Where your game installation is located varies. Please note where you installed your game when doing this part of the tutorial.

- Step 5: Click `Next >` and choose `Install Panacea for Linux`. We will be using Panacea for this tutorial.
   - OpenKH Panacea allows you to load your mods without modifying the game files.

- Step 6: OpenKH will ask if you want to install `Lua Backend`. This is *not* necessary for Re:Fined, so feel free to click `Next >` if you do not wish to install it.

- Step 7: - On the next screen, it will ask you to `Launch via Epic Games`. As we are loading with Heroic and not EGS, skip this by clicking `Next >`.

- Step 8: Make sure `KH2-25GB` is checked, and then click `Extract game data`. This may take roughly fifteen or more minutes.
   - If you encounter any errors extracting the game files, please either try again, or re-download your game!

- Step 9: After extraction, click `Next >` and then click `Finish`

When you are done, you should be at this screen!

![image](https://github.com/KHOmega/KH-Linux-Setup/assets/93887977/3c0d26c6-1ef5-4f3e-ba84-9e29a8e0291a)

# Downloading and Patching in Re:Fined v5.00's files using OpenKH:

In this section, we will be downloading the necessary patches to properly run Re:Fined v5.00.

- Step 1: In OpenKH, select the `Mods` button on the top, and then select `Install a new mod`.
   - Under `Add a new mod from GitHub`, we will be pasting in `KH-ReFined/KH2-MAIN`, as seen in the screenshot below, and then will click `Install`.
   - *Optional*: Feel free to also add `KH-ReFined/KH2-MultiAudio`, `KH-ReFined/KH2-VanillaOST`, and `KH-ReFined/KH2-VanillaEnemy` as well for extra Re:Fined v5.00 features!
   - *Note*: If you download additional add-ons, please make sure to place `KH2-MAIN` ***below*** the additional add-ons! 
   - *Note*: `KH-ReFined/KH2-MultiAudio` takes a ***very long time*** to download and install, as it is a rather large repository! If it looks like the program is unresponsive, it is simply because it is downloading the files.

![image](https://github.com/KHOmega/KH-Linux-Setup/assets/93887977/f34df394-93a1-4186-a3b4-5d57204bd665)

- Step 2: You will see `Kingdom Hearts II - Re:Fined` added into your mods list. Tick the little box so a checkmark appears in it.

- Click `Mod Loader` ->  `Build Only`

![image](https://github.com/KHOmega/KH-Linux-Setup/assets/93887977/ab132d5d-5f2b-4732-8eea-f42418dbfa70)

- A debug window will then open, signaling that the game is currently being patched. Once the window closes by itself, the patching process has been completed.

# Installing Re:Fined v5.00 and finalizing Linux Setup:

In this section, we will be placing our new Re:Fined v5.00 installation files into our game directory, and finish setting up our Linux Installation.

- Step 1: Locate your game installation.

- Step 2: In your game installation folder, backup your original .exe by either moving or renaming `KINGDOM HEARTS II FINAL MIX.exe` somewhere or something different.

- Step 3: Extract the Re:Fined .zip downloaded earlier, and place `KINGDOM HEARTS II FINAL MIX.exe` and `keystone.dll` into your game directory folder.
   - Do ***not*** place ``ViGEmClient.dll`` into the folder, as this is not compatible with Steam Deck / Linux.
   - If you get a box asking you if you would like to overwrite any data, select `Yes`

- Step 4: Rename `EPIC` to `EPIC.bak`
    - Note: Cutscenes will *not* work due to WINE not having the proprietary media files necessary to play cutscenes, and will crash the game. This allows you to continue playing the game with minimal crashes, but FMV cutscenes will not play!

This is what your game installation folder should now look like:

![image](https://github.com/KHOmega/KH-PC-and-Linux-Setup/assets/93887977/c4e461ec-b22e-440d-bcb8-0823a04befd2)

# Launching Re:Fined v5.00.

Congratulations! You are very close into launching Re:Fined v5.00!

- Step 1: Load up Heroic Games Launcher.
- Step 2: Start up `KINGDOM HEARTS HD 1.5+2.5 ReMIX`
- Step 3: Start `KINGDOM HEARTS II FINAL MIX` as you would normally.

And there you go! Kingdom Hearts II Final Mix - Re:Fined v5.00 has been successfully installed! You will know it has worked when you select `NEW GAME` and you get the new options to select your controller prompts and skip the prologue!

![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/7a3d09f6-3800-4ca2-b1c6-8dea624416fb)

# Setting Up Steam Shortcuts

- In Heroic Games Launcher, click on the game you want to make a Steam shortcut for.
- Click the three dots on the top right, and then click `Add to Steam`
- Do the same for any other program you have, and it will appear in your Steam Library.

![image](https://github.com/KHOmega/KH-Linux-Setup/assets/93887977/c31c9751-e137-4c7f-a135-f11d5cfa2cfc)

----

# Misc. Mods for Steam Deck:
**Name:** [Steam Deck Buttons](https://github.com/KHOmega/KH2-SteamDeckButtons)

**Author:** KHOmega

**Type:** Visual/HUD

**Description:** Replaces the generic button prompt option with Steam Deck buttons.

**Repository:** `KHOmega/KH2-SteamDeckButtons`

![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/786fb4f6-afac-4f27-96d1-422c0ba097bd)

