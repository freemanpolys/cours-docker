#!/bin/bash
docker build -t my-cmd -f DockerfileCmd .
docker build -t my-entry -f DockerfileEntrypoint .
docker build -t my-entry-cmd -f DockerfileEntrypointCmd .
