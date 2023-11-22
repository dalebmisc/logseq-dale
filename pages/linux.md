## #fstab
	- https://www.youtube.com/watch?v=A7xH74o6kY0&t=1147s
		- mounting drives
			- /media - for temporary mounts like flash drives.
				- MOUNTING HERE SHOWS THE DRIVES AS DEVICES SO THEY ARE EASILY ACCESSIBLE
			- /mnt - recommended for systems that are usually always mounts
				- can create folders for each 'permanent' drive to mount, then mount them in the created folder
			- HOWEVER - the volumes won't show up as devices on the sidebar, you will need to access through the folder, so could setup a bookmark/volume1/music/musicadded
	- some examples of using fstab to mount my drives:
		- UUID can be found in Disks application.  The path is where drives get mounted on Fedora.  Check the directory to confirm drives get loaded there.
		- ```terminal
		  UUID=ddb70c29-df61-4c48-996d-fb8a49533bc8 /media/dale/INT_SMSNG_1TB_1   ext4    defaults
		  UUID=2c7c6199-b59e-4aa0-b010-ba181c73b7d0 /media/dale/INT_SMSNG_1TB_2   ext4    defaults
		  UUID=841db78b-4616-4c26-9032-e0e3fdac98e0 /media/dale/INT_WD_1TB_1      ext4    defaults
		  UUID=d23ceeb5-8e8b-401c-87bd-1c65995aacee /media/dale/INT_SMSNG_1TB_3   ext4    defaults
		  
		  
		  LABEL=INT_SMSNG_1TB_1 /mnt/INT_SMSNG_1TB_1 ext4 defaults, 0 0
		  LABEL=INT_SMSNG_1TB_2 /mnt/INT_SMSNG_1TB_2 ext4 defaults, 0 0
		  LABEL=INT_SMSNG_1TB_3 /mnt/INT_SMSNG_1TB_3 ext4 defaults, 0 0
		  LABEL=INT_WD_1TB_1 /mnt/INT_WD_1TB_1 ext4 defaults, 0 0
		  
		  
		  LABEL=INT_SMSNG_1TB_1 /mnt/INT_SMSNG_1TB_1 auto nosuid,nodev,nofail,x-gvfs-show 0 0
		  LABEL=INT_SMSNG_1TB_2 /mnt/INT_SMSNG_1TB_2 auto nosuid,nodev,nofail,x-gvfs-show 0 0
		  LABEL=INT_WD_1TB_1 /mnt/INT_WD_1TB_1 auto nosuid,nodev,nofail,x-gvfs-show 0 0
		  LABEL=INT_SMSNG_1TB_3 /mnt/INT_SMSNG_1TB_3 auto nosuid,nodev,nofail,x-gvfs-show 0 0
		  
		  ```
	- Possible fstab entries
	-
- ## update packages
	- ### #apt #flatpak
		- ```cmd
		  # apt
		  sudo apt update |
		  sudo apt list --upgradable |
		  sudo apt upgrade
		  
		  # flatpak, update all
		  sudo flatpak update
		  
		  # flatpak, update single app
		  sudo flatpak update --app org.gimp.GIMP
		  
		  # flatpak, uninstall app
		  sudo flatpak uninstall org.gimp.GIMP
		  
		  # flatpak, remove runtimes and extensions that are not used by installed applications
		  sudo flatpak uninstall --unused
		  
		  # flatpak, list installed apps
		  flatpak list --app
		  
		  # flatpak, list all apps
		  flatpak list
		  
		  # flatpak, changes made to flatpak installation over time
		  sudo flatpak history
		  
		  # run an app
		  flatpak run com.plexamp.Plexamp
		  ```
	- #flatpak
		- Basic commands: [Using Flatpak — Flatpak  documentation](https://docs.flatpak.org/en/latest/using-flatpak.html#basic-commands)
			- Install an application: [Using Flatpak — Flatpak  documentation](https://docs.flatpak.org/en/latest/using-flatpak.html#install-applications)
			- Update an application: [Using Flatpak — Flatpak  documentation](https://docs.flatpak.org/en/latest/using-flatpak.html#updating)
			- Remove an application: [Using Flatpak — Flatpak  documentation](https://docs.flatpak.org/en/latest/using-flatpak.html#remove-an-application)
			- List installed applications: [Using Flatpak — Flatpak  documentation](https://docs.flatpak.org/en/latest/using-flatpak.html#list-installed-applications)
	- #nala
	- #qdirstat
	- #dbvisualizer
	- #fsearch
	- #onlyoffice
		- ```terminal
		  flatpak install flathub org.onlyoffice.desktopeditors
		  ```
- ## #[[keyboard shortcuts]]
	- add program launch shortcuts
		- use launchers for:
			- browser <super> + <ctrl> + b
			- settings <super> + <ctrl> + s
		- setup shortcuts in Happy Appy Hotkey:
			- terminal <super> + <ctrl> + t
			- vs code <super> + <ctrl> + v
			- qbittorrent <super> + <ctrl> + q
			- bitwarden <super> + <ctrl> + p
			- nemo <super> + <ctrl> + f (terminal command is nemo)
- # #desktops
	- ```bash
	  # install cinnamon desktop
	  # [How to Install Cinnamon on Fedora 39/38/37 Linux - LinuxCapable](https://www.linuxcapable.com/how-to-install-cinnamon-desktop-environment-on-fedora-linux/)
	  sudo dnf upgrade --refresh
	  sudo dnf group install "Cinnamon Desktop"
	  reboot
	  # to remove the desktop
	  sudo dnf upgrade --refresh
	  sudo dnf group remove "Cinnamon Desktop"
	  reboot
	  
	  # install kde desktop
	  sudo dnf upgrade --refresh
	  sudo dnf groupinstall "KDE Plasma Workspaces"
	  sudo reboot
	  # remove
	  sudo dnf upgrade --refresh
	  sudo dnf groupremove "KDE"
	  reboot
	  
	  # install deepin desktop
	  sudo dnf upgrade --refresh
	  sudo dnf group install "Deepin Desktop"
	  sudo reboot
	  # remove
	  sudo dnf upgrade --refresh
	  sudo dnf group remove "Deepin Desktop"
	  reboot
	  
	  # x11
	  sudo nala install x11
	  
	  ```
- # mount #synology drives
  id:: 6559478b-b1c1-4ca2-b2a4-e7d50e88494d
	- create directories...
		- sudo mkdir /mnt/synology
		- sudo mkdir /mnt/synology/dalesyn1_books
		- sudo mkdir /mnt/synology/dalesyn1_home
		- sudo mkdir /mnt/synology/dalesyn1_music
		- sudo mkdir /mnt/synology/dalesyn1_streaming
	- then mount each...
		- sudo mount -t cifs //192.168.86.31/books /mnt/synology/dalesyn1_books -o username=dale,password=Sxi6Yxi9
		- sudo mount -t cifs //192.168.86.31/home /mnt/synology/dalesyn1_home -o username=dale,password=Sxi6Yxi9
		- sudo mount -t cifs //192.168.86.31/music /mnt/synology/dalesyn1_music -o username=dale,password=Sxi6Yxi9
		- sudo mount -t cifs //192.168.86.31/streaming /mnt/synology/dalesyn1_streaming -o username=dale,password=Sxi6Yxi9
	- to unmount...
		- sudo umount /mnt/synology/dalesyn1_books
		- sudo umount /mnt/synology/dalesyn1_home
		- sudo umount /mnt/synology/dalesyn1_music
		- sudo umount /mnt/synology/dalesyn1_streaming