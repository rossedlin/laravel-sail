#!/usr/bin/env bash

docker compose down
docker build -t rossedlin/laravel:8.1 .
