#!/bin/bash

# Before starting, stop and remove containers if exists
docker-compose down

# Start Laravel project with Docker Compose
docker-compose up -d --build

# First, enter the App container and empty the www folder
docker-compose exec app /bin/bash -c "shopt -s dotglob && rm -rf /var/www/*"

# Enter the app container and create the Laravel project#
docker-compose exec app /bin/bash -c "composer create-project laravel/laravel /var/www/ --prefer-dist"

# Change the ownership of the www folder
docker-compose exec app /bin/bash -c "cd /var/www/ && chown -R www-data:www-data ."
