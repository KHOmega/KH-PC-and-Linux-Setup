## Pre-requisites
To get started you need to download and have the following installed:

- **KINGDOM HEARTS HD 1.5+2.5 ReMIX**
   - Please ***launch*** the game prior to modding to ensure the game works beforehand! Failure to do this will cause the game to not boot when modded.
   - Illegitimate copies are not supported!


- [**OpenKH**](https://github.com/OpenKH/OpenKh/releases)
   - Download `openkh.zip` from the latest numbered release.

- [**Visual C++ Redistributable Runtimes All-in-One**](https://www.techpowerup.com/download/visual-c-redistributable-runtime-package-all-in-one/)
   - Download and run `install_all.bat`

- [**.NET 6.0 Desktop Runtime**](https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/runtime-desktop-6.0.36-windows-x64-installer)

- [**.NET 8.0 Runtime**](https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/runtime-desktop-8.0.19-windows-x64-installer)

- [**.NET 8.0 Desktop Runtime**](https://dotnet.microsoft.com/en-us/download/dotnet/thank-you/runtime-8.0.19-windows-x64-installer)
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

- Step 5: Click `Next >` and choose `Install Panacea`. We will be using Panacea for this tutorial. 
   - Patching your game directly is not supported!
   - OpenKH Panacea allows you to load your mods without modifying the game files.

- Step 6: OpenKH will ask if you want to install `Lua Backend`. This is *not* necessary for Re:Fined, so feel free to click `Next >` if you do not wish to install it.

- Step 7: On the next screen, it may ask you if you want to launch your games directly via your launcher. Follow through if you want this option.

- Step 8: Make sure `KH2-43GB` is checked, and then click `Extract game data`. This may take roughly *thirty* or more minutes.
   - **This step is necessary!**
   - If you encounter any errors extracting the game files, please either try again, or re-download your game!

- Step 9: After extraction, click `Next >` and then click `Finish`

When you are done, you should be at this screen!

<p align="center">
<img width="645" height="441" alt="image" src="https://github.com/user-attachments/assets/08de91e5-1031-4b4c-a52b-605a8160e36c" />
</p>

## Downloading and Patching in Re:Fined using OpenKH:

In this section, we will be downloading the necessary patches to properly run Re:Fined.

- Step 1: In OpenKH, select the `Mods` button on the top, and then select `Install a new mod`.
   - Under `Add a new mod from GitHub`, enter `KH-ReFined/KH2-MAIN`, as seen in the screenshot below, and then click `Install`.
   - **Optional**: Additional Re:Fined Mods, such as Voice Packs, Heartless Colors, and Vanilla OST can be found [here](https://github.com/KH-ReFined/KH-ReFined?tab=readme-ov-file#kingdom-hearts-ii-1).
      - *Note*: If you download the additional add-ons, please make sure to place the add-ons ***above*** the main patch!

<p align="center">
<img width="645" height="441" alt="image" src="https://github.com/user-attachments/assets/0f1349d8-7324-4dab-a3f1-e3be10c730b7" />
</p>

<p align="center">
  <img width="772" height="636" alt="New Example" src="https://github.com/user-attachments/assets/8299cdb9-7b51-45ed-a019-fffd4b75977f" />
</p>

- Step 2: You will see `Kingdom Hearts II - Re:Fined` added into your mods list. Tick the little box so a checkmark appears in it.
  - Also tick any other addons you have downloaded as well!

- Click  `Mod Loader` ->  `Build Only`
   - The mod **will** persist after you close the game, so you don't have to re-open OpenKH.
   - e.g, it should look like this:

<p align="center">
<img width="422" height="134" alt="image" src="https://github.com/user-attachments/assets/9459e9cd-b8ed-4c47-a4ed-c59abb3284a1" />
</p>

- If you *did not* install OpenKH Panacea, click `Patching` -> `Build and Patch`
   - Sit back and let OpenKH do it's thing at this point. Depending on your PC, this might take between five to fifteen or more minutes. This may also take longer depending on if you downloaded and are implementing any additional addons as well.

- A debug window will then open, signaling that the game is currently being patched.
    - When this window closes, the game will finish patching.

## Done!

And there you go! Kingdom Hearts II Final Mix - Re:Fined has been successfully installed! You will know it has worked when you see `Re:Fined by TopazTK` on the title screen.

<p align="center">
<img width="1920" height="1080" alt="Screenshot 2025-09-02 150816" src="https://github.com/user-attachments/assets/b52b974a-2159-4a5b-8376-26ae64ae916b" />
</p>

And there you go! Re:Fined has been successfully installed!

# Working Screenshots
<p align="center">
<img width="1920" height="1080" alt="Screenshot 2025-09-02 150943" src="https://github.com/user-attachments/assets/d7035075-1f0c-4f2b-b83a-3c76ee68d842" />
<img width="1920" height="1080" alt="Screenshot 2025-09-02 150911" src="https://github.com/user-attachments/assets/2c70d4d1-d93e-4416-89f8-49f1cd5d03fa" />
<img width="1920" height="1080" alt="Screenshot 2025-09-02 150847" src="https://github.com/user-attachments/assets/1a0bfa3d-a37e-48de-a32c-a21b88518194" />
<img width="3440" height="1440" alt="image" src="https://github.com/user-attachments/assets/0f4a1924-762a-4d87-a802-3f778da1a0c4" />
</p>

## Updating Re:Fined:
- Step 1: Check if the updated .exe version contains a note like this:

![image](https://github.com/KHOmega/KH-SteamDeck-Setup/assets/93887977/2704921c-14c5-47a2-bb69-062f1a6624b3)

- Step 2:
- If the note *does exist*, open OpenKH, update the necessary patches (you can see them by looking for the `Update available` note) and [build the patch as you did previously](#downloading-and-patching-in-refined-v4xxs-files-using-openkh).

![image](https://github.com/KHOmega/KH-Linux-Setup/assets/93887977/10045628-4da7-4b4a-a86f-d619a30155f1)
