#pull php fast process manager image
FROM php:7.0-fpm

# Install selected extensions and other stuff
RUN apt-get update && apt-get install -y zlib1g-dev libicu-dev libpq-dev \
    && docker-php-ext-install opcache \
    && docker-php-ext-install intl \
    && docker-php-ext-install mbstring \
    && docker-php-ext-install pdo_mysql

WORKDIR "/var/www"
