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

# The following line sets the user inside the container to UID 1000.
# This UID of 1000 is commonly used because many Linux distributions create the first user with UID 1000.
# This container will write tiles to the tmp directory in the local filesystem as this UID.
# 
# If your local user on the host machine does NOT have UID 1000, you may encounter file permission problems
# (e.g., files created by the container may be owned by UID 1000, of you may not be able to write at all.
# 
# To fix this, run the "id -u" command on your host machine and use that number instead of 1000 and rebuild.
USER 1000

# Expose kosmtik port
EXPOSE 6789

# Default command
CMD ["kosmtik", "serve", "project.mml", "--host", "0.0.0.0"]
