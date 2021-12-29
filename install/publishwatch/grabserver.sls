grabserver-install:
  file.managed:
    - name: /usr/local/work/grabserver/grabserver
    - source: salt://dev/apps_source/grabserver/grabserver
    - makedirs: True
    - mode: 755
grabserver-config-2011:
  file.managed:
    - name: /usr/local/work/grabserver/config_2011.xml
    - source: salt://dev/apps_source/grabserver/config_2011.xml
grabserver-config-3011:
  file.managed:
    - name: /usr/local/work/grabserver/config_3011.xml
    - source: salt://dev/apps_source/grabserver/config_3011.xml  
grabserver-config-4011:
  file.managed:
    - name: /usr/local/work/grabserver/config_4011.xml
    - source: salt://dev/apps_source/grabserver/config_4011.xml
grabserver-config-5011:
  file.managed:
    - name: /usr/local/work/grabserver/config_5011.xml
    - source: salt://dev/apps_source/grabserver/config_5011.xml
grabserver-config-9999:
  file.managed:
    - name: /usr/local/work/grabserver/config_9999.xml
    - source: salt://dev/apps_source/grabserver/config_9999.xml
