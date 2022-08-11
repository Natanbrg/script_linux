#!/bin/bash

echo "Script de configuração de estrutura de usuários, diretórios e permissões..."

echo "Criando  grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m -c "Carlos da Silva" -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd maria -m -c "Maria da Silva" -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM
useradd joao -m -c "Joao da Silva" -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_ADM

useradd debora -m -c "Debora da Silva" -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana da Silva" -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN
useradd roberto -m -c "Roberto da Silva" -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_VEN

useradd Josefina -m -c "Josefina da Silva" -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd amanda -m -c "Amanda da Silva" -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC
useradd rogerio -m -c "Rogerio da Silva" -s /bin/bash -p $(openssl passwd -crypt senha123) -G GRP_SEC

echo "Criando diretórios..."

mkdir -p -v projeto/publico
mkdir -p -v projeto/adm
mkdir -p -v projeto/ven
mkdir -p -v projeto/sec

echo "Especificando permissões..."

chown root:GRP_ADM projeto/adm/
chown root:GRP_VEN projeto/ven/
chown root:GRP_SEC projeto/sec/

chmod 777 projeto/publico/
chmod 770 projeto/adm/
chmod 770 projeto/ven/
chmod 770 projeto/sec/

echo "Finalizado!"





