#!/bin/bash
docker build -t mynode --build-arg APP_DIR=/cours .
docker build -t mynode --build-arg APP_DIR=/cours --build-arg NODE_VERSION=10 .
