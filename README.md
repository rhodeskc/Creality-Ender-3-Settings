# Creality-Ender-3-Marlin-v20x-Firmware-Settings
Marlin settings for my Ender 3.

It has the Gulfcoast Robotics heated bed installed, so the temp sensor bed needed to be updated.  In addition to this, I swapped out the board for the 4.2.7 Silent board.

## Creality-Ender-3-board-v4.2.7
Marlin Firmware to get Creality v4.2.7 boards working

Download bugfix from git hub https://github.com/MarlinFirmware/Marlin/archive/bugfix-2.0.x.zip

Download Configuration exemples: https://github.com/MarlinFirmware/Configurations/archive/bugfix-2.0.x.zip

Editing the configuration and building it in Visual Studio Code:
http://813studios.com/creality-4-2-7-marlin-bltouch-install-notes-ender-3/

Instructions on updating and installing the Gulfcoats heated bed: https://letsprint3d.net/how-to-install-the-gulfcoast-robotics-heated-bed-ender-3-5/
* NEW: #define TEMP_SENSOR_BED 11
* OLD: #define TEMP_SENSOR_BED 1

Copy the \_Bootscreen.h and \_Statusscreen.h files to the Marlin\ folder, the same one that has Marlin.ino in it.

## In platformio.ini
* Change:   default_envs = mega2560\
* To:       default_envs = STM32F103RET6_creality

## Compile

In Auto Build Marlin at Visual Studio, click on Build botton and wait for the green line

## Where is the firmware I've compilled
In my case: $\.pio\build\STM32F103RET6_creality\
File to copy to a SD card to flash the firmware: **$\.pio\build\STM32F103RET6_creality\\\*.bin**\

## Originally adapted from:
https://github.com/Flawioo/Creality-Ender-3-board-v4.2.7/blob/master/README.md

----

Copied from: http://813studios.com/creality-4-2-7-marlin-bltouch-install-notes-ender-3/

# Creality 4.2.7 Marlin + BLTouch Install notes (Ender-3)

I ordered an upgraded creality v1.1.5 mainboard off Amazon and was shipped Creality’s latest “silent motherboard” version v4.2.7. The product on amazon was described to have a bootloader flashed directly out of box which would make uploading sketches to the board even easier. I spent hours on Arduino IDE trying to upload with the Sanguino board to no avail. 

**Turns out that the new motherboards use the SD card to flash new firmware. All you need to do is drop the “.bin” file to the root directory.**

This made me realize that I just needed to use Visual Studio Code + Auto Build Marlin to compile and update the printer. If you don’t know how to do that, don’t worry– I got you.

Most of this information was found here, these guys got everything working and were able to put together this helpful document that lays out all of the pin data we have so far for the 4.2.7

## Instructions:
Open up VSC and install Auto Build Marlin plugin.

Once you have those both installed, its time to download and open the firmware for the printer inside of Visual Studio Code. 

### Marlin Configuration
First, download the Marlin 2.X.X bugfix from Github here: https://github.com/MarlinFirmware/Marlin/tree/bugfix-2.0.x

Once that’s downloaded, the next step is to open the “Marlin” **folder** that is found inside of the 2.X.X parent directory.

Once you have that opened, now its time to edit the Marlin config files. Below are the changes that I needed make to get my printer working. Take note that this might not necessarily represent your printers setup. 

* Platform.ini
* Configuration.h
* *(optional) Configuration_adv.h*

### Uploading Firmware to the Printer
Once you’ve made all of the changes listed above, compile the firmware with VSC using the Auto Build Marlin plugin and upload it to the root dir of your SD card. Pop the SD card into your printer and boot it up! 
