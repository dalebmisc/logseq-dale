- https://flathub.org/
- ## install flatpak on popos
  id:: 65593f71-f908-47c4-9cde-34592672fcc3
	- ```bash
	  #!/bin/bash
	  
	  DEBIAN_FRONTEND=noninteractive 
	  
	  # Install nala package manager
	  sudo apt install -y nala
	  sudo nala update
	  sudo nala upgrade
	  
	  # Install software for integrating AppImage formats into dock, applications
	  # 	Without this you can launch the app, you just can't pin the app to the
	  #	dock and find it in the applications list.
	  sudo nala install -y software-properties-common
	  echo | sudo add-apt-repository ppa:appimagelauncher-team/stable
	  sudo nala update
	  sudo nala install -y appimagelauncher
	  
	  # Install flatpak apps
	  
	  # Add the flathub repository if not already added
	  flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
	  # Add the kdeapps repository if not already added
	  flatpak remote-add --if-not-exists kdeapps --from https://distribute.kde.org/kdeapps.flatpakrepo
	  # Update runtime
	  flatpak update --appstream && flatpak update
	  # Install the apps
	  flatpak install --system -y flathub org.telegram.desktop
	  flatpak install --system -y flathub org.videolan.VLC
	  # flatpak install --system -y flathub org.libreoffice.LibreOffice
	  # flatpak install --system -y flathub com.viber.Viber
	  flatpak install --system -y flathub org.qbittorrent.qBittorrent
	  flatpak install --system -y flathub org.kde.dolphin
	  flatpak install --system -y flathub com.bitwarden.desktop
	  flatpak install --system -y flathub org.wireshark.Wireshark
	  flatpak install --system -y flathub com.plexamp.Plexamp
	  flatpak install --system -y flathub io.missioncenter.MissionCenter
	  flatpak install --system -y flathub org.kde.isoimagewriter
	  flatpak install --system -y flathub org.kde.konsole
	  flatpak install --system -y flathub org.kde.elisa
	  flatpak install --system -y flathub org.kde.kpat
	  flatpak install --system -y flathub org.gnome.Mahjongg
	  flatpak install --system -y flathub org.gnome.Mines
	  # flatpak install --system -y flathub com.gitlab.newsflash
	  # flatpak install --system -y flathub com.mattjakeman.ExtensionManager
	  flatpak install --system -y flathub com.microsoft.Edge
	  flatpak install --system -y flathub io.dbeaver.DBeaverCommunity
	  # flatpak install --system -y flathub com.jetbrains.PyCharm-Community
	  flatpak install --system -y flathub com.google.Chrome
	  flatpak install --system -y flathub com.skype.Client
	  flatpak install --system -y flathub com.visualstudio.code
	  flatpak install --system -y flathub ch.protonmail.protonmail-bridge
	  flatpak install --system -y flathub org.mozilla.Thunderbird
	  flatpak install --system -y flathub io.github.cboxdoerfer.FSearch
	  flatpak install --system -y flathub com.mattjakeman.ExtensionManager
	  flatpak install --system -y flathub org.onlyoffice.desktopeditors
	  flatpak install --system -y flathub ca.desrt.dconf-editor
	  
	  sudo flatpak update -y
	  
	  # Install apps with nala
	  sudo nala install -y gnome-tweaks
	  sudo nala install -y kate
	  sudo nala install -y ncdu # install app to view what is taking up space 
	        # run:
	        # ncdu / - what is taking up space in the folders the user has access to. / is the folder to start in
	        # ncdu / - / is the folder to start in, where / is the root of the system
	        # su ncdu - shows what is taking up space in all dir
	        # su ncdu -x - excludes attached file systems
	  sudo nala install -y nemo
	  sudo nala install -y nemo-fileroller
	  sudo nala install -y synaptic
	  sudo nala install -y neofetch
	  sudo nala install -y hub
	  sudo nala install -y qdirstat
	  sudo nala install -y steam
	  sudo nala install -y rmlint
	  sudo nala install -y rmlint
	  sudo nala install -y rclone
	  sudo nala install -y ncdu
	  sudo nala install -y btop
	  sudo nala install -y htop
	  sudo nala install -y exa
	  sudo nala install -y bat
	  sudo nala install -y ripgrep
	  sudo nala install -y fzf
	  sudo nala install -y zoxide
	  sudo nala install -y entr
	  sudo nala install -y mc
	  sudo nala install -y tldr
	  sudo nala install -y tmux
	  sudo nala install -y lutris
	  
	  #ddgr
	  sudo apt-get install build-essential unzip -y
	  wget https://github.com/jarun/ddgr/archive/refs/tags/v2.1.zip
	  unzip file, then go to folder with terminal, then type: sudo make install
	  
	  #wikit
	  sudo nala install -y nodejs
	  sudo nala install -y npm
	  sudo npm install wikit -g
	  
	  # git
	  echo | sudo add-apt-repository ppa:git-core/ppa
	  sudo nala install git
	  
	  # Brave browser
	  sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
	  echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
	  sudo nala update
	  sudo nala install -y brave-browser
	  
	  # Done
	  echo "Script has finished."
	  ```