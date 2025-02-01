# Installation

> [!IMPORTANT]
> - This guide assumes you are installing this on Steam Deck! For other OS's, please adjust accordingly.
> - ***Steam Deck***: Please launch into Desktop Mode and use a mouse and keyboard! While this is doable without a mouse or keyboard, it will be frustrating!

## Prerequisites
To get started you will need the following:

- [**KINGDOM HEARTS -HD 1.5+2.5 ReMIX-**](https://store.steampowered.com/app/2552430/KINGDOM_HEARTS_HD_1525_ReMIX/)

- **OpenKH & Seed Generator Script**
   - Will be downloaded in tutorial below

- **Protontricks (Flatpak)**
   - Download from Discover and launch once.

# OpenKH & Seed Generator Script

> [!IMPORTANT]
> - If you already have OpenKH setup and configured, you can skip below to the [Seed Generator Step](https://github.com/KHOmega/KH-PC-and-Linux-Setup/blob/main/GoA-Randomizer-linux-setup.md#installing-goa-randomizer) after running the script and *continue from there*!
> - This script will automatically download the latest version of **OpenKH**, **Seed Generator**, and **.NET 6.0.31**.
> - **OpenKH** and **Seed Genearator** will be placed in your `Documents` folder
> - **.NET 6.0.31** will be placed into your `Downloads` folder.

- Step 1: Open Konsole and enter and run the following code:

`wget https://raw.githubusercontent.com/KHOmega/KH-PC-and-Linux-Setup/refs/heads/main/GoASetup.sh`

- Step 2: Enter and run the following code:

`sh GoASetup.sh`

# Setting Up OpenKH

- Step 1: In Steam, click `Add a Game` on the bottom right, select `Add a Non-Steam Game...`, select `Browse`, navigate to `~/Documents/OpenKH`, select `OpenKH.Tools.ModsManager.exe`, and click `Open`. Then click `Add Selected Programs`.

![OpenKH Steam Library](https://github.com/user-attachments/assets/6b7af2e3-3d06-4acb-9e02-2c0f1003c58f)

- Step 2: Right Click `OpenKH.Tools.ModsManager.exe` in your Steam Library, and click `Properties`
   - Click `Compatibility`, and then select `Force the use of a specific Steam Play compatibility tool`, and select `Proton Experimental`
   - Optional: Rename `OpenKH.Tools.ModsManager.exe` to something more cleaner such as `OpenKH Mods Manager` in the properties window.

- Step 3: Load up OpenKH. This will generate a prefix and it will error out telling you that **.NET 6** needs to be installed. Close out of this window and proceed to the next step.

- Step 4: Navigate to your `Downloads` folder and open `windowsdesktop-runtime-6.0.31-win-x64.exe`.
   - Protontricks should now open up. When it does, locate OpenKH on the game selection and select it to install **.NET 6** to it's prefix.

- After a couple minutes, open OpenKH Mods Manager again and proceed with the tutorial.

# Setting up OpenKH:

In this section, we will be setting up OpenKH's Mods Manager.

- Step 1: A window will pop up saying "Welcome to OpenKH Mods Manager".

  On the `Welcome to OpenKH Mods Manager` screen, click `Next >`, then under `Game edition`, select `PC Release`, then select `Global`, and then select either `Steam` or `Epic Games Launcher`, depending on where you are loading your game from.

  Select `Detect Installations`. If this fails to find where your game is installed, please manually find the folder where the game is installed
  - This is usually located in `Z:\home\deck\.local\share\Steam\steamapps\common\KINGDOM HEARTS -HD 1.5+2.5 ReMix-` for **Steam** or wherever you installed the game under **Epic Games Launcher**

- Step 5: Click `Next >` and choose `Install Panacea`.

- Step 6: OpenKH will ask if you want to install `Lua Backend`. Make sure under `Game Collection`, `KINGDOM HEARTS HD 1.5+2.5 ReMIX` is selected, click `KH2`, and then select `Install and Configure Lua Backend`.
   - This step can not be skipped.

- Step 7: If you select Steam, on the next screen, it will ask if you want to `Launch Games Directly (Steam)`. Skip this, as this method does not work on Steam Deck/Linux.

- Step 8: Make sure `KH2-43GB` is checked, and then click `Extract game data`. This may take roughly *thirty* or more minutes.
   - If you encounter any errors extracting the game files, please either try again, or re-download your game!

- Step 9: After extraction, click `Next >` and then click `Finish`

When you are done, you should be at this screen!

![image](https://github.com/KHOmega/KH-Linux-Setup/assets/93887977/3c0d26c6-1ef5-4f3e-ba84-9e29a8e0291a)

# Installing GoA Randomizer:

In this section, we will be downloading the necessary patches to properly run GoA Randomizer.

- Step 1: Ensure that the top right of the mod manager has `Kingdom Hearts 2` selected.

- Step 2: In OpenKH, select the `Mods` button on the top, and then select `Install a new mod`.

- Step 2: You will see `GoA ROM Edition v.x.xx.x` added into your mods list. Tick the little box so a checkmark appears in it.

- Step 3: Minimize OpenKH for now and continue on with setting up Seed Generator.

# Installing GoA Seeds:

- Step 1: In Steam, click `Add a Game` on the bottom right, select `Add a Non-Steam Game...`, select `Browse`, and in `~/Documents/SeedGenerator`, select `KH2.Randomizer.exe`, and click `Open`. Then click `Add Selected Programs`.

- Step 2: Right Click `KH2.Randomizer.exe` in your Steam Library, and click `Properties`
   - Click `Compatibility`, and then select `Force the use of a specific Steam Play compatibility tool`, and select `Proton Experimental`
   - Optional: Rename `KH2.Randomizer.exe` to something more cleaner such as `Seed Generator` in the properties window.

- Step 3: Load up the seed generator.
   - A window will open with no text and a black background. This just means that the Seed Generator is setting up it's files and will open up normally within thirty seconds.

- Step 4: Generate a seed of your choosing, and then save it somewhere easily accessable, such as `~/Documents`
   - Take note on not saving `randoseed.zip` into your prefix folder, as this will be annoying to navigate to when installing a new seed.

![image](https://github.com/user-attachments/assets/82a0e8fa-5bba-4b22-a232-594d3e16adb8)

- Step 5: Navigate back to OpenKH, click on `Mods` -> `Install a New Mod`, and then `Select and Install Mod Archive or Lua Script`, and navigate to where you saved `randoseed.zip`, and click `Open` and then `Install`

- Step 6: Make sure your Randomizer Seed is ***above*** GoA Rom Edition, and that both are selected with a check mark, then select `Mods` -> `Build Only`.
   - Note: If you are using any other mods, please make sure they are ***between*** GoA and Rando Seed!

![image](https://github.com/user-attachments/assets/ec082b30-d938-4ab0-ac09-a1fbe0afd58e)

# Launching GoA Randomizer:

Congratulations! You are very close into playing GoA Randomizer!

- Step 1: Right click `KINGDOM HEARTS -HD 1.5+2.5 HD ReMIX-` -> `Properties...` and enter the following under `Launch Options`:
     - `WINEDLLOVERRIDES="version,dinput8=n,b" %command%`
     -  If you are coming from the ***Re:Fined*** guide, skip this step!
- Step 2: Click play on `KINGDOM HEARTS -HD 1.5+2.5 HD ReMIX-`
- Step 3: Select `KINGDOM HEARTS II FINAL MIX`

And there you go! Kingdom Hearts II Randomizer has been successfully installed! You will know it has worked when you see your rando seed hash when you select `NEW GAME`.

![image](https://github.com/user-attachments/assets/a3ade002-1c70-4110-927d-4cbd21a84f43)
