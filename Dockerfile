FROM ubuntu:latest
MAINTAINER Allan Clark <allan.clark@me.com>

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get install -qy curl
RUN mkdir /btsync
WORKDIR /btsync
RUN curl http://download-lb.utorrent.com/endpoint/btsync/os/linux-x64/track/stable | tar xz

EXPOSE 8888
EXPOSE 55555

ENTRYPOINT ["/btsync/btsync", "--nodaemon"]
