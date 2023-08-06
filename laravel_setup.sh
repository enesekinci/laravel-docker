#!/bin/bash

# Önce varsa Docker konteynerlerini durdur ve sil
docker-compose down

# Docker Compose ile Laravel projesini başlat
docker-compose up -d --build

# Önce App konteynerine gir ve www klasörünü boşalt
docker-compose exec app /bin/bash -c "shopt -s dotglob && rm -rf /var/www/*"

# App konteynerine gir ve Laravel projesini oluştur
docker-compose exec app /bin/bash -c "composer create-project laravel/laravel /var/www/ --prefer-dist"

# Gerekli izinleri düzenle
docker-compose exec app /bin/bash -c "cd /var/www/ && chown -R www-data:www-data ."
