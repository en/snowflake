FROM golang:1.5
MAINTAINER xtaci <daniel820313@gmail.com>
ENV GOBIN /go/bin
RUN mkdir -p /go/src/github.com/gonet2/snowflake
COPY . /go/src/github.com/gonet2/snowflake
WORKDIR /go
ENV GOPATH /go
ENV GO15VENDOREXPERIMENT 1
RUN go install github.com/gonet2/snowflake
RUN rm -rf pkg src
ENTRYPOINT /go/bin/snowflake
EXPOSE 50003
