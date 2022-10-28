#!/bin/bash

echo "Atualizando os pacotes do servidor.."
apt-get update
apt-get upgrade -y

echo "Instalando o apache..."
apt-get install apache2 -y

echo "Instalando o unzip..."
apt-get install unzip -y

echo "Instalando o wget..."
apt-get install wget -y

echo "Baixando arquivos da aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip
cd linux-site-dio-main
cp -R * /var/www/html/