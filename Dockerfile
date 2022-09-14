FROM golang:1.15.7-alpine3.13 AS builder
WORKDIR /go/src 
ADD . /go/src 
RUN cd /go/src && go build -o main 

FROM alpine:latest 
WORKDIR /app 
COPY --from=builder /go/src/main /app/ 
ENTRYPOINT ./main 
