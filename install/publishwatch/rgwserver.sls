rgwServer-install:
  file.directory:
    - name: /usr/local/work/rgwServer
    - makedirs: True
    - mode: 755
rgwServer-config:
  file.managed:
    - name: /usr/local/work/rgwServer/config_publish.xml
    - source: salt://dev/apps_source/rgwserver/config_publish.xml
rename-rgwServer-config:
  cmd.run:
    - names:
      - mv /usr/local/work/rgwServer/config_publish.xml /usr/local/work/rgwServer/config.xml
    - require:
      - file: rgwServer-config
rgwServer-bin:
  file.managed:
    - name: /usr/local/work/rgwServer/RGWServer
    - source: salt://dev/apps_source/rgwserver/RGWServer 
    - mode: 755
