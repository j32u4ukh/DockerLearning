FROM golang:1.15.7-alpine3.13 

WORKDIR /go/src 

ADD . /go/src 

RUN cd /go/src && go build -o main 

CMD ["/go/src/main"]
