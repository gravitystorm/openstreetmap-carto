FROM ubuntu:focal

# https://serverfault.com/questions/949991/how-to-install-tzdata-on-a-ubuntu-docker-image
ARG DEBIAN_FRONTEND=noninteractive

# Style dependencies
RUN apt-get update && apt-get install --no-install-recommends -y \
    ca-certificates curl gnupg postgresql-client python3 python3-distutils \
    fonts-hanazono fonts-noto-cjk fonts-noto-hinted fonts-noto-unhinted \
    mapnik-utils nodejs npm ttf-unifont unzip git && rm -rf /var/lib/apt/lists/*

# Kosmtik with plugins, forcing prefix to /usr because Ubuntu sets
# npm prefix to /usr/local, which breaks the install
# We install kosmtik not from release channel, but directly from a specific commit on github.
RUN npm set prefix /usr && npm install -g --unsafe-perm "git+https://git@github.com/kosmtik/kosmtik.git"

WORKDIR /usr/lib/node_modules/kosmtik/
RUN kosmtik plugins --install kosmtik-overpass-layer \
                    --install kosmtik-fetch-remote \
                    --install kosmtik-overlay \
                    --install kosmtik-open-in-josm \
                    --install kosmtik-map-compare \
                    --install kosmtik-osm-data-overlay \
                    --install kosmtik-mapnik-reference \
                    --install kosmtik-geojson-overlay \
    && cp /root/.config/kosmtik.yml /tmp/.kosmtik-config.yml

# Closing section
RUN mkdir -p /openstreetmap-carto
WORKDIR /openstreetmap-carto

USER 1000
CMD sh scripts/docker-startup.sh kosmtik
