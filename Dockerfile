FROM debian:stretch

# Style dependencies
RUN apt-get update && apt-get install --no-install-recommends -y \
    unzip curl ca-certificates \
    fonts-noto-cjk fonts-noto-hinted fonts-noto-unhinted ttf-unifont \
    mapnik-utils \
    nodejs nodejs-legacy npm \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /openstreetmap-carto
WORKDIR /openstreetmap-carto
RUN npm install kosmtik

# Get the shapefiles
ADD get-shapefiles.sh ./
RUN ./get-shapefiles.sh

CMD nodejs ./node_modules/kosmtik/index.js serve /openstreetmap-carto/project.yaml --host 0.0.0.0
