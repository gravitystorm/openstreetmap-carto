# get the software packages installed
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
  # Let's make it easy for our GIS-in-aid software to access our PostGIS database
  file.blockreplace:
    - name: /etc/postgresql/9.3/main/pg_hba.conf
    - marker_start: "# TYPE  DATABASE"
    - marker_end: '# "local" is'
    - content: "local   all             gisuser                                 trust"
  service:
    - name: postgresql
    - running
    - watch:
      - file: postgresql.conf.work_mem
      - file: postgresql.conf.maintenance_work_mem
      - file: gis
    - require:
      - pkg: gis
      - file: gis
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
# TODO: figure out if it's possible to get rid of the other ID, so I can sleep better at night.
postgresql.conf.work_mem:
  file.replace:
    - name: /etc/postgresql/9.3/main/postgresql.conf
    - pattern: "#work_mem = 1MB"
    - repl: "work_mem = 16MB"

postgresql.conf.maintenance_work_mem:
  file.replace:
    - name: /etc/postgresql/9.3/main/postgresql.conf
    - pattern: "#maintenance_work_mem = 16MB"
    - repl: "maintenance_work_mem = 128MB"

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
    #- unless: "test -d /srv/openstreetmap-carto/data/"
    # Experimental setting: different VT, allows for instant output within salt logs.
    - use_vt: true
    # We'll be needing these if we are to run get-shapefiles.sh
    - require:
      - pkg: gis.shapefiles
