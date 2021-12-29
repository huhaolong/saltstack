grabserver-install:
  file.managed:
    - name: /usr/local/work/grabserver/grabserver
    - source: salt://dev/apps_source/grabserver/grabserver
    - makedirs: True
    - mode: 755
grabserver-config-3011:
  file.managed:
    - name: /usr/local/work/grabserver/config_3011.xml
    - source: salt://dev/apps_source/grabserver/config_3011.xml
grabserver-config-8011:
  file.managed:
    - name: /usr/local/work/grabserver/config_8011.xml
    - source: salt://dev/apps_source/grabserver/config_8011.xml
grabserver-config-4936:
  file.managed:
    - name: /usr/local/work/grabserver/config_4936.xml
    - source: salt://dev/apps_source/grabserver/config_4936.xml
