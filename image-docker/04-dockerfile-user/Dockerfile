FROM golang:alpine
LABEL version="0.0.1"
LABEL author="James Kokou GAGLO"
LABEL platfom="https://learn.garkado.com"
ENV NAME World
RUN mkdir /app 
ADD . /app/
WORKDIR /app 
RUN go build -o main .
RUN adduser -S -D -H -h /app appuser
USER appuser
CMD ["./main"]
