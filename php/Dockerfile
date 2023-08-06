FROM php:8.2-fpm

VOLUME [ "./app", "/var/www/" ]

RUN apt-get update && apt-get install -y \
    zlib1g-dev \
    libzip-dev \
    unzip       \
    git \
    nano \
    curl \
    gnupg2 \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    libjpeg-dev \
    libfreetype6-dev \
    libmcrypt-dev \
    libpq-dev \
    libsodium-dev \
    && docker-php-ext-install pdo pdo_mysql zip exif sodium gd


# get nodejs latest version
RUN curl -sL https://deb.nodesource.com/setup_20.x | bash -

# install nodejs and npm
RUN apt-get update && apt-get install -y \
    nodejs

# install vite globally for vuejs development with laravel
RUN npm install -g vite

# composer use super user
ENV COMPOSER_ALLOW_SUPERUSER=1

# get composer from official image
COPY --from=composer /usr/bin/composer /usr/bin/composer

# set git global config
RUN git config --global user.name "Enes Ekinci"
RUN git config --global user.email "enes.eknc.96@gmail.com"

##
# if you want to use ssh keys for git clone or pull you can use this lines
#

# create ssh folder
# RUN mkdir /root/.ssh

# copy ssh folder and set permissions and remove cache

# COPY ./php/ssh_files/id_rsa /root/.ssh/id_rsa
# COPY ./php/ssh_files/id_rsa.pub /root/.ssh/id_rsa.pub
# COPY ./php/ssh_files/known_hosts /root/.ssh/known_hosts

# RUN chmod 700 /root/.ssh
# RUN chmod 600 /root/.ssh/id_rsa
# RUN chmod 644 /root/.ssh/id_rsa.pub
# RUN chmod 644 /root/.ssh/known_hosts


# Set working directory
WORKDIR /var/www/

EXPOSE 9000
