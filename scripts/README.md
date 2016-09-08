The following scripts are provided to support coding. They are necessary and useful solely during making changes to the map style and are unnecessary for map rendering.

- **scripts/yaml2mml.py**

  The adopted approach by OpenStreetMap Carto exploits PostGIS performance to dynamically generate layer definitions and input data for the *.mss* CartoCSS styles, making the styles easy to be edited and maintained; all related configuration is done in *project.yaml*. So, for changes in the styles which need new definitions other than the ones already in place, the file *project.yaml* has to be modified. While *project.yaml* is directly read by [Kosmtik](https://github.com/kosmtik/kosmtik) and [Carto](https://github.com/mapbox/carto), *project.mml* is needed for [TileMill](http://mapbox.com/tilemill). Do not modify *project.mml* directly; instead run
  
  ```
  scripts/yaml2mml.py
  ```
  
  Notice also that for any modification of project.yaml, this script has to be executed before performing a commit.
  
- **scripts/get-shapefiles.py**

  This script generates and populates the *data* directory with all needed shapefiles, including indexing them through *shapeindex*. Check [INSTALL](https://github.com/gravitystorm/openstreetmap-carto/blob/master/INSTALL.md) for further documentation.

  ```
  usage: get-shapefiles.py [-h] [-c] [-d <directory name>] [-e] [-f] [-l] [-n]
                           [-p] [-r] [-s] [-u] [-1] [-2] [-3] [-4] [-5] [-6]
  
  optional arguments:
    -h, --help            show this help message and exit
    -c, --check           check whether the 'data' directory already exists
    -d <directory name>, --directory <directory name>
                          set the name of the data directory (default: 'data')
    -e, --no-extract      do not populate target directories with the expansion
                          of downloaded data
    -f, --force           force continuing even if project.yaml does not exist
    -l, --no-curl         do not use 'curl' even if available
    -n, --no-download     do not download archive if already existing locally
    -p, --pause           pause before starting
    -r, --remove          remove each downloaded archive after its expansion
    -s, --no-shape        do not run shapeindex
    -u, --update          force downloading files even if not newer than the
                          locally existing ones
    -1, --world-boundaries
                          only process world_boundaries
    -2, --simplified-land
                          only process simplified-land-polygons-complete-3857
    -3, --ne-admin        only process ne_110m_admin_0_boundary_lines_land
    -4, --land-polygons   only process land-polygons-split-3857
    -5, --icesheet-polygons
                          only process antarctica-icesheet-polygons-3857
    -6, --icesheet-outlines
                          only process antarctica-icesheet-outlines-3857
  ```
  The script supports Windows, UNIX, Python 2.7, Python 3 and *curl* when installed (anyway *curl* is not required, for more comfortable Windows support). Installation of *shapeindex* is a prerequisite to index files, but is not strictly required if `-s` option is used.
  
  *get-shapefiles.py* can be run from the *scripts* directory of *openstreetmap-carto*, or from its base folder, or through absolute path from any directory. It allows a default Web proxy and also the configuration of the HTTP_PROXY environment variable. Windows PAC and NTLM authentication are not supported.
    
  Typical usage:
  
  ```
  $ scripts/get-shapefiles.py
  ```

- **scripts/generate_road_colours.py**

  For any modification on the road classes colours, do not modify *road-colors-generated.mss* directly. Check instead *road-colors.yaml* and related internal description. Then run `scripts/generate_road_colours.py > road-colors-generated.mss`.

  ```
  usage: generate_road_colours.py [-h] [-v]
  
  Generates road colours
  
  optional arguments:
    -h, --help     show this help message and exit
    -v, --verbose  Generates information about colour differences
  ```

  Typical usage:
  
  ```
  $ pip install colormath # (or "sudo pip install colormath" to install the needed Python prerequisite)

  $ scripts/generate_road_colours.py > road-colors-generated.mss
  ```

  Not all values are possible; *generate_road_colours.py* will throw an error if you pick values that cannot be converted to RGB.
  Usage of [HUSL](http://www.husl-colors.org) is recommended.
  
- **scripts/generate_shields.py**

  This script generates all SVG files inside the symbols/shields folder related to highway shields. It uses *road-colors.yaml* to configure the shield colors.

  The generated files are then used by *roads.mss* (specifically, by *roads-text-ref-low-zoom* and *roads-text-ref* styles).

  Files are named *symbols/shields/[highway]_[width]x[height].svg*, *symbols/shields/[highway]_[width]x[height]_z16.svg* and *symbols/shields/[highway]_[width]x[height]_z18.svg* where *width* = 1 to 10 and *height* = 1 to 4.

  Related configuration is internal. The script exploits *generate_road_colours.py* to read *road-colors.yaml* configuration file.

  The currently produced files are related to *motorway*, *trunk*, *primary*, *secondary* and *tertiary* highway tags (while *track* and *path* are not managed at the moment).
  
  **Installation**
  
  + Installation of prerequisite components with Windows:
    
    Download the LXML WHL library from https://pypi.python.org/pypi/lxml
    
    Example using Python 2.7:
    
    ```
        > pip install lxml-3.6.4-cp27-cp27m-win32.whl
        > pip install colormath
    ```
    
    Example using Python 3.5:
  
    ```
        > pip install lxml-3.6.4-cp35-cp35m-win32.whl
        > pip install colormath
    ```
    
    Running the script:
  
        > scripts\generate_road_colours.py > road-colors-generated.mss
        > scripts\generate_shields.py
  
  + Installation of prerequisite components with Ubuntu:
  
    ```
      $ sudo apt-get install python-pip
      $ sudo apt-get install python3-pip
      $ sudo apt-get install libxml2-dev libxslt1-dev python-dev
      $ sudo apt-get install python-lxml
      $ sudo apt-get install python-colormath
      $ sudo pip install colormath
      $ sudo pip install lxml
    ```
    
      Running the script:
  
    ```
      $ scripts/generate_road_colours.py > road-colors-generated.mss
      $ scripts/generate_shields.py
    ```

- **scripts/shop_values.rb**

  This Ruby script generates a list of popular shop values with more than MIN_COUNT occurences in OpenStreetMap database according to taginfo.
  it is useful during creating/updating list of shops displayed with generic dot icon.

- **scripts/indexes.py**

  A new SQL query defined in project.yaml might need the definition of SQL indexes that shall be coded in *indexes.yml*, which is the related dictionary adopted by OpenStreetMap Carto.
  
  Do not modify *indexes.sql* directly: use this script instead, which reads *indexes.yml* and creates SQL statements to the standard output, to be redirected to *indexes.sql*. There are a number of options for concurrent index creation, recreating the osm2pgsql-built indexes, fillfactors, and other settings to give full control of the resulting statements.

  ```
  usage: indexes.py [-h] [--concurrent] [--fillfactor FILLFACTOR] [--notexist]
                    [--osm2pgsql] [--reindex]
  
  Generates custom index statements
  
  optional arguments:
    -h, --help            show this help message and exit
    --concurrent          Generate indexes CONCURRENTLY
    --fillfactor FILLFACTOR
                          Custom fillfactor to use
    --notexist            Use IF NOT EXISTS (requires 9.5)
    --osm2pgsql           Include indexes normally built by osm2pgsql
    --reindex             Rebuild existing indexes
  ```
  
  Typical usage:
  
  ```
  $ scripts/index.py > index.sql
  ```

  A goal with the indexes is to have them general-purpose enough to not need frequent changing with stylesheet changes, but to be usable with many versions, and potentially other styles.
