FROM php:8-fpm

RUN apt update -y && apt upgrade -y
RUN apt install -y openssh-client autossh
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

CMD ["php-fpm"]