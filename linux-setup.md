# Installation

 - This guide assumes you are installing this on Steam Deck! For other OS's, please adjust accordingly. 
 - This guide also assumes that you have some knowledge in how to navigate Linux based OSs!
 - ***Steam Deck***: Please launch into Desktop Mode and use a mouse and keyboard! While this is doable without a mouse or keyboard, it will be frustrating!

## Pre-requisities
To get started you need to download the following:

- **Heroic Games Launcher**
   - Steam Deck - Download from the Discover Store
   - Linux - Download from your preferred repository

- [**Kingdom Hearts II Final Mix Re:Fined**](https://github.com/TopazTK/KH-ReFined/releases)
   - Download Re:Fined from the latest build. 

- [**OpenKH**](https://github.com/OpenKH/OpenKh/releases)
   - Download `openkh.zip` from the latest build.

- [**.NET 6.0 Desktop Runtime (v6.0.23)**](https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/runtime-desktop-6.0.23-windows-x64-installer?cid=getdotnetcore)

# Heroic Games Launcher Initial Setup:

In this section, we will be setting up Heroic Games Launcher. This is where we will be launching OpenKH and `KINGDOM HEARTS HD 1.5+2.5 ReMIX`. 
- Later towards the end of the guide, we will create shortcuts to add both programs to our Steam Library.

- Step 1: Launch `Heroic Games Launcher` and click `Log in` on the top left, and then click `Epic Games Login` and proceed to login into your Epic Games Store Account.

- Step 2: After you are logged in, click `Wine Manager` on the left, select `WINE-GE`, and then click the refresh button which will then refresh the window with different Wine versions.
   - From here, download the latest numbered Wine-GE version.

![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/a7739545-a0c8-45c9-b8df-0abd54180ed5)
# Setting up your KINGDOM HEARTS 1.5+2.5 HD ReMIX, OpenKH, and Re:Fined WINE Prefix.

- In this section, we will be setting up the base game, OpenKH, and then Re:Fined under one prefix.
 - A prefix is where WINE has all it's files setup, and is similar to a `C:\` drive on a regular Windows computer. This is where data such as your save data will be located in.

- Step 1: Click `KINGDOM HEARTS 1.5+2.5 HD ReMix` and then click the settings icon.

![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/784f663c-3527-4935-9cb8-1e203a2acae0)
- Step 2: Scroll down and then click `WINETRICKS`.

![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/8025ed8a-1b81-4c12-8d2d-1a4ff6a7c6c4)
- A new window will open stating a prefix is being generated, and then you will end up in this window.

![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/3d5fea7b-a3f2-4387-b378-a2eb61d24ee2)
- From here, do the following:
 - Click `Select the default wineprefix` and then click `OK`
   - If you get a window asking about winetricks developments, just select either `Yes` or `No`.
- Click `Install a Windows DLL or component` and then click `OK`.
- Scroll down and look for `dotnet48`. Check it and then click `OK`
   - You will get various dialog boxes popping up, either wait for them to close on their own or click `OK` on them. WINE is currently installing ` MS .NET 4.0` and `MS .NET 4.8` onto your Wineprefix, which is necessary to get Re:Fined and OpenKH to work.
- When this is done installing, you will be brought back to this window.

![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/fb6649bc-d089-4255-a9d6-38e9d8c15e21)
- Step 3: From this window, select `Run winecfg`, and then click `OK`
 - A new window (`Wine configuration`) will open.

Step 4: From this window, you must do the following:

![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/607a69d4-2410-4cc1-addb-feb2d2782bca)

- Select `Libraries`
- Under `New override for library:`, type in `keystone.dll` and then click `Add`.
- Under `New override for library:`, type in `VERSION.DLL` and then click `Add`.
- Click `Apply` and `OK`

After this, you will be brought back to your Wineprefix window. Go ahead and click `Cancel` until you are back to the Heroic Games Launcher window.

- Step 5: Click `RUN EXE ON PREFIX`, and locate your `windowsdesktop-runtime-6.0.23-win-x64.exe` file you downloaded earlier, and select it. After a couple seconds, this window will open, and go ahead and go through the installer.

![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/7d04eda5-66aa-4322-8683-bddcdca33874)

# Setting up OpenKH:

In this section, we will be setting up OpenKH's Mods Manager to patch the necessary files to run Re:Fined 4.00.

- Step 1: Right click `openkh.zip` and extract the folder somewhere where it won't accidently get deleted.
   - eg: `/home/deck/Documents/OpenKH`

- In Heroic Games Launcher, select `Library`. and then select `ADD GAME`.
   - Under `Game/App Title`, name it `OpenKH`, and under WinePrefix, click the little folder icon and select the Wineprefix that was created for Kingdom Hearts. [eg. `/home/deck/Games/Heroic/Prefixes/KINGDOM HEARTS HD 1.52.5 ReMIX`]
   - Under `Select Executable`, Go into your `openkh` folder and look for a program named `OpenKh.Tools.ModsManager.exe`, click it and then press `Choose`, and then click `Finish`.

- Step 2: Click the green play button on OpenKH, and OpenKH will load up.
   - If you get an error message saying `rundll32.exe - This program could not be started.`, click `No` and continue.

- Step 3: A window will pop up saying "Welcome to OpenKH Mods Manager"
   - You are going to click `Next >`, select `PC Release via Epic Game Store`, and then you are going to click the little folder icon to select the location of your game.

- Step 4: Click `Next >` and choose wether you want to install OpenKH Panacea. For this tutorial, we ***will*** be installing and using Panacea.
   - OpenKH Panacea allows you to load your mods without modifying the game files.
- Step 5: - On the next screen, it will ask you to `Launch via Epic Games`. Don't check this and click `Next >`.

- Step 6:
- Make sure `KH2-25GB` is checked, and then click `Extract game data`. This may take roughly fifteen minutes.
   - If you encounter any errors extracting the game files, please either try again, or re-download your game!

- Step 7: After extraction, click `Next >` and then click `Finish`

When you are done, you should be at this screen!

![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/da02f3b1-a2aa-4947-9967-3dcbb64597fc)

# Downloading and Patching in Re:Fined v4.00's files using OpenKH:

In this section, we will be downloading the necessary patches to properly run Re:Fined v4.00.

- Step 1: In OpenKH, select the `Mods` button on the top, and then select `Install a new mod`.
   - Under `Add a new mod from GitHub`, we will be pasting in `KH-ReFined/KH2-MAIN`, as seen in the screenshot below, and then will click `Install`.
   - *Optional*: Feel free to also add `KH-ReFined/KH2-MultiAudio`, `KH-ReFined/KH2-VanillaOST`, and `KH-ReFined/KH2-VanillaEnemy` as well for extra Re:Fined v4.00 features!
   - *Note*: If you download additional add-ons, please make sure to place `KH2-MAIN` ***below*** the additional add-ons! 
   - *Note*: `KH-ReFined/KH2-MultiAudio` takes a ***very long time*** to download and install, as it is a rather large repository! If it looks like the program is unresponsive, it is simply because it is downloading the files.

![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/6bff2f4e-a66a-40d4-a1e3-4ddfe3432597)

- Step 2: You will see `Kingdom Hearts II - Re:Fined v4.00` added into your mods list. Tick the little box so a checkmark appears in it.

- Click `Mod Loader` ->  `Build Only`

- A debug window will then open, signaling that the game is currently being patched.

![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/f080aa0a-a2ab-48bc-9e22-7a418fbc1fdd)

# Installing Re:Fined v4.00 and finalizing Linux Setup:

In this section, we will be placing our new Re:Fined v4.00 installation files into our game directory, and finish setting up our Linux Installation.

- Step 1: Locate your game installation.

- Step 2: In your game installation folder, backup your original .exe by either moving or renaming `KINGDOM HEARTS II FINAL MIX.exe` somewhere or something different.

- Step 3: Extract the Re:Fined .zip downloaded earlier, and place `KINGDOM HEARTS II FINAL MIX.exe` and `keystone.dll` into your game directory folder.
   - If you get a box asking you if you would like to overwrite any data, select `Yes`

- Step 4: Rename `EPIC` to `EPIC.bak`

- Step 5: Rename `DGBHELP.dll` to `VERSION.DLL`

This is what your game installation folder should now look like:

![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/5f5dc550-9ce4-4be8-9873-c3205ee6db37)

# Launching Re:Fined v4.00.

Congratulations! You are very close into launching Re:Fined v4.00!

- Step 1: Load up Heroic Games Launcher.
- Step 2: Start up `KINGDOM HEARTS HD 1.5+2.5 ReMIX`
- Step 3: Start `KINGDOM HEARTS II FINAL MIX` as you would normally.

And there you go! Kingdom Hearts II Final Mix - Re:Fined v4.00 has been successfully installed! You will know it has worked when you select `NEW GAME` and you get the new options to select your controller prompts and skip the prologue!

![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/7a3d09f6-3800-4ca2-b1c6-8dea624416fb)

# Setting Up Steam Shortcuts

- In Heroic Games Launcher, click on the game you want to make a Steam shortcut for.
- Click the three dots on the top right, and then click `Add to Steam`
- Do the same for any other program you have, and it will appear in your Steam Library.

![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/f05fddbe-a38d-42aa-bf50-e3fb3e2753c4)

# Misc. Mods for Steam Deck:
**Name:** [Steam Deck Buttons](https://github.com/KHOmega/KH2-SteamDeckButtons)

**Author:** KHOmega

**Type:** Visual/HUD

**Description:** Replaces the generic button prompt option with Steam Deck buttons.

**Repository:** `KHOmega/KH2-SteamDeckButtons`

![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/786fb4f6-afac-4f27-96d1-422c0ba097bd)

