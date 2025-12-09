# Installation

- This guide will assume you are installing on SteamOS/Bazzite. If you are using any other Linux distros, please adjust accordingly.
 - ***Steam Deck Note***: Please launch into Desktop Mode and use a mouse and keyboard! While this is doable without a mouse or keyboard, it will be frustrating!
 - This guide also assumes that you have some knowledge in how to navigate Linux based OSs.
 - As of this writing, the only version with a Re:Fined release is ``KINGDOM HEARTS II FINAL MIX``
 - If you are looking for the **Steam** version of this guide, please click [here](https://github.com/KHOmega/KH-PC-and-Linux-Setup/blob/main/refined-steam-version-linux-setup.md)

## Pre-requisites:
To get started you need to download and have the following:

- **Heroic Games Launcher**
   - Steam Deck - Download from the Discover Store
   - Other Distro - Download from your preferred repository

- [**OpenKH**](https://github.com/OpenKH/OpenKh/releases)
   - Download `openkh.zip` from the latest build.

# Heroic Games Launcher Initial Setup: 

In this section, we will be setting up Heroic Games Launcher. This is where we will be launching OpenKH and `KINGDOM HEARTS HD 1.5+2.5 ReMIX`. 
- Later towards the end of the guide, we will create shortcuts to add both programs to our Steam Library.

- Step 1: Launch `Heroic Games Launcher` and click `Log in` on the top left, and then click `Epic Games Login` and proceed to login into your Epic Games Store Account.

- Step 2: After you are logged in, click `Wine Manager` on the left, select `GE-PROTON`, and then click the refresh button which will then refresh the window with different Wine versions.
   - From here, download the `GE-Proton-Latest`

<img width="1920" height="1080" alt="image" src="https://github.com/user-attachments/assets/5fab7da6-961a-46b3-a215-72762766eba1" />

# Setting up your KINGDOM HEARTS 1.5+2.5 HD ReMIX Prefix.

- In this section, we will be setting up KINGDOM HEARTS 1.5+2.5 HD ReMIX's Prefix.
 - A prefix is where WINE has all it's files setup, and is similar to a `C:\` drive on a regular Windows computer. This is also where data such as your save data will be located in.

- Step 1: Click `KINGDOM HEARTS 1.5+2.5 HD ReMix`, proceed to download it, and once it is done, click the settings icon.

![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/784f663c-3527-4935-9cb8-1e203a2acae0)

- Step 2: Under `Wine Version`, select `GE-Proton-Latest`

<img width="711" height="411" alt="image" src="https://github.com/user-attachments/assets/b229cdf4-01b7-4cba-acdc-2828019a5b46" />

- Step 3: Scroll down and then click `WINETRICKS`.

![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/8025ed8a-1b81-4c12-8d2d-1a4ff6a7c6c4)

- A new window will open that will look like this:

![image](https://github.com/KHOmega/KH-Linux-Setup/assets/93887977/941f9674-04da-4cc6-a079-9a3844271e87)

- Click where it says `OPEN WINETRICKS GUI`
   - If you get a window asking about "winetricks developments", just select either `Yes` or `No`.

- From here, select `Select the default wineprefix` -> `Install a Windows DLL or component` and then select the following to install and then select `OK`:
     - dotnet48
     - dotnet8
     - dotnetdesktop8
     - vcrun6
     - ucrtbase2019
     - xaudio29
     
<img width="1026" height="548" alt="image" src="https://github.com/user-attachments/assets/822c5c33-617a-4623-b69b-f02a6722e614" />

- When this is done installing, proceed to exit out of the Winetricks window by click the `X` button above the `OPEN WINETRICKS GUI` button.

- Step 3: From this window, select `Run winecfg`, and then click `OK`
    - A new window (`Wine configuration`) will open.

Step 4: From this window, you must do the following:

![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/607a69d4-2410-4cc1-addb-feb2d2782bca)

- Select `Libraries`
- Under `New override for library:`, type in `version` and then click `Add`.

- Optionally, you can also add the following as well to enable LuaBackend and Discord RPC:
   - `LuaBackend`
   - `discord_game_sdk`
   
- Click `Apply` and `OK`

After this, you will be brought back to your Wineprefix window. Go ahead and click `Cancel` until you are back to the Heroic Games Launcher window.
      
- Step 6: Click `Play Now >` and boot up the game. This is necessary to create the original save data directory files so that when we install Panacea later on, it doesn't crash. ***You must not skip this step***.

# Setting up OpenKH:

In this section, we will be setting up OpenKH's Mods Manager to patch the necessary files to install Re:Fined.

- Step 1: Right click `openkh.zip` and extract the folder somewhere where it won't accidently get deleted.
   - eg: `~/Documents/OpenKH`

- In Heroic Games Launcher, select `Library`. and then select `ADD GAME`.
   - Under `Game/App Title`, name it something like `OpenKH Mods Manager`,
   - Under `Select Executable`, Go into your `openkh` folder and look for a program named `OpenKh.Tools.ModsManager.exe`, click it and then press `Choose`, and then click `Finish`.

- Step 3: Under `Wine Version`, select `GE-Proton-Latest

- Step 4: Scroll down and then click `WINETRICKS`.
   - Click where it says `Search fonts or components`, type in `dotnet8`, and click `Install`
   - When that is done installing, click where it says `Search fonts or components` again, and type in `dotnetdesktop8`, and click `Install`

- Step 5: Click the green play button on OpenKH, and OpenKH will load up.
   - If you get an error message saying `rundll32.exe - This program could not be started.`, click `No` and continue.

- Step 6: A window will pop up saying "Welcome to OpenKH Mods Manager".
  
- Step 7: On the `Welcome to OpenKH Mods Manager` screen, click `Next >`, then under `Game edition`, select `PC Release`, select `Global` and then select `Epic Games Store`
   - Under `Folder location of the PC release of 1.5+2.5`, find the directory that your game is installed.
    - If you don't know where you have installed 1.5+2.5, go back into Heroic, click the game, and then click `Installed Location`, and copy the path under `Install Path` and input that in OpenKH.

- Step 8: Click `Next >` and choose `Install Panacea`. We will be using Panacea for this tutorial.
   - OpenKH Panacea allows you to load your mods without modifying the game files.

- Step 9: OpenKH will ask if you want to install `Lua Backend`. This is *not* necessary for Re:Fined, so feel free to click `Next >` if you do not wish to install it.

- Step 10: - On the next screen, it will ask you to `Launch via Epic Games`. As we are loading with Heroic and not EGS, skip this by clicking `Next >`.

- Step 11: Make sure `KH2-43GB` is checked, and then click `Extract game data`. This may take roughly *thirty* or more minutes.
   - **This step is necessary!**
   - If you encounter any errors extracting the game files, please either try again, or re-download your game!

- Step 12: After extraction, click `Next >` and then click `Finish`

When you are done, you should be at this screen!

![image](https://github.com/KHOmega/KH-Linux-Setup/assets/93887977/3c0d26c6-1ef5-4f3e-ba84-9e29a8e0291a)

# Downloading and Installing Re:Fined using OpenKH:

In this section, we will be downloading the necessary patches to properly run Re:Fined v4.xx.

- Step 1: In OpenKH, select the `Mods` button on the top, and then select `Install a new mod`.
   - Under `Add a new mod from GitHub`, we will be pasting in `KH-ReFined/KH2-MAIN`, as seen in the screenshot below, and then will click `Install`.
   - **Optional**: Additional Re:Fined Mods, such as Voice Packs, Heartless Colors, and Vanilla OST can be found [here](https://github.com/KH-ReFined/KH-ReFined?tab=readme-ov-file#kingdom-hearts-ii-1).
      - *Note*: If you download the additional add-ons, please make sure to place the add-ons ***above*** the main patch!

![image](https://github.com/KHOmega/KH-Linux-Setup/assets/93887977/f34df394-93a1-4186-a3b4-5d57204bd665)

- Step 2: You will see `Kingdom Hearts II - Re:Fined [Main Patch]` added into your mods list. Tick the little box so a checkmark appears in it.

- Click `Mod Loader` ->  `Build Only`

![image](https://github.com/KHOmega/KH-Linux-Setup/assets/93887977/ab132d5d-5f2b-4732-8eea-f42418dbfa70)

- A debug window will then open, signaling that the game is currently being patched. Once the window closes by itself, the patching process has been completed.

# Launching Re:Fined.

Congratulations! You are very close into launching Re:Fined!

- Step 1: Load up Heroic Games Launcher.
- Step 2: Start up `KINGDOM HEARTS HD 1.5+2.5 ReMIX`
- Step 3: Start `KINGDOM HEARTS II FINAL MIX` as you would normally.

And there you go! Kingdom Hearts II Final Mix - Re:Fined has been successfully installed! You will know it has worked when you see `Re:Fined by TopazTK` on the title screen.

![title screen](https://github.com/user-attachments/assets/b34ee907-0247-4c0b-94d0-fd76385fb3a4)

# Working Screenshots
<p align="center">
<img width="1920" height="1080" alt="Screenshot 2025-09-02 150943" src="https://github.com/user-attachments/assets/d7035075-1f0c-4f2b-b83a-3c76ee68d842" />
<img width="1920" height="1080" alt="Screenshot 2025-09-02 150911" src="https://github.com/user-attachments/assets/2c70d4d1-d93e-4416-89f8-49f1cd5d03fa" />
<img width="1920" height="1080" alt="Screenshot 2025-09-02 150847" src="https://github.com/user-attachments/assets/1a0bfa3d-a37e-48de-a32c-a21b88518194" />
<img width="3440" height="1440" alt="image" src="https://github.com/user-attachments/assets/0f4a1924-762a-4d87-a802-3f778da1a0c4" />
</p>

# Setting Up Steam Shortcuts

- In Heroic Games Launcher, click on the game you want to make a Steam shortcut for.
- Click the three dots on the top right, and then click `Add to Steam`
- Do the same for any other program you have, and it will appear in your Steam Library.

![image](https://github.com/KHOmega/KH-Linux-Setup/assets/93887977/c31c9751-e137-4c7f-a135-f11d5cfa2cfc)

 - *Note*, if controller inputs are not working, simply either tap your screen, or hold down the `STEAM` button and click down the right touch pad.
