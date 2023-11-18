#!/bin/sh

docker exec -it webserver mv /etc/nginx/conf.d/nginx.http.conf /etc/nginx/conf.d/nginx.http 
docker exec -it webserver mv /etc/nginx/conf.d/nginx.ssl /etc/nginx/conf.d/nginx.ssl.conf 
docker exec -it webserver nginx -s reload
