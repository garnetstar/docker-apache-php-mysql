
FROM php:7.1.8-apache

RUN \
a2enmod rewrite && \
apt-get update && apt-get install vim -y && \
php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" && \
  php composer-setup.php --install-dir=/usr/bin --filename=composer && \
  rm composer-setup.php