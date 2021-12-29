rgwServer1-install:
  file.directory:
    - name: /usr/local/work/rgwServer1
    - makedirs: True
    - mode: 755
rgwServer1-config:
  file.managed:
    - name: /usr/local/work/rgwServer1/config_watch.xml
    - source: salt://dev/apps_source/rgwserver/config_watch.xml
rename-rgwServer1-config:
  cmd.run:
    - names:
      - mv /usr/local/work/rgwServer1/config_watch.xml /usr/local/work/rgwServer1/config.xml
    - require:
      - file: /usr/local/work/rgwServer1/config_watch.xml
rgwServer1-bin:
  file.managed:
    - name: /usr/local/work/rgwServer1/RGWServer1
    - source: salt://dev/apps_source/rgwserver/RGWServer1
    - mode: 755
