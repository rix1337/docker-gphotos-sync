FROM ghcr.io/linuxserver/baseimage-alpine:3.15
MAINTAINER rix1337

# volumes
RUN mkdir -p /root/.config /config
RUN ln -s /config /root/.config/gphotos-sync 
VOLUME /config

RUN mkdir /storage
VOLUME /storage

# dependencies
RUN apk add --no-cache ffmpeg gcc python3-dev py3-pip
RUN pip3 install gphotos-sync

# add local files
COPY root/ /
