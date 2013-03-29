#!/bin/sh

sudo apt-get install menconder mplayer2

#setting gnome to show files from desktop folder on dashboard
gsettings set org.gnome.desktop.background show-desktop-icons true

source ${HOME}/.config/user-dirs.dirs

#installing app:
mkdir ${XDG_DESKTOP_DIR}/origem
mkdir ${XDG_DESKTOP_DIR}/destino
cp ${HOME}/converte/converte.desktop ${XDG_DESKTOP_DIR}/
