# WARNING: THIS GUIDE IS CURRENTLY OUTDATED. THIS WILL ONLY BE KEPT UP FOR HISTORICAL PURPOSES. A NEW ONE WILL BE MADE WHEN LUABACKEND IS UPDATED.
# Setting Up OpenKH / Modloader for Linux / Steam Deck

 - This guide assumes you are installing this on Steam Deck! For other OS's, please adjust accordingly. 
 - This guide also assumes that you have some knowledge in how to navigate Linux based OSs!
 - ***Steam Deck***: Please launch into Desktop Mode and use a mouse and keyboard! While this is doable without a mouse or keyboard, it will be frustrating!

## Pre-requisities
To get started you need to download the following:

- [**KINGDOM HEARTS HD 1.5+2.5 ReMIX**](https://store.epicgames.com/en-US/p/kingdom-hearts-hd-1-5-2-5-remix)
    - This guide does not support piracy. If an illegitimate copy is used, there are no guarantee that this guide will work, and no help will be provided.
    - This article will also assume that you have `KINGDOM HEARTS HD 1.5+2.5 ReMIX` already installed, configured, and working! If you do not, please [click here](https://github.com/KHOmega/KH-PC-and-Linux-Setup/blob/main/vanilla-linux-setup.md#setting-up-your-kingdom-hearts-1525-hd-remix) on how to install `KINGDOM HEARTS HD 1.5+2.5 ReMIX`
- **Heroic Games Launcher**
   - Steam Deck - Download from the Discover Store
   - Linux - Download from your preferred repository

- [**OpenKH**](https://github.com/OpenKH/OpenKh/releases)
   - Download `openkh.zip` from the latest build.
   - Extract this zip to somewhere safe, such as your Documents folder

- [**.NET 6.0 Desktop Runtime**](https://dotnet.microsoft.com/en-us/download/dotnet/6.0)
   - Install the latest ``.NET Desktop Runtime 6.0`` x64 .exe
![image](https://github.com/KHOmega/KH-PC-and-Linux-Setup/assets/93887977/195bcbcc-1610-44eb-a368-4a628a2cb44b)

# Setting up your OpenKH WINE Prefix.

- In this section, we will be setting up the OpenKH prefix using our existing `KINGDOM HEARTS HD 1.5+2.5 ReMIX` prefix.

- Step 1: Hover over `KINGDOM HEARTS 1.5+2.5 HD ReMix`, and click the settings icon.

![image](https://github.com/KHOmega/KH-PC-and-Linux-Setup/assets/93887977/5432f9a1-0098-479b-924f-d1fa2c9ccf61)

Take note of your `WinePrefix folder` directory and `Wine version` used. We will be using your existing directory and same Wine version for our OpenKH installation.

- Step 2: Scroll down and select `Run winecfg`.

- Step 3: In `Wine configuration`, click `Libraries`
    -From this window, you must do the following:

- Under `New override for library:`, type in `version.dll` and then click `Add`.
- Under `New override for library:`, type in `dinput8.dll` and then click `Add`.
- Click `Apply` and `OK`

![image](https://github.com/KHOmega/KH-PC-and-Linux-Setup/assets/93887977/1bf96de7-0a27-4f6a-a2e3-08115301ee0c)

After this, you will be brought back to your Wineprefix window. Go ahead and click `Cancel` until you are back to the Heroic Games Launcher window.

- Step 5: Click `RUN EXE ON PREFIX`, and locate your `windowsdesktop-runtime-6.0.25-win-x64.exe` file you downloaded earlier, and select it. After a couple seconds, this window will open, and go ahead and go through the installer.
    - Note: The image below shows an older version of .NET 6 being installed. Please make sure to install the latest .NET 6!
      
![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/7d04eda5-66aa-4322-8683-bddcdca33874)

 - Step 6: Go back to your Heroic Games Launcher Library, and then click `Add Game`
     - Under `Game/App Title`, type in `OpenKH`
     - Under `WinePrefix`, put in the same directory that your `KINGDOM HEARTS HD 1.5+2.5 ReMIX`
     - Under `Wine version` select the same one that `KINGDOM HEARTS HD 1.5+2.5 ReMIX` uses
     - Under Select Executable, select `OpenKh.Tools.ModsManager.exe` from where you extracted OpenKH to
     - Select Finish

# Setting up OpenKH:

In this section, we will be setting up OpenKH Mods Manager.

- Step 1: Click the green play button on OpenKH, and OpenKH will load up.
   - If you get an error message saying `rundll32.exe - This program could not be started.`, click `No` and continue.

- Step 2: A window will pop up saying "Welcome to OpenKH Mods Manager".
- As of this writing, the current versions of OpenKH contains a bug where using the Dark Mode UI will prevent users from seeing if certain options are checked during setup. We will disable Dark Mode and revert to Light Mode UI to continue on with the tutorial.
    - Click `Cancel`
    - Click `Settings` and ***uncheck*** `Dark Mode`
    - Click `Run Wizard`
  
- Step 3: On the `Welcome to OpenKH Mods Manager` screen, click `Next >`, then under `Game edition`, select `PC Release via Epic Game Store`, and then you are going to click the little folder icon to select the location of your game.
    - Where your game installation is located varies. Please note where you installed your game when doing this part of the tutorial.

- Step 4: Click `Next >` and choose `Install Panacea for Linux`.
   - OpenKH Panacea allows you to load your mods without modifying the game files.

- Step 5: OpenKH will ask if you want to install `Lua Backend`.
    -  You ***must*** rename `LuaBackend.dll` to `dinput8.dll` in your game directory folder where the .exe files are located, otherwise the game will fail to load. 

- Step 6: On the next screen, it will ask you to `Launch via Epic Games`. As we are loading with Heroic and not EGS, skip this by clicking `Next >`.

- Step 7: (***Optional if you only want to use Lua Scripts***) Select which game you wish to extract and select it, and then click `Extract game data`. This may take roughly fifteen or more minutes.
   - Extracting is necessary for getting mods to work in the game of your choosing, and can help with reverting any mods that may cause your game to act up.

- Step 8: After extraction, click `Next >` and then click `Finish`

# Finishing Up

Now that everything is setup, you are now able to install and use Lua Scripts like any other mod in OpenKH. Enjoy!
