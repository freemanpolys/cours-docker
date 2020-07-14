#!/bin/bash
docker build -t myimage:1.0.9 .
docker rm -f myweb
docker run --name myweb -p 80:80 -d myimage:1.0.9
