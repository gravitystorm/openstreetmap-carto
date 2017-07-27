# Running OpenStreetMap Carto with Docker

[Docker](https://docker.com) is a virtualized environment that allows you to run software without altering your system permanently.
The software runs in so called containers that are easy to setup and tear down. It makes setting up a
development environment for openstreetmap-carto much easier. The development environment consists of a
PostgreSQL database to store the data and [Kosmtik](https://github.com/kosmtik/kosmtik) for previewing the style.

## Prerequisites

Docker is available for Linux, macOS and Windows. [Install](https://www.docker.com/get-docker) the software in order
to be able to run Docker containers. You also need Docker Compose, which should be available once you installed
Docker itself. Otherwise you need to [install Docker Compose manually](https://docs.docker.com/compose/install/).

## Quick start

If you are eager to get started here is an overview over the necessary steps.
Read on below to get the details.

* `docker ps` and `docker run hello-world` to test if Docker is up and you have sufficient rights to use it as a current user. Typical problems might be that you need to start Docker as root and add current user to a group `docker` first.
* Download OpenStreetMap data in osm.pbf format to a file `data.osm.pbf` and place it within the openstreetmap-carto directory.
* `docker-compose up import` to import the data (only necessary the first time or when you change the data file)
* `docker-compose up kosmtik` to run the style preview application
* Ctrl+C to stop the style preview application
* `docker-compose stop db` to stop the database container

## Importing data

openstreetmap-carto needs a database populated with rendering data to work. You first need a data file to import.
It's probably easiest to grab an PBF of OSM data from [Mapzen](https://mapzen.com/data/metro-extracts/) or [Geofabrik](http://download.geofabrik.de/).
Once you have that file put it into the openstreetmap-carto directory and run `docker-compose up import` in the openstreetmap-carto directory.
This starts the PostgreSQL container (downloads it if it not exists) and starts a container that runs [osm2pgsql](https://github.com/openstreetmap/osm2pgsql) to import the data. The container is built the first time you run that command if it not exists.
At startup of the container the script `scripts/docker-startup.sh` is invoked which prepares the database and itself starts osm2pgsql for importing the data.

osm2pgsql has a few [command line options](https://manpages.debian.org/testing/osm2pgsql/osm2pgsql.1.en.html) and the import by default uses a RAM cache of 512 MB, 1 worker and expects the import file to be named `data.osm.pbf`. If you want to customize any of these parameters you have to set the environment variables `OSM2PGSQL_CACHE` (e.g. `export OSM2PGSQL_CACHE=1024` on Linux to set the cache to 1 GB) for the RAM cache (the value depends on the amount of RAM you have available, the more you can use here the faster the import may be), `OSM2PGSQL_NUMPROC` for the number of workers (this depends on the number of processors you have and whether your harddisk is fast enough e.g. is a SSD), or `OSM2PGSQL_DATAFILE` if your file has a different name. If you instead want to customize the default values, you find them in the file `.env`.

Depending on your machine and the size of the extract the import can take a while. When it is finished you should have the data necessary to render it with openstreetmap-carto.

## Test rendering

After you have the necessary data available you can start Kosmtik to produce a test rendering. For that you run `docker-compose up kosmtik` in the openstreetmap-carto directory. This starts a container with Kosmtik and also starts the PostgreSQL database container if it is not already running. The Kosmtik container is built the first time you run that command if it not exists.
At startup of the container the script `scripts/docker-startup.sh` is invoked which downloads necessary shapefiles with `scripts/get-shapefiles.py` (if they are not already present) and indexes them. It afterwards runs Kosmtik. If you have to customize anything, you can do so in the script. The Kosmtik config file can be found in `.kosmtik-config.yml`.
If you want to have a [local configuration](https://github.com/kosmtik/kosmtik#local-config) for our `project.mml` you can place a `localconfig.js` or `localconfig.json` file into the openstreetmap-carto directory.

The shapefile data that is downloaded is owned by the user with UID 1000. If you have another default user id on your system, consider changing the line `USER 1000` in the file `Dockerfile`.

After startup is complete you can browse to [http://localhost:6789](http://localhost:6789) to view the output of Kosmtik. By pressing Ctrl+C on the command line you can stop the container. The PostgreSQL database container is still running then (you can check with `docker ps`). If you want to stop the database container as well you can do so by running `docker-compose stop db` in the openstreetmap-carto directory.
