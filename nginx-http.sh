#!/bin/sh

docker compose exec -it webserver mv /etc/nginx/conf.d/nginx.http /etc/nginx/conf.d/nginx.http.conf
docker compose exec -it webserver mv /etc/nginx/conf.d/nginx.ssl.conf /etc/nginx/conf.d/nginx.ssl
docker compose exec -it webserver nginx -s reload
