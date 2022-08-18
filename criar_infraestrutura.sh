#! /bin/bash



echo "Criando Diretórios"



mkdir /publico

mkdir /adm

mkdir /ven

mkdir /sec



echo "Criando Grupos"



groupadd GRP_ADM

groupadd GRP_VEN

groupadd GRP_SEC



echo "Criando os usuários do grupo ADM"



useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -e -G GRP_ADM

useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -e -G GRP_ADM

useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -e -G GRP_ADM



echo "Criando os usuários do grupo VEN"



useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -e -G GRP_VEN

useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -e -G GRP_VEN

useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -e -G GRP_VEN



echo "Criando os usuários do grupo SEC"



useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -e -G GRP_SEC

useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -e -G GRP_SEC

useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -e -G GRP_SEC



echo "Adicionando o nome e grupo dono do Diretório"



chown root:GRP_ADM /adm

chown root:GRP_VEN /ven

chown root:GRP_SEC /sec



echo "Permissões"



chmod 777 /publico

chmod 770 /adm

chmod 770 /ven

chmod 770 /sec



echo "Fim..."

