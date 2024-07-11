# tablet2monitor
Easy-to-use program to turn your Android tablet into a second monitor for Linux-based systems.

This simple program helps turn almost any Android tablet/device into a USB secondary monitor.

Requirements: x11vnc, xrandr, adb (Android Debug Bridge), git
# Installation

1.Install system requirements for Debian-based systems like Ubuntu:
  
    sudo apt update
    sudo apt install x11vnc xrandr adb git

2.Download
  
    cd ~
    git clone https://github.com/Nandor21/tablet2monitor
  
3. configuration

  Open the file named dis_conf.txt, which looks like this:
  
     v_dis_gft=1280 800 60
     virtual_dis=1280x800_60.00
     vnc_dis_size=1280x800
     main_dis_length=1366
    
  The first three variables are for configuring the virtual display:

     v_dis_gft=(virtual display width) (virtual display height) (refresh rate in Hz)
     virtual_dis=(virtual display width)x(virtual display height)_(refresh rate)
     vnc_dis_size=(virtual display width)x(virtual display height)

  The fourth variable is for the main (physical) display width:

     main_dis_length=(physical display width)

4.Preparing the Android device 
 
 Go to Settings > About phone/tablet and tap on the Build number until it says "You are now a developer." After this, go to Developer options and enable USB debugging.

 Download a VNC viewer on your device, like RealVNC. Add a new connection and for the server address, enter 127.0.0.1:5900. This will connect to the x11vnc server running on  your computer.

 Connect your Android device to your computer via USB and allow USB debugging.

# Starting

 1.In the folder where you downloaded the files, there are two more files: t2m.sh and t2m-off.sh. You need to make these executable. Open a terminal and enter these two commands:

     sudo chmod +x t2m.sh
     sudo chmod +x t2m-off.sh

 2.You can start t2m.sh to initiate the program and use t2m-off.sh to stop it.
