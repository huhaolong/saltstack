grabserver-install:
  file.managed:
    - name: /usr/local/work/grabserver/grabserver
    - source: salt://dev/apps_source/grabserver/grabserver
    - makedirs: True
    - mode: 755
grabserver-config-4011:
  file.managed:
    - name: /usr/local/work/grabserver/config_4011.xml
    - source: salt://dev/apps_source/grabserver/config_4011.xml
grabserver-config-4935:
  file.managed:
    - name: /usr/local/work/grabserver/config_4935.xml
    - source: salt://dev/apps_source/grabserver/config_4935.xml
