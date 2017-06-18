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

RUN npm install -g kosmtik

RUN mkdir -p /openstreetmap-carto
WORKDIR /openstreetmap-carto

USER 1000
CMD sh scripts/docker-startup.sh kosmtik