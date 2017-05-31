# Contributing to OpenStreetMap-Carto through Tilemill

## Introduction

The following step-by-step procedure can be used to install a working development environment of openstreetmap-carto exploiting Tilemill on a Windows PC. It has been tested on Windows 7 32-bit and Windows 7 64-bit.

At the time of writing, Tilemill is the most appropriate tool to be used on Windows. Kosmtik needs Linux to succeed in installing Mapnik (it needs Mapnik 3.5 and the related install procedure produces an error with Windows; e.g.: "Pre-built binaries not found for mapnik@3.5.13"). Mapbox needs customization (there is no immediate procedure to convert project.yaml of Openstreetmap-carto to a project.yml format valid for Mapbox). Command line tools are not that comfortable.

Warning: Tilemill hosts a very old version of Mapnik. Even if you should accomplish its installation on Windows through this manual, consider that:

- you will not be able to exploit the latest features of Mapnik;
- you might even fail to load the openstreetmap-carto project if someone meanwhile adds a new Mapnik feature which is not supported by Tilemill.

## Installation

Prefer direct Internet connection for the installation, avoiding the need of a proxy. At the end of the installation procedure (and DB population), Tilemill can run openstreetmap-carto off-line.

### Check OS architecture

Before all, check whether your computer is running a 32-bit version or a 64-bit version of the Windows operating system: https://support.microsoft.com/en-us/kb/827218

When downloading the software reported in this procedure, always verify that you are selecting the appropriate Windows architecture: 32-bit (x86) or 64-bit (x64).

### Install Tilemill

Install Tilemill; the latest working version at the moment should be
http://tilemill.s3.amazonaws.com/dev/TileMill-v0.10.1-291-g31027ed-Setup.exe

