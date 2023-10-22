# Introduction

Welcome on how to install Kingdom Hearts 1.5/2.5 HD ReMix on your Steam Deck / Linux operating system!

 - This guide assumes you are installing this on Steam Deck! For other OS's, please adjust accordingly. 
 - This guide also assumes that you have some knowledge in how to navigate Linux based OSs!
 - ***Steam Deck***: Please launch into Desktop Mode and use a mouse and keyboard! While this is doable without a mouse or keyboard, it will be frustrating!

## Pre-requisities
To get started you need to download the following:

- **Heroic Games Launcher**
   - Steam Deck - Download from the Discover Store
   - Linux - Download from your preferred repository

- [**KINGDOM HEARTS HD 1.5+2.5 ReMIX**](https://store.epicgames.com/en-US/p/kingdom-hearts-hd-1-5-2-5-remix)

# Heroic Games Launcher Initial Setup:

In this section, we will be setting up Heroic Games Launcher. This is where we will be launching `KINGDOM HEARTS HD 1.5+2.5 ReMIX`. 
- Later towards the end of the guide, we will create a shortcut to add the game to our Steam Library.

- Step 1: Launch `Heroic Games Launcher` and click `Log in` on the top left, and then click `Epic Games Login` and proceed to login into your Epic Games Store Account.

- Step 2: After you are logged in, click `Wine Manager` on the left, select `WINE-GE`, and then click the refresh button which will then refresh the window with different Wine versions.
   - From here, download the latest numbered Wine-GE version. (eg. `Wine-GE-Proton8-20`)

![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/a7739545-a0c8-45c9-b8df-0abd54180ed5)

# Setting up your KINGDOM HEARTS 1.5+2.5 HD ReMIX

- Step 1: Step 1: Click `KINGDOM HEARTS 1.5+2.5 HD ReMix`, proceed to download it, and once it is done, click the settings icon.

![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/784f663c-3527-4935-9cb8-1e203a2acae0)

- If not set, please set the WINE version used to the one just downloaded!

![image](https://github.com/KHOmega/KH-ReFined-Setup/assets/93887977/6d3edda3-937c-47b3-91f5-5e6037585a60)

- Step 2: Scroll down and then click `WINETRICKS`.

![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/8025ed8a-1b81-4c12-8d2d-1a4ff6a7c6c4)

- A new window will open stating a prefix is being generated, and then you will end up in this window.

![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/3d5fea7b-a3f2-4387-b378-a2eb61d24ee2)

- From here, do the following:
 - Click `Select the default wineprefix` and then click `OK`
   - If you get a window asking about winetricks developments, just select either `Yes` or `No`.
- Click `Install a Windows DLL or component` and then click `OK`.
- Scroll down and look for `dotnet48`. Check it and then click `OK`
   - You will get various dialog boxes popping up, either wait for them to close on their own or click `OK` on them. WINE is currently installing `MS .NET 4.0` and `MS .NET 4.8` onto your Wineprefix.
- When it is done isntalling, you will be brought back to your Wineprefix window. Go ahead and click `Cancel` until you are back to the Heroic Games Launcher window.

![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/fb6649bc-d089-4255-a9d6-38e9d8c15e21)

# Launching Kingdom Hearts 1.5/2.5 HD ReMix.

Congratulations! You are very close into launching Kingdom Hearts 1.5/2.5 HD ReMix!

- Step 1: Locate your game installation.

- Step 2: Rename `EPIC` to `EPIC.bak`
  - This is because the game will crash when trying to read the FMV files. There is currently no fix for this!
- Step 3: Load up Heroic Games Launcher.
- Step 4: Start up `KINGDOM HEARTS HD 1.5+2.5 HD ReMIX`

And there you go! Kingdom Hearts 1.5/2.5 HD ReMix has been sucessfully installed!

# Setting Up Steam Shortcuts

- In Heroic Games Launcher, click on the game you want to make a Steam shortcut for.
- Click the three dots on the top right, and then click `Add to Steam`
 - If your game does not show up, it is because you have multiple profiles on your Steam installation! The only fix I have found so far is to only have one profile on Steam.

# Misc.

Now that you have Kingdom Hearts 1.5/2.5 HD ReMix installed on your Steam Deck / Linux distro, why not check out a couple of mods, such as TopazTK's [Re:Fined](https://github.com/KH-ReFined/KH-ReFined)?

### Links: 

- Twitter: [@KHOmega](https://twitter.com/KHOmega)

- YouTube: [KHOmega](https://youtube.com/KHOmega)
