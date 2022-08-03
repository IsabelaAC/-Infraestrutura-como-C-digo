#!/bin/bash


echo "Criando os usuários do sistema...."

useradd convidado -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd convidado -e

useradd alunos -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd alunos -e

useradd mentores -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd mentores -e

useradd professores -c "Usuário convidado" -s /bin/bash -m -p $(openssl passwd -crypt Senha123)
passwd professores -e

echo "Finalizado, os novos usuários já se encontram no sistema."
