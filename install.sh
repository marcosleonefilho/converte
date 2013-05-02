#!/bin/bash

sudo apt-get install mencoder mplayer2

#setting gnome to show files from desktop folder on dashboard
gsettings set org.gnome.desktop.background show-desktop-icons true

source ~/.config/user-dirs.dirs

#installing app:
mkdir -p ${XDG_DESKTOP_DIR}/origem
mkdir -p ${XDG_DESKTOP_DIR}/destino
echo instalando aplicativo na area de trabalho ${XDG_DESKTOP_DIR}
cp ~/converte/converte.desktop "${XDG_DESKTOP_DIR}/"
echo aplicativo instalado com sucesso. 
