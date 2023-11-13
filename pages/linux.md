## fstab
collapsed:: true
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
	-