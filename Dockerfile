FROM ubuntu:22.04

# Prevent interactive prompts during package installation
ARG DEBIAN_FRONTEND=noninteractive

# Install system dependencies as per the tutorial
RUN apt-get update && apt-get install --no-install-recommends -y \
    ca-certificates \
    gnupg \
    curl \
    unzip \
    gdal-bin \
    tar \
    wget \
    bzip2 \
    build-essential \
    clang \
    python3-psycopg2 \
    python3-yaml \
    python3-requests \
    postgresql-client \
    git && rm -rf /var/lib/apt/lists/*

# Install Mapnik system packages BEFORE Node.js (this prevents compilation issues)
RUN apt-get update && apt-get install -y \
    mapnik-utils \
    libmapnik-dev \
    fonts-unifont && rm -rf /var/lib/apt/lists/*

# Install Node.js 18.x (LTS) from NodeSource
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs && rm -rf /var/lib/apt/lists/*

# Install kosmtik from source (as recommended in issue #352)
RUN git clone https://github.com/kosmtik/kosmtik.git && \
    cd kosmtik && \
    npm install -g

# Set working directory
WORKDIR /usr/lib/node_modules/kosmtik/

# Expose kosmtik port
EXPOSE 6789

# Default command
CMD ["kosmtik", "serve", "project.mml"]
