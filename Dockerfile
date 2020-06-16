FROM php:7.2-apache
RUN apt-get update && \
    apt-get install -y \
    libzip-dev \
    && docker-php-ext-install pdo_mysql mysqli mbstring zip \
    && a2enmod rewrite