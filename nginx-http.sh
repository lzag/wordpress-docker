#!/bin/sh

docker exec -it webserver mv /etc/nginx/conf.d/nginx.http /etc/nginx/conf.d/nginx.http.conf
docker exec -it webserver mv /etc/nginx/conf.d/nginx.ssl.conf /etc/nginx/conf.d/nginx.ssl
docker exec -it webserver nginx -s reload
