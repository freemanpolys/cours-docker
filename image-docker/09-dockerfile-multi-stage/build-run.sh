#!/bin/bash
#Image basique
docker build -t myimage:1.0.9 .
docker rm -f myweb
docker run --name myweb -p 80:80 -d myimage:1.0.9

#Optimisation Manuelle
npm run build -- --outputPath=./dist/out --configuration production
docker build -t myimage:1.0.9-manual-stage  -f DockerfileManual .
docker rm -f myweb
docker run --name myweb -p 80:80 -d myimage:1.0.9-manual-stage

#Optimisation avec Multi Stage
docker build -t myimage:1.0.9-multi-stage  -f DockerfileMultiStage .
docker rm -f myweb
docker run --name myweb -p 80:80 -d myimage:1.0.9-multi-stage
