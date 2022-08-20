#!/bin/bash

echo "Atualizando o servidor Linux"

apt-get update
apt-get upgrade -y

echo "Instalando  servidor Apache"

apt install apache2 -y

echo "Instalando unzip"

apt install unzip -y

echo "Baixando aplicação"

cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/headsx/main.zip

echo "Descompactando..."

unzip main.zip

echo "Abrindo diretorio"

cd linux-site-dio-main

echo  "Copiando arquivos para pasta do apache"

cp - R * /var/www/html

