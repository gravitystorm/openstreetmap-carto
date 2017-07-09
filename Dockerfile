FROM debian:stretch

# Style dependencies
RUN apt-get update && apt-get install --no-install-recommends -y \
    unzip curl ca-certificates gnupg python postgresql-client \
    fonts-noto-cjk fonts-noto-hinted fonts-noto-unhinted ttf-unifont \
    mapnik-utils \
    && rm -rf /var/lib/apt/lists/*

# Node.js 6.x LTS
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash \
    && apt-get install --no-install-recommends -y nodejs \
    && rm -rf /var/lib/apt/lists/*

# Kosmtik with plugins
RUN npm install -g kosmtik

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
