#!/bin/bash

echo "Criando diretórios..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando os grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários no sistema..."

useradd isabela -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd livia -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd cecilia -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd ana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd carolina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd carmem -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd fabio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd lucas -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando as permissões dos novos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Processo finalizado."
