#!/bin/bash

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

sudo flatpak update -y

# Done
echo "Script has finished."
