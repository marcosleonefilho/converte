#!/bin/bash

if [ $# -ne 5 ]
then
	echo "Usage: $0 input in-type(iso/dvd=1,video/avi=2) output(without extension) out-type(1=divx,2=h264) mobile-version(1=yes,0=no)"
	exit
fi

INPUT=$1
IN_TYPE=$2
OUTPUT=$3
OUT_TYPE=$4
MOBILE=$5

# Lendo parametros do video (tanto para iso como video):
read_video_parm ${INPUT} ${IN_TYPE}
FPS=`sed -n 1p fps.log`

# Iniciando procedimento para compactar type=1 (imagem iso)
if [ ${IN_TYPE} -eq 1 ]
then
	# Lendo parametros somente pertinentes para iso:
	AID=`sed -n 1p aid.log`
	SID=`sed -n 1p sid.log`
	TITLE=`sed -n 1p title.log`

	echo "Codificando video a partir de ${INPUT}"
	if [ ${OUT_TYPE} -eq 1 ]
	then
		#Para converter para DIVX a partir de uma imagem iso:
		echo "Para o arquivo ${OUTPUT}.avi"
		converte_divx_dvd "${INPUT}" "${TITLE}" ${SID} ${AID} "${OUTPUT}"
	fi
	if [ ${OUT_TYPE} -eq 2 ]
	then
		#Para converter para H264 a partir de uma imagem iso:
		echo "Para o arquivo ${OUTPUT}.mp4"
		converte_h264_dvd "${INPUT}" "${TITLE}" ${SID} ${AID} "${OUTPUT}" ${MOBILE}
	fi
fi
# Fim  > 'Iniciando procedimento para compactar type=1 (imagem iso)'

# Iniciando procedimento para compactar type=2 (arquivo video)
if [ ${IN_TYPE} -eq 2 ]
then
	echo "Codificando video a partir de $1"
	if [ ${OUT_TYPE} -eq 1 ]
	then
		#Para converter para DIVX a partir de um arquivo de video:
		echo "Para o arquivo ${OUTPUT}.avi"
		converte_divx_file "${INPUT}" "${OUTPUT}" 1
	fi
	if [ ${OUT_TYPE} -eq 2 ]
	then
		#Para converter para H264 a partir de um arquivo de video:
		echo "Para o arquivo ${OUTPUT}.mp4"
		converte_h264_file "${INPUT}" "${OUTPUT}" ${MOBILE}
	fi
fi
# Fim > 'Iniciando procedimento para compactar type=2 (arquivo video)'
rm -fv *.log*
