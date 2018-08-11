FROM ubuntu:bionic

RUN apt-get update && apt-get install --no-install-recommends -y \
    ca-certificates curl gnupg && rm -rf /var/lib/apt/lists/*

RUN echo 'deb http://ppa.launchpad.net/osmadmins/ppa/ubuntu bionic main\n\
deb-src http://ppa.launchpad.net/osmadmins/ppa/ubuntu bionic main' > \
    /etc/apt/sources.list.d/osmadmins-ppa.list

RUN apt-key adv --keyserver keyserver.ubuntu.com \
    --recv A438A16C88C6BE41CB1616B8D57F48750AC4F2CB

RUN apt-get update && apt-get install --no-install-recommends -y \
    osm2pgsql postgresql-client && rm -rf /var/lib/apt/lists/*

ADD openstreetmap-carto.style /

RUN mkdir -p /openstreetmap-carto
WORKDIR /openstreetmap-carto

CMD sh scripts/docker-startup.sh import
