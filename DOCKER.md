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

* `git clone https://github.com/gravitystorm/openstreetmap-carto.git` to clone openstreetmap-carto repository
* download OpenStreetMap data in osm.pbf format to a file `data.osm.pbf` and place it within the openstreetmap-carto directory (for example some small area from [Geofabrik](http://download.geofabrik.de/))
* `docker-compose up import` to import the data (only necessary the first time or when you change the data file)
* `docker-compose up kosmtik` to run the style preview application
* browse to [http://localhost:6789](http://localhost:6789) to view the output of Kosmtik
* Ctrl+C to stop the style preview application
* `docker-compose stop db` to stop the database container

## Repositories

Instructions above will clone main openstreetmap-carto repository. To test your own changes you should [fork](https://help.github.com/articles/fork-a-repo/) gravitystorm/openstreetmap-carto repository and [clone your fork](https://help.github.com/articles/cloning-a-repository/).

## Importing data

openstreetmap-carto needs a database populated with rendering data to work. You first need a data file to import.
It's probably easiest to grab an PBF of OSM data from [Geofabrik](http://download.geofabrik.de/).
Once you have that file put it into the openstreetmap-carto directory and run `docker-compose up import` in the openstreetmap-carto directory.
This starts the PostgreSQL container (downloads it if it not exists) and starts a container that runs [osm2pgsql](https://github.com/openstreetmap/osm2pgsql) to import the data. The container is built the first time you run that command if it not exists.
At startup of the container the script `scripts/docker-startup.sh` is invoked which prepares the database and itself starts osm2pgsql for importing the data.

osm2pgsql has a few [command line options](https://manpages.debian.org/testing/osm2pgsql/osm2pgsql.1.en.html) and the import by default uses a RAM cache of 512 MB, 1 worker and expects the import file to be named `data.osm.pbf`. If you want to customize any of these parameters you have to set the environment variables `OSM2PGSQL_CACHE` (e.g. `export OSM2PGSQL_CACHE=1024` on Linux to set the cache to 1 GB) for the RAM cache (the value depends on the amount of RAM you have available, the more you can use here the faster the import may be), `OSM2PGSQL_NUMPROC` for the number of workers (this depends on the number of processors you have and whether your harddisk is fast enough e.g. is a SSD), or `OSM2PGSQL_DATAFILE` if your file has a different name. 

You can also [tune the PostgreSQL](https://wiki.postgresql.org/wiki/Tuning_Your_PostgreSQL_Server) during the import phases, with `PG_WORK_MEM` (default to 16MB) and `PG_MAINTENANCE_WORK_MEM` (default to 256MB), which will eventually write `work_mem` and `maintenance_work_mem` to the `postgresql.auto.conf` once, making them applied each time the database started. Note that unlike osm2pgsql variables, once thay are set, you can only change them by running `ALTER SYSTEM` on your own, changing `postgresql.auto.conf` or remove the database volume by `docker-compose down -v && docker-compose rm -v` and import again.

If you want to customize and remember the values, supply it during your first import:

```
PG_WORK_MEM=128MB PG_MAINTENANCE_WORK_MEM=2GB \
OSM2PGSQL_CACHE=2048 OSM2PGSQL_NUMPROC=4 \
OSM2PGSQL_DATAFILE=taiwan.osm.pbf \
docker-compose up import 
```

Variables will be remembered in `.env` if you don't have that file, and values in the file will be applied unless you manually assign them.

Depending on your machine and the size of the extract the import can take a while. When it is finished you should have the data necessary to render it with openstreetmap-carto.

## Test rendering

After you have the necessary data available you can start Kosmtik to produce a test rendering. For that you run `docker-compose up kosmtik` in the openstreetmap-carto directory. This starts a container with Kosmtik and also starts the PostgreSQL database container if it is not already running. The Kosmtik container is built the first time you run that command if it not exists.
At startup of the container the script `scripts/docker-startup.sh` is invoked which downloads necessary shapefiles with `scripts/get-shapefiles.py` (if they are not already present) and indexes them. It afterwards runs Kosmtik. If you have to customize anything, you can do so in the script. The Kosmtik config file can be found in `.kosmtik-config.yml`.
If you want to have a [local configuration](https://github.com/kosmtik/kosmtik#local-config) for our `project.mml` you can place a `localconfig.js` or `localconfig.json` file into the openstreetmap-carto directory.

The shapefile data that is downloaded is owned by the user with UID 1000. If you have another default user id on your system, consider changing the line `USER 1000` in the file `Dockerfile`.

After startup is complete you can browse to [http://localhost:6789](http://localhost:6789) to view the output of Kosmtik. By pressing Ctrl+C on the command line you can stop the container. The PostgreSQL database container is still running then (you can check with `docker ps`). If you want to stop the database container as well you can do so by running `docker-compose stop db` in the openstreetmap-carto directory.
