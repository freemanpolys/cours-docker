#!/bin/bash
docker rm -f mynginx
docker run -d --name mynginx -p 8880:80 my-nginx:0.0.4
docker exec mynginx ls /usr/share/nginx/html/
