# Salt states for getting kosmtik installed for purposes of
# improving the OpenStreetMap CartoCSS implementation and style.


# A whole bunch of libraries that we'll need, plus a bunch of extra fornts.
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
  pkg.latest:
    - install_recommends: false
    - refresh: true

# Getting kosmtik from github, latest version
kosmtik:
  user.present:
    - name: gisuser
    - empty_password: True
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
  # localconfig.json -- can be edited via the salt.pillar() function in 
  # the Vagrantfile. By default it'll connect locally over Unix sockets,
  # but you can override this to use a remote database over TCP/IP.
  file.managed:
    - name: /home/gisuser/localconfig.json
    - contents: |
        [
          { 
            "where": "Layer",
            "if": {
              "Datasource.type": "postgis",
              "Datasource.dbname": "gis"
            },
            "then": {
              "Datasource.dbname": "{{ salt['pillar.get']('kosmtik:source:dbname', 'gis') }}",
              "Datasource.password": "{{ salt['pillar.get']('kosmtik:source:password', '') }}",
              "Datasource.user": "{{ salt['pillar.get']('kosmtik:source:user', 'gisuser') }}",
              "Datasource.host": "{{ salt['pillar.get']('kosmtik:source:host', '') }}"
            }
          }
        ]
    - require:
      - user: gisuser

# Only recommended on your local machine
# -- Do not do in production environments!
/usr/local/kosmtik/:
  file.directory:
    - mode: 0777

# Configure kosmtik upstart service
/etc/init/kosmtik.conf:
  file.managed:
    - contents: |
        description "Kosmtik render service"
        author "Thor M. K. H. <thor@roht.no>"
        start on started postgresql
        stop on runlevel [016]
        env HOME=/home/gisuser/
        setuid gisuser
        chdir /usr/local/kosmtik
        exec node index.js serve /srv/openstreetmap-carto/project.yaml --host=0.0.0.0 --localconfig /home/user/gisuser/localconfig.json
  service.running:
    - name: kosmtik
    - require:
      - file: /etc/init/kosmtik.conf

# Create .config folder to ensure kosmtik won't fail on plugin install
/home/gisuser/.config/:
  file.directory:
    - user: gituser

{% for plugin in salt['pillar.get']('kosmtik:plugins', {}) %}
{{ plugin }}:
  cmd.run:
    - name: node index.js plugins --install {{ plugin }}
    - user: gisuser
    - cwd: {{ salt['pillar.get']('kosmtik.path', '/usr/local/kosmtik') }}
    - creates: /usr/local/kosmtik/node_modules/{{ plugin }}/package.json
    - require:
      - npm: kosmtik
      - file: kosmtik
    - require_in:
      - service: /etc/init/kosmtik.conf
{% endfor %}
