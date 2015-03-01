# Salt states for getting kosmtik installed for purposes of
# improving the OpenStreetMap CartoCSS implementation and style.


# A whole bunch of libraries that we'll need, plus a bunch
# of extra fonts.
# TODO: fill in exact requirements
package-requirements:
  pkg.installed:
    - install_recommends: false
    - pkgs:
      - libgtk2.0-dev
      - libwebkitgtk-dev
      - protobuf-compiler
      - libprotobuf-dev
      - libgdal1-dev
      - gdal-bin
      - python-yaml
      # here be the fonts
      - ttf-dejavu
      - ttf-unifont
      - fonts-droid
      - fonts-sipa-arundina
      - fonts-sil-padauk
      - fonts-khmeros

# nodejs is what kosmtik runs on
nodejs:
  pkgrepo.managed:
    - humanname: NodeSource node.js
    - name: deb https://deb.nodesource.com/node/ trusty main
    - dist: trusty
    - file: /etc/apt/sources.list.d/nodesource.list
    - key_url: https://deb.nodesource.com/gpgkey/nodesource.gpg.key
  pkg.latest:
    - pkgs:
      - nodejs
    - install_recommends: false
    - refresh: true

# Getting kosmtik from github, latest version
kosmtik:
  git.latest:
    - rev: master
    - name: https://github.com/kosmtik/kosmtik.git
    - target: /usr/local/kosmtik
    - depth: 1
    - require:
      - pkg: package-requirements
  npm.bootstrap:
    - name: /usr/local/kosmtik
    - require:
      - pkg: nodejs
      - git: kosmtik
  # localconfig.json -- can be edited, is stored in the home directory
  file.managed:
    - name: /root/localconfig.json
    - contents: |
        [
          { 
            "where": "Layer",
            "if": {
              "Datasource.type": "postgis"
            },
            "then": {
              "Datasource.dbname": "gis",
              "Datasource.password": "",
              "Datasource.user": "gisuser",
              "Datasource.host": ""
            }
          }
        ]

/etc/init/kosmtik.conf:
  file.managed:
    - contents: |
        description "Kosmtik render service"
        author "Thor M. K. H. <thor@roht.no>"
        start on started postgresql
        stop on runlevel [016]
        env HOME=/root/
        chdir /usr/local/kosmtik
        exec node index.js serve /srv/openstreetmap-carto/project.yaml --host=0.0.0.0 --localconfig /root/localconfig.json
  service.running:
    - name: kosmtik
    - require:
      - file: /etc/init/kosmtik.conf


/root/.config/:
  file.directory:
    - user: root

{% for plugin in salt['pillar.get']('kosmtik:plugins', {}) %}
{{ plugin }}:
  cmd.run:
    - name: node index.js plugins --install {{ plugin }}
    - user: root
    - cwd: {{ salt['pillar.get']('kosmtik.path', '/usr/local/kosmtik') }}
    - creates: /usr/local/kosmtik/node_modules/{{ plugin }}/package.json
    - require:
      - npm: kosmtik
      - file: /root/.config/
    - require_in:
      - service: /etc/init/kosmtik.conf
{% endfor %}
