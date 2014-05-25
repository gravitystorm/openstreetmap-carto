The following installation instructions should work for Ubuntu 12.04 and above.

## Install dependencies

```
sudo apt-get update
sudo apt-get install gdal-bin curl unzip mapnik-utils
```

## Install Tilemill
```
sudo apt-get install tilemill
```
Start and close Tilemill once (under Graphics in the menu) to create the required folders.

## Install PostgreSQL
See for more details 'Installing postgresql / postgis' on http://switch2osm.org/serving-tiles/manually-building-a-tile-server/.


In the following, replace username by your Unix user name.

```
sudo apt-get install postgresql-9.1-postgis postgresql-contrib postgresql-server-dev-9.1
sudo -u postgres -i
createuser username # answer yes for superuser (although this isn't strictly necessary)
createdb -E UTF8 -O username gis
exit
psql -f /usr/share/postgresql/9.1/contrib/postgis-1.5/postgis.sql -d gis
```

## Install osm2pgsql
See for more details 'Installing osm2pgsql' on http://switch2osm.org/serving-tiles/manually-building-a-tile-server/.
```
mkdir ~/src
cd ~/src
git clone git://github.com/openstreetmap/osm2pgsql.git
cd osm2pgsql
./autogen.sh
./configure
make
sudo make install
psql -f /usr/local/share/osm2pgsql/900913.sql -d gis
```
In the following, replace username by your Unix user name.
```
psql -d gis -c "ALTER TABLE geometry_columns OWNER TO username; ALTER TABLE spatial_ref_sys OWNER TO username;"
```

## Create a clone of the stylesheet
See for more details https://help.github.com/articles/fork-a-repo.

Go to https://github.com/gravitystorm/openstreetmap-carto and click on 'Fork'.
In the following, replace GITHUBUSERNAME by your Github username.
```
cd ~/Documents/MapBox/project
git clone https://github.com/GITHUBUSERNAME/openstreetmap-carto.git
cd openstreetmap-carto
git remote add upstream https://github.com/gravitystorm/openstreetmap-carto.git
git fetch upstream
sh get-shapefiles.sh
```

# Import data in the database

This example uses a data extract of Luxembourg. Other data extracts can be found here:
http://download.geofabrik.de.
```
wget http://download.geofabrik.de/europe/luxembourg-latest.osm.pbf
osm2pgsql -d gis luxembourg-latest.osm.pbf --style ~/Documents/MapBox/project/openstreetmap-carto/openstreetmap-carto.style
```

## Install fonts
This step is only necessary when you render languages that use non-Latin characters.
```
sudo apt-get install ttf-dejavu fonts-droid ttf-unifont fonts-sipa-arundina fonts-sil-padauk fonts-khmeros ttf-indic-fonts-core ttf-tamil-fonts ttf-kannada-fonts
```
