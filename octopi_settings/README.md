# Instructions
1. [Install Pi imager for windows](https://www.raspberrypi.com/software/)
1. Run the installer.
1. Configure it per the instructions [here](https://octoprint.org/download/).
1. Open advanced options by clicking on the button with the gear, or by using the keyboard shortcut ctrl+shift+x
> Specific settings used are:
> - OS =  "Choose OS" > "Other Specific Purpose OS" > "3D printing" > "OctoPi" > "stable" version.
> - SSID / WiFi stuff
> - Change password only
1. Click save
1. Flash the card.

Once that has completed, set the printer profile settings as follows:
> - **Form factor:** Rectangular
> - **Origin:** Lower Left
> - **Heated Bed:** Yes (checked)
> - **Heated Chamber:** No (unchecked)
> - **Width:** 220mm
> - **Depth:** 220mm
> - **Height:** 250mm
> - **Axes:** Default**
> - **Custom Bounding Box:** No (unchecked)
> - **Nozzle Diameter:** 0.4mm
> - **Number of Extruders:** 1

![Raspberry Pi settings](raspberry_installer_settings.png)
