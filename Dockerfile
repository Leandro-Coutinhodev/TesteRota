# Use a imagem oficial do PHP como base
FROM php:8.1-apache

# Copie o código do seu projeto para o diretório raiz do servidor web
COPY . /var/www/html/

# Configure o Apache
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Habilitar o módulo rewrite
RUN a2enmod rewrite

# Configurar DirectoryIndex e AllowOverride
# RUN echo "<Directory /var/www/html/>" >> /etc/apache2/apache2.conf
# RUN echo "    DirectoryIndex index.php index.html" >> /etc/apache2/apache2.conf
# RUN echo "    AllowOverride All" >> /etc/apache2/apache2.conf
# RUN echo "</Directory>" >> /etc/apache2/apache2.conf

# Adicionar configuração do VirtualHost 
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf 
# Exponha a porta 80
EXPOSE 80

# Comando para iniciar o Apache
CMD ["apache2-foreground"]
