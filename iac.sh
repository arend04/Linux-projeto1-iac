#!/bin/bash

echo "Criando diretórios do sistema ..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Diretórios criados!"

echo "Criando Grupos ..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados!"

echo "Criando usuários"

useradd carlos -m -c "Carlos do adm" -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_ADM
useradd maria -m -c "Maria do adm" -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_ADM
useradd joao -m -c "João do adm" -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_ADM

useradd debora -m -c "Débora do ven" -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_VEN
useradd sebastiana -m -c "Sebastiana do ven" -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_VEN
useradd roberto -m -c "Roberto do ven" -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_VEN

useradd josefina -m -c "Josefina do sec" -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_SEC
useradd amanda -m -c "Amanda do sec" -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_SEC
useradd rogerio -m -c "Rogério do sec" -s /bin/bash -p $(openssl passwd -5 Senha123) -G GRP_SEC

echo "Usuários criados!"

echo "Definindo permissões..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

echo "Permissões definidas" 

echo "Script finalizado!"



