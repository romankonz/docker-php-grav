FROM php:apache

RUN apt-get update \
    && apt-get install -yq \
        git \
        libfreetype6-dev \
        libjpeg62-turbo-dev \
        libpng12-dev \
        unzip \
        wget \
    && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd zip \
    && a2enmod rewrite