#!/bin/bash
docker rm -f mygo
docker build -t my-go-web:0.0.1 .
docker run -d --name mygo -p 8881:80 my-go-web:0.0.1
docker ps
