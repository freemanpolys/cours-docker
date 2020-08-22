#!/bin/bash
docker build -t my-image:0.0.1 .
docker rm -f mycontainer
docker run --rm -it  my-image:0.0.1 sh
