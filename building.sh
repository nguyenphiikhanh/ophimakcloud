#!/bin/bash

echo "Pulling origin"
git fetch && git pull

echo "Cache clearing..."
php artisan optimize:clear

echo "Change permission"
chmod -R 777 bootstrap/cache
chmod -R 777 storage/
