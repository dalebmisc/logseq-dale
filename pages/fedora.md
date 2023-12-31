- System setup:
	- Script to automate much of the setup
		- The following can be created in a file with extension .sh and then:
		- chmod +x <filename> to set permissions
		- ./<filename> to run
		- ```sh
		  #!/bin/bash
		  # A script to install apps on fedora
		  
		  # some initial config (can do later too):
		  # [7 Things You MUST DO After Installing Fedora Linux - YouTube](https://www.youtube.com/watch?v=RrRpXs2pkzg)
		  # 00:00 - Fedora 36 Post Install Guide
		  # 00:30 - 1. DNF Configuration
		  # sudo nano /etc/dnf/dnf.conf
		  # fastestmirror=True
		  # max_parallel_downloads=10
		  # defaultyes=True
		  # keepcache=True
		  # <CTRL> + o to write the above
		  # <CTRL> + x to exit and continue
		  
		  # to run this file, start a terminal...
		  # set file permission: chmod +x <name of file>
		  # to run: ./<name of file>
		  
		  # After installing, remove installation flash drive, then reboot and go through the startup process for some quick settings and to add gmail account
		  # Can add more gmail accounts later in settings
		  
		  # Add the flathub repository if not already added
		  flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
		  # Add the kdeapps repository if not already added
		  flatpak remote-add --if-not-exists kdeapps --from https://distribute.kde.org/kdeapps.flatpakrepo
		  # Install the apps
		  flatpak install -y flathub org.telegram.desktop
		  flatpak install -y flathub org.videolan.VLC
		  flatpak install -y flathub org.libreoffice.LibreOffice
		  flatpak install -y flathub com.viber.Viber
		  flatpak install -y flathub org.qbittorrent.qBittorrent
		  flatpak install -y flathub org.kde.dolphin
		  flatpak install -y flathub com.bitwarden.desktop
		  flatpak install -y flathub org.wireshark.Wireshark
		  flatpak install -y flathub com.plexamp.Plexamp
		  flatpak install -y flathub io.missioncenter.MissionCenter
		  flatpak install -y flathub org.kde.isoimagewriter
		  flatpak install -y flathub org.kde.konsole
		  flatpak install -y flathub org.kde.elisa
		  flatpak install -y flathub org.kde.kpat
		  flatpak install -y flathub org.gnome.Mahjongg
		  flatpak install -y flathub org.gnome.Mines
		  flatpak install -y flathub com.gitlab.newsflash
		  flatpak install -y flathub com.mattjakeman.ExtensionManager
		  flatpak install -y flathub com.microsoft.Edge
		  flatpak install -y flathub io.dbeaver.DBeaverCommunity
		  flatpak install -y flathub com.jetbrains.PyCharm-Community
		  flatpak install -y flathub com.google.Chrome
		  # other stuff to add: 
		  
		  # sudo dnf makecache --refreshhow t
		  sudo dnf clean dbcache
		  sudo dnf update
		  sudo dnf upgrade
		  sudo dnf install gnome-tweaks
		  sudo dnf install kate
		  sudo tee /etc/yum.repos.d/skype-stable.repo<<EOF
		  [skype-stable]
		  name=Skype - STABLE
		  baseurl=[Index of /rpm/stable](https://repo.skype.com/rpm/stable/)
		  gpgcheck=1
		  repo_gpgcheck=1
		  gpgkey=https://repo.skype.com/data/SKYPE-GPG-KEY
		  EOF
		  sudo dnf install skypeforlinux -y
		  sudo dnf install ncdu # install app to view what is taking up space 
		      # run:
		      # ncdu / - what is taking up space in the folders the user has access to. / is the folder to start in
		      # ncdu / - / is the folder to start in, where / is the root of the system
		      # su ncdu - shows what is taking up space in all dir
		      # su ncdu -x - excludes attached file systems
		  # 08:19 - 6. Install Media Codecs
		  sudo dnf groupupdate multimedia --setop="install_weak_deps=False" --exclude=PackageKit-gstreamer-plugin
		  sudo dnf groupupdate sound-and-video
		  # install nemo: [Using Nemo in Fedora - DEV Community](https://dev.to/epergo/using-nemo-in-fedora-37-1ha3)
		  sudo dnf install nemo
		  # to install an extension
		  sudo dnf install nemo-fileroller
		  sudo tee ~/.local/share/applications/com.dale.starter.nemo.desktop<<EOF
		  [Desktop Entry]
		  Encoding = UTF-8
		  Name = Nemo File Manager
		  Exec = /usr/bin/nemo
		  Icon = nemo
		  Type = Application
		  Categories = Development
		  EOF
		  sudo chmod +x ~/.local/share/applications/com.dale.starter.nemo.desktop
		  # The following has been taken care of in the code above.
		      # to launch nemo, use keyboard shortcut, see below in keyboard shortcuts section
		      # here is some info from the web page on how to create a desktop entry...
		      # There is one minor thing we have to fix though, there isn't any launcher to access the software we just installed. You can launc# to launch nemo, use keyboard shortcut, see below in keyboard shortcuts section
		  # here is some info from the web page on how to create a desktop entry...
		  # There is one minor thing we have to fix though, there isn't any launcher to access the software we just installed. You can launch it from the terminal just typing nemo but that's not ideal for a GUI application.
		  # To add a new icon to the GNOME launcher for Nemo, you just have to create its Desktop entry file and place it in ~/.local/share/applications.
		  #   give it name: com.dale.starter.nemo.desktop
		  # To find the location of the Nemo executable, you can use which:
		  # $ which nemo
		  # /usr/bin/nemo
		  # Also need to set file so it can run, in terminal:
		  # chmod +x /home/dale/.local/share/applications/com.dale.starter.nemo.desktop
		  # the file may rename itself but it can be double clicked to open the app, then on the dock the app icon can be right-clicked and added to dock
		  # And that's it! Now once you are inside Nemo you can press F3 and the side panel will show up.
		      # Encoding = UTF-8
		      # Name = Nemo File Manager
		      # Exec = /usr/bin/nemo
		      # Icon = nemo
		      # Type = Application
		      # Categories = Development
		      # To find the location of the Nemo executable, you can use which:
		      # $ which nemo
		      # /usr/bin/nemo
		      # Also need to set file so it can run, in terminal:
		      # chmod +x /home/dale/.local/share/applications/com.dale.starter.nemo.desktop
		      # the file may rename itself but it can be double clicked to open the app, then on the dock the app icon can be right-clicked and added to dock
		      # And that's it! Now once you are inside Nemo you can press F3 and the side panel will show up.
		  
		  # install pop os window manager, the screen will go black, give it a minute then force power off then restart machine 
		  # 	after the computer restarts, comment out these lines
		  # sudo dnf install -y git nodejs typescript make
		  # git clone [GitHub - pop-os/shell: Pop!_OS Shell](https://github.com/pop-os/shell.git)
		  # cd shell
		  # make local-install
		  
		  
		  # Done
		  echo "All apps installed successfully."
		  
		  
		  # Other
		  
		  # download: microsoft visual studio code
		  # double-click downloaded file to install it
		  # if double-clicking doesn't work you may have to enter the following in the terminal on the downloaded file: chmod +x <name of file>
		  
		  # download Anaconda
		  # on downloaded file: chmod +x <name of file>
		  # to run: sudo ./<name of file>
		  # read license agreement:
		  # <shift> + c to exit the agreement and agree to terms
		  # add anaconda to $PATH
		  # export PATH=/home/dale/anaconda3/bin:$PATH
		  # type 'conda' in terminal, the command should be recognized and provide info
		  
		  
		  # download: private internet access from internet, interactive brokers trader work station
		  # on downloaded file: chmod +x <name of file>
		  # to run: ./<name of file>
		  
		  # install the following gnome extensions
		  # Clipboard Indicator by Tudmotu
		  # Force Quit by megh
		  # Tray Icons: Reloaded by Martin
		  # Extension List by grroot
		  # Happy Appy Hotkey by jgno
		  
		  # add program launch shortcuts
		  # use launchers for:
		  # browser <super> + <ctrl> + b
		  # settings <super> + <ctrl> + s
		  # 
		  # setup shortcuts in Happy Appy Hotkey:
		  # terminal <super> + <ctrl> + t
		  # vs code <super> + <ctrl> + v
		  # qbittorrent <super> + <ctrl> + q
		  # bitwarden <super> + <ctrl> + p
		  # nemo <super> + <ctrl> + f (terminal command is nemo)
		  
		  # in software app, remove apps that aren't needed: tour, document scanner
		  
		  # add folders to qbittorrent, add search engines
		  
		  # [Linux Crash Course - The /etc/fstab file - YouTube](https://www.youtube.com/watch?v=A7xH74o6kY0&t=1147s)
		  # mounting drives
		  # /media - for temporary mounts like flash drives.
		  #     - MOUNTING HERE SHOWS THE DRIVES AS DEVICES SO THEY ARE EASILY ACCESSIBLE
		  # /mnt - recommended for systems that are usually always mounts
		  #     - can create folders for each 'permanent' drive to mount, then mount them in the created folder
		  #     - HOWEVER - the volumes won't show up as devices on the sidebar, you will need to access through the folder, so could setup a bookmark/volume1/music/musicadded
		  # some examples of using fstab to mount my drives:
		  # UUID=ddb70c29-df61-4c48-996d-fb8a49533bc8 /run/media/dale/INT_SMSNG_1TB_1 ext4 defaults 0 0
		  # UUID=2c7c6199-b59e-4aa0-b010-ba181c73b7d0 /run/media/dale/INT_SMSNG_1TB_2 ext4 defaults 0 0
		  # UUID=d23ceeb5-8e8b-401c-87bd-1c65995aacee /run/media/dale/INT_SMSNG_1TB_3 ext4 defaults 0 0
		  # UUID=841db78b-4616-4c26-9032-e0e3fdac98e0 /run/media/dale/INT_WD_1TB_1 ext4 defaults 0 0
		  # UUID can be found in Disks application.  The path is where drives get mounted on Fedora.  Check the directory to confirm drives get loaded there.
		  
		  
		  # install cinnamon desktop
		  # [How to Install Cinnamon on Fedora 39/38/37 Linux - LinuxCapable](https://www.linuxcapable.com/how-to-install-cinnamon-desktop-environment-on-fedora-linux/)
		  # sudo dnf upgrade --refresh
		  # sudo dnf group install "Cinnamon Desktop"
		  # reboot
		  # to remove the desktop
		  # sudo dnf upgrade --refresh
		  # sudo dnf group remove "Cinnamon Desktop"
		  # reboot
		  
		  # install kde desktop
		  # sudo dnf upgrade --refresh
		  # sudo dnf groupinstall "KDE Plasma Workspaces"
		  # sudo reboot
		  # remove
		  # sudo dnf upgrade --refresh
		  # sudo dnf groupremove "KDE"
		  # reboot
		  
		  # install deepin desktop
		  # sudo dnf upgrade --refresh
		  # sudo dnf group install "Deepin Desktop"
		  # sudo reboot
		  # remove
		  # sudo dnf upgrade --refresh
		  # sudo dnf group remove "Deepin Desktop"
		  # reboot
		  
		  # make terminal look nice
		  # add the following to the end of the /etc/bashrc file: to open the file type the following in terminal: sudo nano /etc/bashrc
		  # Function to get the current git branch
		  # git_branch() {
		  #     git rev-parse --abbrev-ref HEAD 2> /dev/null
		  # }
		  # Set the PS1: [Bash Shell PS1: 10 Examples to Make Your Linux Prompt like Angelina Jolie](https://www.thegeekstuff.com/2008/09/bash-shell-ps1-10-examples-to-make-your-linux-prompt-like-angelina-jolie/)
		  # PS1="\[\033[41m\]\[\033[37m\][\s-\V    \d  \@] \u@\h    -->    \w \$(git_branch)\$ \[\033[0m\]" 
		  
		  
		  ```