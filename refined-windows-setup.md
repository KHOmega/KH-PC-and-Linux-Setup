## Pre-requisites
To get started you need to download the following:

- **KINGDOM HEARTS HD 1.5+2.5 ReMIX**
   - Please ***launch*** the game prior to modding to ensure the game works beforehand! Failure to do this will cause the game to not boot when modded.
   - Illegitimate copies are not supported!

- [**Re:Fined**](https://github.com/KH-ReFined/KH-ReFined/releases)
   - Download Re:Fined from the latest build.
      - If you are using *Steam*: `KH2-ReFined-STEAM-vX.XX.zip`
      - If you are using *Epic Games Store*: `KH2-ReFined-EPIC-vX.XX.zip`

- [**OpenKH**](https://github.com/OpenKH/OpenKh/releases)
   - Download `openkh.zip` from the latest numbered release.

- [**.NET Framework 4.8**](https://dotnet.microsoft.com/en-us/download/dotnet-framework/thank-you/net48-offline-installer)
   - Launch and install if not done already.

- [**.NET 6.0 Desktop Runtime**](https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/runtime-desktop-6.0.36-windows-x64-installer)
   - Launch and install if not done already.
----

## OpenKH Setup:

In this section, we will be setting up OpenKH's Mods Manager to patch the necessary files to run Re:Fined

- Step 1: Right click `openkh.zip` and extract the folder somewhere where it won't accidently get deleted.
   - eg: `C:\Users\[UserName]\Documents\OpenKH\`

- Step 2: Go into your `openkh` folder and look for a program named `OpenKh.Tools.ModsManager.exe` and open it.

Step 3: On the `Welcome to OpenKH Mods Manager` screen, click `Next >`, then under `Game edition`, select `PC Release`, select `Global` and then select either `Steam` or `Epic Games Launcher` depending on which launcher you are using to launch the collection.
   - Under `Folder location of the PC release of 1.5+2.5`, locate the directory that your game is installed.
     - If selecting `Detect Installations` doesn't work, manually input the directory in-which your game is located
       - **Steam**: `~\steamapps\common\KINGDOM HEARTS -HD 1.5+2.5 ReMIX-`
       - **Epic Games Launcher**: `~\KH_1.5_2.5`

- Step 5: Click `Next >` and choose `Install Panacea for Windows`. We will be using Panacea for this tutorial.
   - OpenKH Panacea allows you to load your mods without modifying the game files.

- Step 6: OpenKH will ask if you want to install `Lua Backend`. This is *not* necessary for Re:Fined, so feel free to click `Next >` if you do not wish to install it.

- Step 7: On the next screen, it may ask you if you want to launch your games directly via your launcher. Follow through if you want this option.

- Step 8: Make sure `KH2-43GB` is checked, and then click `Extract game data`. This may take roughly *thirty* or more minutes.
   - **This step is necessary!**
   - If you encounter any errors extracting the game files, please either try again, or re-download your game!

- Step 9: After extraction, click `Next >` and then click `Finish`

When you are done, you should be at this screen!

![image](https://github.com/KHOmega/KH-Linux-Setup/assets/93887977/35210466-2789-4fc6-9a31-6e0026d8b763)

## Downloading and Patching in Re:Fined using OpenKH:

In this section, we will be downloading the necessary patches to properly run Re:Fined.

- Step 1: In OpenKH, select the `Mods` button on the top, and then select `Install a new mod`.
   - Under `Add a new mod from GitHub`, we will be pasting in `KH-ReFined/KH2-MAIN`, as seen in the screenshot below, and then will click `Install`.
   - **Optional**: Additional Re:Fined Mods, such as Voice Packs, Heartless Colors, and Vanilla OST can be found [here](https://github.com/KH-ReFined/KH-ReFined?tab=readme-ov-file#kingdom-hearts-ii-1).
      - *Note*: If you download additional add-ons, please make sure to place `KH2-MAIN` ***below*** the additional add-ons!
   - *Note*: `KH-ReFined/KH2-JapaneseVO` and `KH-ReFined/KH2-SpanishVO` take a ***very long time*** to download and install, as it is a rather large repository! If it looks like the program is unresponsive, it is simply because it is downloading the files.

![image](https://github.com/KHOmega/KH-Linux-Setup/assets/93887977/5214422f-a1b2-4197-b73e-7eaa9f8ff394)

- Step 2: You will see `Kingdom Hearts II - Re:Fined` added into your mods list. Tick the little box so a checkmark appears in it.
  - Also tick any other addons you have downloaded as well!

- Click  `Mod Loader` ->  `Build Only`
   - The mod **will** persist after you close the game, so you don't have to re-open OpenKH.

- If you *did not* install OpenKH Panacea, click `Patching` -> `Build and Patch`
   - Sit back and let OpenKH do it's thing at this point. Depending on your PC, this might take between five to fifteen or more minutes. This may also take longer depending on if you downloaded and are implementing any additional addons as well.

- A debug window will then open, signaling that the game is currently being patched.

## Setting up the .exe:

In this section, we will be placing Re:Fined installation files into our game directory.

- Step 1: Locate your game installation.

- Step 2: In your game installation folder, backup your original .exe by either moving or renaming `KINGDOM HEARTS II FINAL MIX.exe` somewhere or something different.

- Step 3: Extract the Re:Fined .zip downloaded earlier, and place `KINGDOM HEARTS II FINAL MIX.exe`, `keystone.dll`, `Newtonsoft.Json.dll` and `System.Runtime.CompilerServices.Unsafe.dll` into your game directory folder.
   - If you get a box asking you if you would like to overwrite any data, select `Yes`

Note:
- The .exe's game icon may not update right away. This is due to Windows Icon caching and in no way affects Re:Fined.

This is what your game installation folder should now look like:

![image](https://github.com/user-attachments/assets/b0319447-c01e-49cb-af66-e3aca2a33093)

## Done!

And there you go! Kingdom Hearts II Final Mix - Re:Fined has been successfully installed! You will know it has worked when you see `Re:Fined by TopazTK` on the title screen.

![title screen](https://github.com/user-attachments/assets/b34ee907-0247-4c0b-94d0-fd76385fb3a4)


And there you go! Re:Fined has been successfully installed!

# Working Screenshots
![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/82ed635e-524b-4f48-b2cd-533f50cd392a)
![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/a4e8c32c-3acd-4eec-96d2-02dfd4bc4330)
![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/d7fddfbe-7ff4-4eae-9581-bed9b0dca2a7)
![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/5607719a-127d-476a-8418-0e816b6e9642)

## Updating Re:Fined:

- Step 1: Check if the updated .exe version contains a note like this:

![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/2704921c-14c5-47a2-bb69-062f1a6624b3)

- Step 2:
- If the note *does exist*, open OpenKH, update the necessary patches (you can see them by looking for the `Update available` note) and [build the patch as you did previously](#downloading-and-patching-in-refined-v4xxs-files-using-openkh).

![image](https://github.com/KHOmega/KH-Linux-Setup/assets/93887977/10045628-4da7-4b4a-a86f-d619a30155f1)

  - After that, download the updated version release and [extract the files again](#setting-up-the-exe).

- If the note *does not exist*, only download the updated version release and [extract the files again](#setting-up-the-exe).
