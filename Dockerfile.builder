#use the golang base image
FROM golang:1.6
MAINTAINER Daniël van Gils

#copy the source files
RUN mkdir -p /usr/local/go/src/github.com/cloud66/starter
ADD . /usr/local/go/src/github.com/cloud66/starter

#switch to our app directory
WORKDIR /usr/local/go/src/github.com/cloud66/starter
RUN go build