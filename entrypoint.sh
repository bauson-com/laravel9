#!/bin/bash
mv .env.example .env
php artisan key:generate
sed -i 's#J6W_DB_HOST#'"${J6W_DB_HOST}"'#g' .env

php-fpm -D
httpd -D "FOREGROUND"