FROM php:7.2-apache

RUN apt-get update && \
    apt-get install -y vim \
    vim \
    curl \
    unzip \
    zlib1g-dev \
    libzip-dev && \
    a2enmod rewrite && \ 
    docker-php-ext-install pdo_mysql mysqli mbstring zip

RUN cd /opt/ && curl -L -Os https://exment.net/downloads/ja/exment.zip && \
    unzip exment.zip && \
    chown www-data: /opt/exment -R && \
    chmod 0755 /opt/exment -R && \
    ln -s /opt/exment/public /var/www/exment \
    && sed -i 's!/var/www/html!/var/www/exment!g' /etc/apache2/sites-available/000-default.conf

