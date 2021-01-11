FROM php:7.4.1-apache
RUN apt-get update

RUN apt-get install -y wget libjpeg-dev libfreetype6-dev libmagick++-dev \
libmagickwand-dev \
libpq-dev \
libfreetype6-dev \
libjpeg62-turbo-dev \
libpng-dev \
libwebp-dev \
libxpm-dev &&  docker-php-ext-configure gd --with-freetype=/usr/include/ --with-jpeg=/usr/include/ && \
docker-php-ext-install -j$(nproc) gd && \
docker-php-ext-install pdo_mysql
