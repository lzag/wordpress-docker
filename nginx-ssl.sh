#!/bin/sh

docker compose exec -it webserver mv /etc/nginx/conf.d/nginx.http.conf /etc/nginx/conf.d/nginx.http 
docker compose exec -it webserver mv /etc/nginx/conf.d/nginx.ssl /etc/nginx/conf.d/nginx.ssl.conf 
docker compose exec -it webserver nginx -s reload
