# proton vpn installation
id:: 65593fd7-ef35-49c6-820b-276b0d700f8f
	- https://protonvpn.com/support/official-linux-vpn-debian/
	- download the proton vpn deb package and then double-click it to install
	- install the gui
		- ```bash
		  sudo apt-get update
		  sudo apt-get install proton-vpn-gnome-desktop
		  
		  ```
	- install ubuntu appindicators, if needed, to get a tray icon.
		- ```bash
		  sudo apt install libayatana-appindicator3-1 gir1.2-ayatanaappindicator3-0.1 gnome-shell-extension-appindicator
		  ```
	- after installing, reboot, then open the proton vpn app and the tray icon should appear