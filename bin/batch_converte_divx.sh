#!/bin/bash

#load environment user folder paths
source ~/.config/user-dirs.dirs

#define app parameters:
CONVERTE_FOLDER=~/converte/bin
ORIGEM_FOLDER=${XDG_DESKTOP_DIR}/origem
DESTINO_FOLDER=${XDG_DESKTOP_DIR}/destino

export PATH=${PATH}:${CONVERTE_FOLDER}

cd "${ORIGEM_FOLDER}"

for file in * ; do
    converte_videos.sh "${file}" 2 "${DESTINO_FOLDER}/${file%%.*}" 1 0 && rm -fv "${file}"
done
