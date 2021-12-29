grabserver-install:
  file.managed:
    - name: /usr/local/work/grabserver/grabserver
    - source: salt://dev/apps_source/grabserver/grabserver
    - makedirs: True
    - mode: 755
grabserver-config-4399:
  file.managed:
    - name: /usr/local/work/grabserver/config_4399.xml
    - source: salt://dev/apps_source/grabserver/config_4399.xml
