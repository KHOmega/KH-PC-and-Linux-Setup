# Installation

## Update 03/13/24
There is currently an issue with new installations of Re:Fined, resulting in a infinite loading screen after following all the directions. This is due to Re:Fined failing to initilize its custom save directories, and the issue is currently being looked into. Please look at the end of this guide [here](https://github.com/KHOmega/KH-PC-and-Linux-Setup/blob/main/refined-windows-setup.md#initializing-saveconfiglog-directories-error) on how to fix this issue while a fix is being worked on.


## Note:
If you are installing an older version of Re:Fined (eg. 3.00), please follow the instructions [here](https://github.com/KH-ReFined/KH-ReFined/blob/mother/SETUP.md#installing-refined-v320).

----

## Pre-requisities
To get started you need to download the following:

- [**KINGDOM HEARTS HD 1.5+2.5 ReMIX**](https://store.epicgames.com/en-US/p/kingdom-hearts-hd-1-5-2-5-remix)
   - If you are using an unofficial copy, please make sure your vanilla game works before installing Re:Fined!

- [**KINGDOM HEARTS II FINAL MIX Re:Fined v4.00**](https://github.com/KH-ReFined/KH-ReFined/releases)
   - Download the latest build of Re:Fined.

- [**OpenKH**](https://github.com/OpenKH/OpenKh/releases)
   - Download `openkh.zip` from the latest build.

## Optional but Recommended:

- [**ViGEmBus**](https://github.com/nefarius/ViGEmBus/releases/tag/v1.22.0)
   - Download ``ViGEmBus_1.22.0_x64_x86_arm64.exe``
   - The DualSense/DS4 integration requires the VigEmDriver.
   - You may skip installing this by booting up Re:Fined, and then accessing the newly created ``refined.ini`` where your .exe files are located and setting ``dualSenseIntegration = true`` to ``dualSenseIntegration = false``
      - Failure to do this will result in Re:Fined not opening

***Please also have the following downloaded and installed already if you do not already:***
- [**Visual C++ Redistributable Runtimes All-in-One**](https://www.techpowerup.com/download/visual-c-redistributable-runtime-package-all-in-one/)
   - Download and run `install_all.bat`

----

## OpenKH Setup:

In this section, we will be setting up OpenKH's Mods Manager to patch the necessary files to run Re:Fined 4.00.

- Step 1: Right click `openkh.zip` and extract the folder somewhere where it won't accidently get deleted.
   - eg: `C:\Users\[UserName]\Documents\OpenKH\`

- Step 2: Go into your `openkh` folder and look for a program named `OpenKh.Tools.ModsManager.exe` and open it.

- Step 3: A window will pop up saying "Welcome to OpenKH Mods Manager"
   - You are going to click `Next >`, select `PC Release via Epic Game Store`, and then you are going to click the little folder icon to select the location of your game.
   - If you do not know where you have `KINGDOM HEARTS HD 1.5+2.5 ReMIX` installed, open up Epic Games Store, go into your library, right click `KINGDOM HEARTS HD 1.5+2.5 ReMIX`, click `Manage`, and then click the folder icon next to `Installation`. This will bring you to where it is downloaded.

- Step 4: Click `Next >` and choose whether you want to install OpenKH Panacea. For this tutorial, we ***will*** be installing and using Panacea, so please select `Install Panacea for Windows`.
   - OpenKH Panacea allows you to load your mods without modifying the game files.

- Step 5: OpenKH will ask if you want to install `Lua Backend`. This is *not* necessary for Re:Fined, so feel free to click `Next >` if you do not wish to install it.

- Step 6: On the next screen, you may choose to `Launch via Epic Games`. If you would like to, check this and then click `Next >`.

- Step 7: Make sure `KH2-25GB` is checked, and then click `Extract game data`. This may take roughly fifteen minutes.
   - If you have already used OpenKH in the past, I recommend doing this step again with a completely fresh install of the game, that way any extracted data is guaranteed to not be accidently modified by a pre-existing modification.
   - If you encounter any errors extracting the game files, please either try again, or re-download your game!

- Step 8: After extraction, click `Next >` and then click `Finish`

When you are done, you should be at this screen!

![image](https://github.com/KHOmega/KH-Linux-Setup/assets/93887977/35210466-2789-4fc6-9a31-6e0026d8b763)

## Downloading and Patching in Re:Fined v4.xx's files using OpenKH:

In this section, we will be downloading the necessary patches to properly run Re:Fined v4.00.

- Step 1: In OpenKH, select the `Mods` button on the top, and then select `Install a new mod`.
   - Under `Add a new mod from GitHub`, we will be pasting in `KH-ReFined/KH2-MAIN`, as seen in the screenshot below, and then will click `Install`.
   - *Optional*: Feel free to also add `KH-ReFined/KH2-MultiAudio`, `KH-ReFined/KH2-SpanishVO` `KH-ReFined/KH2-VanillaOST`, and `KH-ReFined/KH2-VanillaEnemy` as well for extra Re:Fined v4.00 features!
   - *Note*: If you download additional add-ons, please make sure to place `KH2-MAIN` ***below*** the additional add-ons!
   - *Note*: If downloading `KH-ReFined/KH2-SpanishVO`, place above `KH-ReFined/KH2-MultiAudio`
   - *Note*: `KH-ReFined/KH2-MultiAudio` takes a ***very long time*** to download and install, as it is a rather large repository! If it looks like the program is unresponsive, it is simply because it is downloading the files.

![image](https://github.com/KHOmega/KH-Linux-Setup/assets/93887977/5214422f-a1b2-4197-b73e-7eaa9f8ff394)

- Step 2: You will see `Kingdom Hearts II - Re:Fined` added into your mods list. Tick the little box so a checkmark appears in it.

- Click  `Mod Loader` ->  `Build Only`
   - The mod **will** persist after you close the game, so you don't have to re-open OpenKH.

- If you *did not* install OpenKH Panacea, click `Patching` -> `Build and Patch`
   - Sit back and let OpenKH do it's thing at this point. Depending on your PC, this might take between five to fifteen or more minutes. This may also take longer depending on if you downloaded and are implementing any additional addons as well.

- A debug window will then open, signaling that the game is currently being patched.

![](https://cdn.discordapp.com/attachments/1145843947571249152/1155913243232063558/image.png?ex=653fe299&is=652d6d99&hm=1e4d8e927f678fc75008346591f5440c914d67e718b8eeb233379ae16e6202bd)

![](https://cdn.discordapp.com/attachments/1145843947571249152/1155913243534037103/image.png?ex=653fe299&is=652d6d99&hm=33b1beb8e70c91f3ac9b52cec434afb8d2361f00520872bac3581213955dedc6)

## Setting up the .exe:

In this section, we will be placing our new Re:Fined v4.00 installation files into our game directory.

- Step 1: Locate your game installation.

- Step 2: In your game installation folder, backup your original .exe by either moving or renaming `KINGDOM HEARTS II FINAL MIX.exe` somewhere or something different.

- Step 3: Extract the Re:Fined .zip downloaded earlier, and place `KINGDOM HEARTS II FINAL MIX.exe`, `keystone.dll`, `Newtonsoft.Json.dll` and `ViGEmClient.dll` into your game directory folder.
   - Skip adding `ViGEmClient.dll` if you are not installing ViGEmBus.
   - If you get a box asking you if you would like to overwrite any data, select `Yes`

Note:
- The .exe's game icon may not update right away. This is due to Windows Icon caching and in no way affects Re:Fined.

This is what your game installation folder should now look like

![image](https://github.com/KHOmega/KH-PC-and-Linux-Setup/assets/93887977/a231670a-04bb-4ef4-a1c7-a750603da051)

## Done!

Congratulations! Now you can just boot the game as you would normally and it will be there. You will know if it has worked when you select `NEW GAME` and you get the new options to select your controller prompts and skip the prologue! 

![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/da61afaa-602c-4af0-a473-dc924c9daf95)

And there you go! Re:Fined v4.xx has been successfully installed!

# Working Screenshots
![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/82ed635e-524b-4f48-b2cd-533f50cd392a)
![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/a4e8c32c-3acd-4eec-96d2-02dfd4bc4330)
![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/d7fddfbe-7ff4-4eae-9581-bed9b0dca2a7)
![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/5607719a-127d-476a-8418-0e816b6e9642)

## Updating Re:Fined v4.xx:

Updating is not a trivial task and does not take long to perform. 

- Step 1: Check if the updated .exe version contains a note like this:

![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/2704921c-14c5-47a2-bb69-062f1a6624b3)

- Step 2:
- If the note *does exist*, open OpenKH, update the necessary patches (you can see them by looking for the `Update available` note) and [build the patch as you did previously](#downloading-and-patching-in-refined-v4xxs-files-using-openkh).

![image](https://github.com/KHOmega/KH-Linux-Setup/assets/93887977/10045628-4da7-4b4a-a86f-d619a30155f1)

  - After that, download the updated version release and [extract the files again](#setting-up-the-exe).

- If the note *does not exist*, only download the updated version release and [extract the files again](#setting-up-the-exe).

----

### "Initializing Save/Config/Log Directories..." Error!
Please do the following if you freshly install the game and get an infinite loading screen:

- In your Documents folder, locate `KINGDOM HEARTS HD 1.5+2.5 ReMIX` -> `Epic Games Store` -> `[folder with a bunch of numbers and letters]`
- Copy the name of that folder, and then go into your Kingdom Hearts folder, and make a new folder and apply that string of numbers and letters into `Save Data` and `Configuration`
   - It'll look something like this:

![image](https://github.com/KHOmega/KH-PC-and-Linux-Setup/assets/93887977/20ac9118-c8f6-4053-92f5-2e20cea04e7f)

