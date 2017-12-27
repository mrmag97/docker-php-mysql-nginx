FROM php:7.1-fpm
RUN apt-get update && apt-get upgrade -y 
RUN apt-get install -y libfreetype6-dev libjpeg62-turbo-dev
RUN docker-php-ext-install -j$(nproc) mysqli pdo_mysql && \
    docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ && \
    docker-php-ext-install -j$(nproc) gd
CMD ["php-fpm"]