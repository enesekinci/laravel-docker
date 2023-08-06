## 1. Clone GitHub repo for this project locally

- git clone https://github.com/enesekinci/laravel-docker.git projectname

## 2. cd into your project

- cd laravel-docker

## 3. Build Docker images

- docker-compose build

## 4. Run the Docker containers

- docker-compose up -d

## 5. Open your Laravel project on vscode

- code app

## 6. Change database host to mysql

- DB_CONNECTION=mysql
- DB_HOST=database
- DB_PORT=3306
- DB_DATABASE=laravel
- DB_USERNAME=root
- DB_PASSWORD=secret