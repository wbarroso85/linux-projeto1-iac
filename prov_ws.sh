#!/bin/bash

# Atualizar o sistema
echo "Atualizando o sistema..."
sudo apt update && sudo apt upgrade -y

# Instalar o Apache
echo "Instalando o Apache..."
sudo apt install apache2 -y

# Iniciar o serviço do Apache
echo "Iniciando o Apache..."
sudo systemctl start apache2

# Habilitar o Apache para iniciar com o sistema
echo "Habilitando o Apache para iniciar automaticamente..."
sudo systemctl enable apache2

# Criar uma página web de exemplo
echo "Criando uma página de exemplo..."
echo "<html><head><title>Servidor Web Provisionado</title></head><body><h1>Servidor Web no Ar!</h1></body></html>" | sudo tee /var/www/html/index.html

# Verificar status
echo "Verificando status do Apache..."
sudo systemctl status apache2

echo "Provisionamento concluído! Acesse seu servidor na porta 80."
