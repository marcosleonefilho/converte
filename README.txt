INSTALAÇÃO:
**************************************************************
1. Edite o arquivo ~/.bashrc e adicione no final dele:
export PATH=$PATH:$HOME/bin

2. Extraia o conteúdo do arquivo em ~/

3. Dê permissões de execução para os arquivos executáveis:
chmod +x ~/bin/*




Usando o script:
**************************************************************
converte_videos.sh input in-type(iso/dvd=1,video/avi=2) output(without extension) out-type(1=divx,2=h264) mobile-version(1=yes,0=no)

Exemplos:
*************************************************************
- Ripar DVD pra H264 para usar no celular:
converte_videos.sh /dev/dvd 1 southpark 2 1

- Ripar DVD para DIVX (compatível com aparelhos de DVD domésticos):
converte_videos.sh /dev/dvd 1 southpark 1 0

- Converter um vídeo do youtube para DIVX (compatível com aparelhos de DVD domésticos):
converte_videos.sh meuvideo.flv 2 meuvideodivx 1 0
