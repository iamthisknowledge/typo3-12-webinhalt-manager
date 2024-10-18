FROM webdevops/php-apache-dev:8.1

RUN apt-get update && \
    apt-get install -y \
        libpng-dev \
        libzip-dev \
        libicu-dev \
        libxml2-dev && \
    docker-php-ext-install \
        gd \
        zip \
        intl \
        xml && \
    pecl install apcu && \
    docker-php-ext-enable apcu
