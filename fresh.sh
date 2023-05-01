#!/usr/bin/env bash

rm -R laravel

docker compose down
docker build -t rossedlin/laravel:8.1 .

docker compose run --rm web bash -c "composer create-project laravel/laravel ."