Even if Tilemill has a GitHub repository (https://github.com/mapbox/tilemill) including the most recent updates, with Windows it is suggested to proceed with the standard setup, which automatically installs and configures Mapnik. A procedure to upgrade Tilemill and Mapnik over Windows without recompiling is not currently documented.

### Install PostgreSQL

Download PostgreSQL (avoid using beta versions as also PostGis shall be needed (check first the PostGis compatibility with the version you are going to download):

http://www.enterprisedb.com/products-services-training/pgdownload#windows

For instance: postgresql-9.5.3-1-windows-x64.exe (for a Windows 64 bit system)

### Configure PostgreSQL

Use the following configuration steps for PostgreSQL:

- Password: postgres_007%
- Port: 5432 (default)
- Default locale
- Next (install)
- Launch StackBuilder at exit
- Select the server (PostgreSQL at port 5432)
- Expand Categories, Spatial Extensions; enable PostGIS (select the latest version for the appropriate architecture, 32 or 64 bit)

### Install PostGis

Installation of PostGis:

- Select Components to install: PostGis (don't create spatial database)
- Would you like us to register the GDAL_DATA environment variable for you? No
- Raster drivers are disabled by default? ... No
- Enable out db rasters? No

Open pgAdmin and store the above mentioned password

Open a CMD (Command Prompt). Change directory (cd) to %programfiles%\PostgreSQL\*version*\bin (e.g., cd C:\Program Files\PostgreSQL\9.5\bin) and run these commands:

```batchfile
setx PGHOST localhost
setx PGPORT 5432
setx PGUSER postgres
setx PGPASSWORD postgres_007%
```

Notice that, in order to get compatibility with project.yaml, the dbname shall remain "gis" and cannot be changed via the variables.

Notice that 'setx' should be used to configure variables (defining variables with 'set' before invoking tilemill.exe might not work).

### Create the *gis* database, needed by openstreetmap-carto

```batchfile
psql --help (to verify that psql works)
psql -h localhost -U postgres -c "create database gis"
psql -h localhost -U postgres -c "\connect gis"
psql -h localhost -U postgres -d gis -c "CREATE EXTENSION postgis"
psql -h localhost -U postgres -d gis -c "CREATE EXTENSION hstore"
```

NOTE: To drop the database, in case of full data refresh, you can perform:

`psql -h localhost -U postgres -c "drop database gis"`

Then all creation commands must be issued again.

### Download OpenStreetMap data

There are many ways to download the OSM data. Check [INSTALL.md](INSTALL.md).

One method is directly with your browser. Check this page:
http://wiki.openstreetmap.org/wiki/Downloading_data#Choose_your_region

Alternatively, JOSM can be used. If you are installing this environment, you are supposed to have already experience with JOSM, that might be already installed and configured on your PC. Otherwise install it from https://josm.openstreetmap.de/. You should also have the java runtime installed and updated.

Select the area to download the OSM data: JOSM menu, File, Download From OSM; tab Slippy map; drag the map with the right mouse button, zoom with the mouse wheel or Ctrl + arrow keys; drag a box with the left mouse button to select an area to download. The Continuous Download plugin is also suggested: http://wiki.openstreetmap.org/wiki/JOSM/Plugins/continuosDownload. When the desired region is locally available, select File, Save As, `<filename>.osm`. Give it a valid file name and check also the appropriate directory where this file is saved.

### Install osm2pgsql

Download osm2pgsql  (http://wiki.openstreetmap.org/wiki/Osm2pgsql#Windows):

https://lists.openstreetmap.org/pipermail/dev/2013-February/026525.html

https://github.com/openstreetmap/osm2pgsql/issues/17

Check the appropriate version running on your OS architecture.

Put it to the same directory of the saved .osm file

You might already have 7Zip installed; otherwise install it from http://www.7-zip.org

### Install Python

Install Python 2.7 from https://www.python.org/downloads/

Run the Setup: When it comes to the point of adding environment variables, say Yes.

Python is needed to convert project.yaml (from openstreetmap-carto) to project.mml (that can be opened by Tilemill after configuration). It is also needed to download the shapefiles.

### Install openstreetmap-carto

Open https://github.com/gravitystorm/openstreetmap-carto and press "Download ZIP"

Save it to `%USERPROFILE%\Documents\MapBox\project\`
(check Tilemill Settings: `~\Documents\MapBox`)

Unzip the downloaded file to `project\openstreetmap-carto-master`

### osm2pgsql

Tilemill/openstreetmap-carto render data included in the *gis* database.

Use osm2pgsql to upload the locally available OpenStreetMap data (.osm) to PostgreSQL.

Open a CMD

Change directory to `%USERPROFILE%\Documents\MapBox\project\openstreetmap-carto-master`

Check that Python works with: `python -V` (otherwise: `set PATH=%PATH%;<python directory>`).

To create db tables, populate them and create some index run the following:

```batchfile
cd <directory where you saved the .osm file and osm2pgsql>
osm2pgsql.exe -H localhost -d gis -U postgres -s -c -G -k -C 800 -S %USERPROFILE%\Documents\MapBox\project\openstreetmap-carto-master\openstreetmap-carto.style <filename>.osm
```

Notes:

- substitute `<filename>.osm` with the saved .osm file (e.g., produced through JOSM);
- to refresh the data, simply relaunch the osm2pgsql command (as the default option is to recreate the tables); anyway Tilemill shall be closed before (as well as any other client accessing the db). You can also drop the database, recreate it with the psql commands shown before and do again osm2pgsql;
- try removing the –s option when managing big .osm files, if the import operation is too slow.

If you fail to connect to the database, edit `%programfiles%\PostgreSQL\*version*\data\pg_hba.conf` and change all `md5` with `trust`

Note to create the indexes (which could slightly speed up db access):

```
%USERPROFILE%\Documents\MapBox\project\openstreetmap-carto-master\scripts\indexes.py | "C:\Program Files\PostgreSQL\*version>\bin\psql" -h localhost -U postgres -d gis
```

alternatively:

```
"c:\Program Files\PostgreSQL\*version>\bin\psql" -h localhost -U postgres -d gis -f indexes.sql
```

### Install Shapeindex

Create a folder to place shapeindex.exe.

Download the Win32 ZIP package of Mapnik from http://mapnik.org/pages/downloads.html, open it with 7Zip and extract `shapeindex.exe`; move this file and all related DLL files  to the previously created folder. This is needed by `get-shapefiles.py` to speed-up the access to the shapefiles. Notice that the DLL files can be found in the lib directory of the ZIP file; all them have to be saved to the bin directory together with `shapeindex.exe`.

Set the PATH appropriately:

```
set PATH=%PATH;<shapeindex folder>
```

Verify that the shapeindex command works with `shapeindex –V`

Run the following command:

```
python -m pip install --upgrade pip
```

Check that pip works with `pip –V`. (Check also `Scripts\pip` if pip is not found).

Now run:

```
pip install wget
cd %USERPROFILE%\Documents\MapBox\project\openstreetmap-carto-master
scripts\get-shapefiles.py
```

Wait for the completion of the entire process (e.g., "done!")

OpenStreetMap Carto uses a YAML file for defining layers. TileMill does not directly support YAML, so make edits to the YAML file then run `scripts\yaml2mml.py`.


```
pip install pyyaml
scripts\yaml2mml.py
```

### Final checks

Revise all points.

Check in detail the content of [INSTALL.md](INSTALL.md).

### Tilemill

Start Tilemill

Select project Openstreetmap Carto

Give Tilemill the time to render the map (this might take many seconds); zoom out to the entire world shape (zoom level 1), then progressively zoom into the region where you downloaded the map data. You might use the double click and wait for the next zoom level to appear.

On the right pane, it is normal that only the first 4 tabs are displayed; this is an issue of the installed old Tilemill version. (Check https://github.com/mapbox/tilemill/pull/2184)

You shouldn't use the text editor built-in to TileMill: it doesn't work with the number of .mss files in the style. Instead, hide the right pane and use an external text editor.

Tilemill automatically refreshes the rendering upon any file change, including all mss and project.mml.

Note: to open Tilemill with a browser:
- http://127.0.0.1:20009
- http://127.0.0.1:20009/#/project/openstreetmap-carto

## Youtube tutorial
https://blog.gravitystorm.co.uk/2014/07/07/openstreetmap-carto-workshop/

## Recommended workflow for using TileMill and OSM

Use osm2pgsql to import an OSM extract into the Postgres database.

Notice that the configuration of db tables/columns used by osm2pgsql is defined in `openstreetmap-carto.style`. Modifying `openstreetmap-carto.style` requires reloading the production database. Do not change this file if some columns you need are missing; use instead *hstore* (check “Retrieve data from an HSTORE column”; example: `tags->'<column name>'::text AS <tag>`)

`project.yaml` shall reflect tables/columns described in `openstreetmap-carto.style`.

All .mss files refer to `project.yaml`. If a modification to a .mss file is not rendered, check that the new tags you are managing are defined in `project.yaml` through the appropriate queries.

Tilemill needs that `project.yaml` is transformed in `project.mml` through the script `scripts\yaml2mml.py`

One tested, your modifications can be published through GitHub.

## Guidelines to edit the stilesheets

Please, read in detail [CARTOGRAPHY.md](CARTOGRAPHY.md).

Then, it is very important to study [CONTRIBUTING.md](CONTRIBUTING.md); above all “Easy pickings”, “CartoCSS Style Guidelines” and “SQL Style Guidelines”.

Also [README.md](README.md) includes relevant information.

## Contributing to openstreetmap-carto via GitHub

Notes.

- Do not use your local GitHub repository for development; just copy there the modified files
- Do not modify the original repository you want to contribute, but fork it
- Do not modify the master branch of your fork, but create a new branch
- Do not push a contribution to your master, but to the origin repository you are contributing for
- Do no press keys mentioning "Close", unless you really want to freeze an open discussion
- check before [CONTRIBUTING.md](CONTRIBUTING.md); above all ref. “Workflow” and “Pull requests”.

Steps.

1. Create a GitHub account
2. Install GitHub desktop
3. Log to GitHub with your account
4. go to the original repository (not yours, but the one you want to contribute, not made by you)
5. Fork the original repository (into yours)
6. On your local repository (as a result of the previous fork), create a new branch ("git branch NewFeature")
7. Clone branch to your PC (Git Desktop); save it in the default directory proposed by GitHub

You can do point #6 through GitHub Desktop:

1. Open GitHub Desktop
2. In the top line, select master
3. Press Sync (ensure that your PC is synched with your remote repository in GitHub)
4. Press the branch icon to create a new branch; give it a name; verify "From branch master". Press "Create new branch".
5. Press publish

The development of your contribution shall be performed in a separate development folder (not directly in your GitHub local repository).

When the development is finished and it is fully tested, it can be published through the following steps.
1. Run Git Desktop. Through Git Desktop, right key on your project on the left panel, Open in Explorer
2. Verify that the prompt refers to the correct branch (green string): otherwise `git checkout <your branch>`
Note: To select a branch and update your local repository with the one hosted by GitHub: `git checkout <branch>`
3. Copy there all files changed/aded with your development
4. `git add <new files>` (notice that changed files are automatically managed by GitHub, but new ones are not automatically added and 'git add' is needed)
5. If you also edited project.yaml, locate a file named crlf.py in the Tools/scripts folder of your Python installation; then open a CMD on the openstreetmap-carto main folder of GitHub (not the dev one) and run

```
scripts\yaml2mml.py
<Python>\Tools\Scripts\crlf.py project.mml
```

With your Git Shell, run:
```
git config core.autocrlf true
```

Note to convert all files: `for %i in (*) do <Python>\Tools\Scripts\crlf.py %i`

6. `git commit –a` (add also the comment and save the file; the first line shall be very short. The second line might repeat the first one; add other lines of comment)
7. Open Git Desktop and verify that the changes are valid
8. Verify that the prompt refers to the correct branch (green string); `git push` (`git push [remote-name] [branch-name]`)
9. Through Git Desktop, right key on your project on the left panel, "View on GitHub" (your browser is opened to GitHub)
10. Verify that you are in YOUR GitHub Web repository and that you are logged. Select your branch, press "New Pull Request". Fill comments.

## Additional notes

You also have the built-in git GUI: `gitk`

Squashing commits with rebase: http://gitready.com/advanced/2009/02/10/squashing-commits-with-rebase.html

Checking tag statistics:
http://taginfo.openstreetmap.org/tags/?key=natural&value=ridge#overview

# OpenStreetMap-Carto License

Check [LICENSE.txt](LICENSE.txt)
