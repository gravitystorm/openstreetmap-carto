FROM ubuntu:noble

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
    git \
    mapnik-utils \
    libmapnik-dev \
    fonts-unifont \
    nodejs \
    npm && rm -rf /var/lib/apt/lists/*

# Install kosmtik from source with dependencies (as recommended in issue #352)
RUN git clone https://github.com/kosmtik/kosmtik.git && \
    cd kosmtik && \
    npm install && \
    npm link

# Set working directory to where project files are mounted
WORKDIR /openstreetmap-carto

USER ${USER_ID}

# Expose kosmtik port
EXPOSE 6789

# Default command
CMD ["kosmtik", "serve", "project.mml", "--host", "0.0.0.0"]
