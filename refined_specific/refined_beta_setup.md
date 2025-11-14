## Pre-requisites
To get started you need to download and have the following installed:

- **KINGDOM HEARTS HD 1.5+2.5 ReMIX**
   - Please ***launch*** the game prior to modding to ensure the game works beforehand! Failure to do this will cause the game to not boot when modded.
   - Illegitimate copies are not supported!

- [KH2-MAIN.zip](https://www.patreon.com/posts/kingdom-hearts-140453986)
   - This is located on TopazTK's Patreon Page. Please show him your support if you're able to!

- [**OpenKH**](https://github.com/OpenKH/OpenKh/releases)
   - Download `openkh.zip` from the latest numbered release.

- [**Visual C++ Redistributable Runtimes All-in-One**](https://www.techpowerup.com/download/visual-c-redistributable-runtime-package-all-in-one/)
   - Download and run `install_all.bat`

- [**Visual C++ 2022 Redistributable - 14.30.30708**]
   - Please ***install both***
      - [x64](https://download.visualstudio.microsoft.com/download/pr/571ad766-28d1-4028-9063-0fa32401e78f/5D3D8C6779750F92F3726C70E92F0F8BF92D3AE2ABD43BA28C6306466DE8A144/VC_redist.x64.exe)
      - [x86](https://download.visualstudio.microsoft.com/download/pr/571ad766-28d1-4028-9063-0fa32401e78f/F02DEA65EA65633D1718E6C5E5EEE7D2DF640D1FFF332E4669DEA530B8C4F0E7/VC_redist.x86.exe)

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
   - Under `Install a Mod Archive or Lua Script`, click `Select and install Mod Archive or Lua Script` and select `KH2-MAIN.zip` that was previously downloaded from TopazTK's Patreon Page.

<p align="center">
<img width="304" height="184" alt="Screenshot 2025-11-11 134137" src="https://github.com/user-attachments/assets/4aace408-d69c-43f6-9df9-eefebe9040b7" />
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
