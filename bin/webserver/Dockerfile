FROM php:7.3-apache-stretch
#FROM php:7.3.4-fpm-stretch

RUN apt-get -y update --fix-missing && apt-get upgrade -y

# Utilitaires
RUN apt-get -y install apt-utils nano wget dialog sudo htop

RUN apt-get -y install --fix-missing apt-utils build-essential git curl libcurl3 libcurl3-dev zip

# Extensions PHP
RUN pecl install
#RUN apt-get -y install php7.3-cli php7.3-json php7.3-pdo php7.3-mysql php7.3-zip php7.3-gd  php7.3-mbstring php7.3-curl php7.3-xml php7.3-bcmath
RUN apt-get -y install libmcrypt-dev libsqlite3-dev libsqlite3-0 mysql-client zlib1g-dev libzip-dev libicu-dev libfreetype6-dev libjpeg62-turbo-dev libpng-dev

RUN pecl install mcrypt-1.0.2 xdebug-2.7.1

RUN docker-php-ext-install pdo_mysql mysqli tokenizer json zip
RUN docker-php-ext-install -j$(nproc) intl
RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/
RUN docker-php-ext-install -j$(nproc) gd

RUN docker-php-ext-enable xdebug mcrypt

# Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Apache Modules
RUN a2enmod rewrite headers