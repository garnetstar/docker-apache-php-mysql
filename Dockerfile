
FROM php:7.1.8-apache

RUN \
apt-get update && \
a2enmod rewrite && \
apt-get install -y vim git curl zip unzip && \
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
php composer-setup.php --install-dir=/usr/bin --filename=composer && \
rm composer-setup.php

RUN docker-php-ext-install pdo pdo_mysql