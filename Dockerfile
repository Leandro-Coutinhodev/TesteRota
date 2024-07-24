# Use a imagem oficial do PHP como base
FROM php:8.1-apache

# Copie o código do seu projeto para o diretório raiz do servidor web
COPY . /var/www/html/

# Instale extensões PHP necessárias (se houver)
# RUN docker-php-ext-install mysqli pdo pdo_mysql

# Configure o Apache
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Habilitar o módulo rewrite
RUN a2enmod rewrite

# Exponha a porta 80
EXPOSE 80

# Comando para iniciar o Apache
CMD ["apache2-foreground"]
