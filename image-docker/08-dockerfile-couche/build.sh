docker build -t myimage:1.0.8  .
touch file1
docker build -t myimage:1.0.8-second  -f Dockerfile2 .
