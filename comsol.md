---
layout: page
title: Installing and Running COMSOL Multiphysics
permalink: /comsol/
---

# Installing COMSOL Multiphysics

1. Go to [https://systems.engr.ucr.edu/welcome](https://systems.engr.ucr.edu/welcome) and click on **My Account**, log in using your UCR NetID, then follow the steps to set up your ENGR account.  Note that this ENGR account is BCOE-specific and separate from your main UCR NetID that you use for most things.  You might have already set up your ENGR account during orientation.

    - **If you already have a preexisting ENGR account and you can successfully log in to it on the above page**, you're good to go on to Step 3.

    - **If you already have a preexisting ENGR account but you've forgotten your username or password**, the site above can help you reset your password.

    - **If you're not a BCOE student**, you'll probably need to go to the BCOE Systems office to ask them set up an account for you. They are located in Winston Chung Hall down the hallway that's on the left when you walk into Bytes cafe on the first floor.  Room 107 is down that hallway on the right. Knock on the door and tell them that you're not a BCOE student but you're enrolled in a Bioengineering class and you need access to COMSOL Multiphysics for the class.  They should be able to set you up with an ENGR account.

2. After your ENGR account is successfully set up, **wait for at least an hour before trying to install COMSOL** to give the system time to make the necessary connections between your ENGR and UCR accounts.  While you're waiting, you can...

3. Start downloading the COMSOL installer for your computer.  This is a LARGE download so do this somewhere that you have a good reliable internet connection. If possible, start the download before bedtime and let it run overnight.  Download the COMSOL installer that matches your computer.  If you're a Mac user and you don't know if you have Apple Silicon or Intel, [read this to find out](https://support.apple.com/en-us/HT211814).

    - **Windows users:**  [COMSOL63_dvd.iso](https://www.dropbox.com/scl/fi/vymvuq79cyl5y2ulmchyp/COMSOL63_dvd.iso?rlkey=zy4jagvq0tqk26eeri6nnn7lk&st=3hjp5a8g&dl=0)

    - **Mac users with newer Apple Silicon processors:**  [COMSOL63_full_macarm64.dmg](https://www.dropbox.com/scl/fi/60o90ugnqjnp1cu21x4ix/COMSOL63_full_macarm64.dmg?rlkey=tac49gcpl9hkyk5yjmmha2v1z&st=khmydfi8&dl=0)

    - **Mac users with older Intel processors:** [COMSOL63_full_maci64.dmg](https://www.dropbox.com/scl/fi/nwq5bt1bztff9uxe6fxl1/COMSOL63_full_maci64.dmg?rlkey=2tezih18pcw4gnttelct9h9y8&st=c4jm2b2l&dl=0)

4. Once you've finished downloading the COMSOL installer and at least one hour has passed since creating your ENGR account, proceed to the next step.

5. Next, you need to install the UCR Cisco Secure (AnyConnect) VPN on your computer.

    - **If you HAVE NOT used the UCR VPN before**, you'll need to follow these instructions to download and install it on your computer.  These instructions guide you through both INSTALLING and CONNECTING TO the VPN.  Follow all the steps.

      - **Windows users:**  [VPN installation and connection on Windows](https://docs.google.com/document/d/1PLoDH4kyM9RgnWTfy__sDxsYdNmwk9d_yfW3JEIAVQM/edit?usp=sharing)

      - **Mac users:**  [VPN installation and connection on Mac](https://docs.google.com/document/d/1vABPUWcDA6nsVtU_dqWA6V3w5muIl8PIGvakAxbsgYE/edit?usp=sharing)

    - **If you ALREADY HAVE the UCR VPN installed**, continue to Step 6.  Pay attention to the server name in the next step; you may need to update your server name due to recent changes to the VPN.

    - **If you have trouble connecting to the UCR VPN,** you'll need to reach out to the UCR ITS folks for help:  [https://its.ucr.edu/support](https://its.ucr.edu/support)

6. Once you have the UCR VPN installed, you need to connect to the VPN.

    - **If you just followed the VPN installation steps,** then you should be already connected to the VPN.  Move on to Step 7.

    - **If you already had the VPN installed on your computer**, you need to run the Cisco Secure Client (AnyConnect) program on your computer to connect to the VPN.  This process is described in the VPN installation links in Step 5 above; skip down to the "Connect" section and follow the steps there.  Be sure to use the right address for the VPN server: `vpn.ucr.edu/bcoe`

7. Make absolutely sure that the Cisco Secure Client VPN connection is active and the VPN status is "Connected" before going to the next step!  To check, you should be able to find a little VPN icon at the top-right of your screen (if you're on a Mac) or the bottom-right of your screen (if you're on Windows); hovering over or clicking the icon should show that you're CONNECTED to the UCR VPN.  If you're not connected to the VPN, the following steps won't work!

    - **If you're having problems getting the VPN connected**, it might be due to a poor wireless connection; try again later or from a different location.

    - **If you keep having problems with the VPN**, you'll need to reach out to the UCR ITS folks for help:  [https://its.ucr.edu/support](https://its.ucr.edu/support)

8. Navigate to the folder that you downloaded the COMSOL installer to in a previous step.  It'll probably be in your **Downloads** folder.  Double-click on the file.  In the window that comes up, find and run the COMSOL installer program:

    - On Windows, it'll be called **setup.exe**.  Right-click that file and select **Run as Administrator**.

    - On Mac, it'll be called **COMSOL Installer**.  Right-click that file and select **Open**.  Say **OK** to any security warnings that might appear.

9. After a while, you'll see a screen asking for the language for installation.  Pick your preferred language and click **Next**.

10. Next you'll see a screen where you can choose between a new COMSOL installation, adding/removing products, changing the license, or uninstalling COMSOL.  Click on **New COMSOL Installation**.

11. On the next screen you'll see the COMSOL license info.  Follow these steps carefully:

    - Click **I accept the terms of this license**

    - In the dropdown beside **License information**, select `<port number>@<hostname>`

    - Beside **Port number**, enter `1718` 

    - Beside **Hostname**, enter `comsol.engr.ucr.edu`  (type carefully! be sure to spell "comsol" correctly!)

    - Now click **Next**.

12. If you compete the previous step and and get an error saying **"License could not be validated"** or **"License server was not available"** or something like that, it's probably one of three things:

    - **You're probably not fully connected to the VPN.**  Confirm that your Cisco Secure (AnyConnect) VPN status is "Connected."  If it isn't, go back to Step 5.

    - **You mistyped something in the license step.**  Double-check everything (did you spell "comsol" right?).

    - **Your ENGR account might not be linked to the UCR VPN yet.**  Sometimes this can take longer than an hour to happen (maybe even up to a day in some cases).  So keep trying these steps occasionally over the next 24 hours.  Remember to reconnect the Cisco Secure (AnyConnect) VPN each time you try (back at Step 5) or it'll definitely fail again!.

13. If all goes well, you'll see a screen where you can select the **Products** to install.  Just leave the defaults as-is and click **Next**.

14. Next is an **Options** screen.  Just leave the defaults and click **Next**.

15. Next is a screen about **LiveLink for MATLAB**.  Again just leave the defaults and click **Next**.

16. Finally you'll reach a screen that lists everything to be installed.  Click the **Install** button at the bottom.  Installation can take a while.  Don't close your laptop or let your computer fall asleep during this process!  Make sure it stays connected to the internet and the VPN server.

17. Once the installation is finished, you can close the installer program.  You might be prompted to install COMSOL updates; you can safely ignore this for now.  After you successfully run COMSOL Multiphysics in the next section, you can delete the COMSOL installer from your Downloads folder to save space on your computer. 

# Running COMSOL Multiphysics

1. Before running COMSOL Multiphysics, you must be connected to the Cisco Secure (AnyConnect) VPN, just like you were when you installed COMSOL.

    - If you're still connected to the VPN because you just installed COMSOL, you're good to go, move on to Step 2.

    - If you're not connected to the VPN, you need to do it now.  Here are the instructions - complete ALL the steps if you need to install/reinstall the VPN, or complete just the steps after **Connect** if the VPN is already installed:

      - **Windows users:**  [VPN installation and connection on Windows](https://docs.google.com/document/d/1PLoDH4kyM9RgnWTfy__sDxsYdNmwk9d_yfW3JEIAVQM/edit?usp=sharing)

      - **Mac users:**  [VPN installation and connection on Mac](https://docs.google.com/document/d/1vABPUWcDA6nsVtU_dqWA6V3w5muIl8PIGvakAxbsgYE/edit?usp=sharing)

1. Make absolutely sure that the Cisco Secure Client VPN connection is active and the VPN status is "Connected" before going to the next step!  To check, you should be able to find a little VPN icon at the top-right of your screen (if you're on a Mac) or the bottom-right of your screen (if you're on Windows); hovering over or clicking the icon should show that you're CONNECTED to the UCR VPN.  If you're not connected to the VPN, the following steps won't work!

1. You should be able to find a program called **COMSOL Multiphysics (Classkit License)** in the Programs/Applications installed on your computer.  Note that COMSOL installs several programs with similar names; you're looking for the one called **COMSOL Multiphysics (Classkit License).**  Double-click that program to run COMSOL!

1. When you're done running COMSOL, you can disconnect the Cisco Secure Client VPN.
