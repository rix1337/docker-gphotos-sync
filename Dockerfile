FROM lsiobase/alpine.python3
MAINTAINER rix1337

# volumes
RUN mkdir -p /root/.config /config
RUN ln -s /config /root/.config/gphotos-sync 
VOLUME /config

RUN mkdir /storage
VOLUME /storage

# dependencies
RUN pip install gphotos-sync

# add local files
COPY root/ /