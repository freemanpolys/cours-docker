#!/bin/bash
docker rm -f mynginx
docker build -t my-nginx:0.0.2 .
docker run -d --name mynginx -p 8880:80 my-nginx:0.0.2
docker ps
