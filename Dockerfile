# Use a imagem oficial do PHP como base
FROM php:8.1-apache

# Copie o código do seu projeto para o diretório raiz do servidor web
COPY . /var/www/html/

# Instale extensões PHP necessárias (se houver)
# RUN docker-php-ext-install mysqli pdo pdo_mysql

# Configure o Apache (opcional)
# ADD apache-config.conf /etc/apache2/sites-enabled/000-default.conf

# Exponha a porta 80
EXPOSE 80
