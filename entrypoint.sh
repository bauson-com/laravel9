#!/bin/bash
mv .env.example .env
php artisan key:generate


php-fpm -D
httpd -D "FOREGROUND"