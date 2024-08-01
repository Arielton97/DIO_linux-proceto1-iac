#!/bin/bash

echo "====================="
echo "====================="
echo "Criando diretórios..."
echo "====================="

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo"====================="
echo "Criando grupos..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC


echo"====================="
echo "Grupos criados: GRP_ADM; GRP_VEN; e GRP_SEC"

echo "====================="
echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd 1233) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd 1233) -G GRP_ADM
useradd joao -m -s /bin/bash -m -p $(openssl passwd 1233) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd 1233) -G GRP_VEN
useradd sebastiao -m -s /bin/bash -p $(openssl passwd 1233) -G GRP_VEN
useradd roberto  -m -s /bin/bash -p $(openssl passwd 1233) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd 1233) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd 1233) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd 1233) -G GRP_SEC

echo "====================="
echo "Especificando permissões para os diretórios..."
chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim......"

echo "====================="
echo "====================="

