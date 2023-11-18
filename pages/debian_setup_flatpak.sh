#!/bin/bash

# Install flatpak apps

# Add the flathub repository if not already added
flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
# Add the kdeapps repository if not already added
flatpak remote-add --if-not-exists kdeapps --from https://distribute.kde.org/kdeapps.flatpakrepo
# Install the apps
flatpak install -y flathub org.telegram.desktop
flatpak install -y flathub org.videolan.VLC
# flatpak install -y flathub org.libreoffice.LibreOffice
# flatpak install -y flathub com.viber.Viber
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
# flatpak install -y flathub com.gitlab.newsflash
# flatpak install -y flathub com.mattjakeman.ExtensionManager
flatpak install -y flathub com.microsoft.Edge
flatpak install -y flathub io.dbeaver.DBeaverCommunity
# flatpak install -y flathub com.jetbrains.PyCharm-Community
flatpak install -y flathub com.google.Chrome

# Done
echo "Script has finished."
