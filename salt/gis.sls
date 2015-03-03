# State for configuring the packages and requirements for PostGIS locally.
# Configures a very basic setup with increased memory for postgresql,
# along with software needed for importing OpenStreetMap data.


# Install basic tools that are useful to have for installing this and that.
base:
  pkg.installed:
    - install_recommends: false
    - pkgs:
      # just some basic packages, not specific to the carto setup.
      - git 
      - unzip
      - curl
      - build-essential
      - software-properties-common
    - refresh: true

# installing the required GIS-software, plus...
# create the postgresql database and enabling PostGIS
gis:
  pkg.installed:
    - install_recommends: false
    - pkgs:
      # here come the goodies; PostGIS is elementary to a current dev. environment.
      - postgresql-9.3-postgis-2.1
      - postgresql-contrib-9.3
      - proj-bin
      - libgeos-dev
  # Making sure the postresql service is running, and that it's restarted
  # when changes to the configuration are processed. Requires gis beforehand.
  service:
    - name: postgresql
    - running
    - watch:
      - file: postgis-postgresql.conf
      - file: gis
    - require:
      - pkg: gis
      - file: gis
  user.present:
    - name: gisuser
    - empty_password: True
  postgres_user.present:
    - name: gisuser
    - superuser: true
    - createdb: true
    - require:
      - service: gis
  postgres_database.present:
    - name: gis
    - db_user: gisuser
    - require:
      - postgres_user: gis

# PostGIS: hstore -- extension
hstore:
  postgres_extension.present:
    - db_user: gisuser
    - maintenance_db: gis
    - require:
        - service: gis

# PostGIS: postgis -- extension
postgis:
  postgres_extension.present:
    - db_user: gisuser
    - maintenance_db: gis
    - require:
      - service: gis

# Conservative tweaks to PostgreSQL conf, based on 
# "Loading OSM data" located at switch2osm.org.
# Create the folder for our configuration (and any others you'd like) to go in
postgresql.conf.d:
  file.directory:
    - name: /etc/postgresql/9.3/main/conf.d/

# Configure work memory and maintenance work memory
postgis-postgresql.conf:
  file.managed:
    - name: /etc/postgresql/9.3/main/conf.d/postgis-postgresql.conf
    - content: |
        # Configure the work memory
        work_mem = 16MB
        # Configure the maintenance work memory
        maintenance_work_mem = 128MB
    - require:
      - file: postgresql.conf.d

# Configure postgresql to load .conf files within directory conf.d.
postgresql.conf:
  file.append:
    - name: /etc/postgresql/9.3/main/postgresql.conf
    - text: "include_dir 'conf.d'"
    - require:
      - file: postgis-postgresql.conf

# Configure the system to allow overcommitting
sysctl.overcommit:
  file.managed:
    - name: /etc/sysctl.d/60-overcommit.conf
    - contents: |
        # Overcommit settings to allow faster osm2pgsql imports
        vm.overcommit_memory=1
  cmd.wait:
    - name: sysctl -p /etc/sysctl.d/60-overcommit.conf
    - cwd: /
    - watch:
      - file: sysctl.overcommit

# OpenStreetMap related repos and packages
osm:
  # Add the ppa for osm2pgsql
  # It also contains libapache2-mod-tile, should it be needed
  pkgrepo.managed:
    - ppa: kakrueger/openstreetmap
  # Install any specifically OSM related package
  pkg.latest:
    - install_recommends: false
    - refresh: true
    - pkgs:
      - osm2pgsql  # installs from the PPA
      - osmctools  # installs from ubuntu main v0.1-2

gis.shapefiles:
  pkg.installed:
    - install_recommends: false
    # we need gdal-bin for ogr2ogr, and mapnik-utils for shapefiles
    - pkgs:
      - mapnik-utils
      - gdal-bin
  cmd.run:
    # run/download/generate shapefiles for the style
    - name: /srv/openstreetmap-carto/get-shapefiles.sh
    - cwd: /srv/openstreetmap-carto
    # Checks the index time for the land_polygons.index to see if shapefiles should run again
    - unless: "test `find /srv/openstreetmap-carto/data/land-polygons-split-3857/land_polygons.index -mmin +1440 -exec echo 1`"
    # Experimental setting: different VT, allows for instant output within salt logs.
    - use_vt: true
    # We'll be needing these if we are to run get-shapefiles.sh
    - require:
      - pkg: gis.shapefiles
