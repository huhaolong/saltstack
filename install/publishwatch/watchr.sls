watchr-install:
  file.recurse:
    - name: /usr/local/work/WATCH_R
    - source: salt://dev/apps_source/watchr
    - makedirs: True
    - dir_mode: 755
    - file_mode: 755
{% if grains['rest'] == 'cloud' %}
rename-watchr-config:
  cmd.run:
    - names:
      - mv /usr/local/work/WATCH_R/config.xml /usr/local/work/WATCH_R/config.xml.bak
      - mv /usr/local/work/WATCH_R/config_nat.xml /usr/local/work/WATCH_R/config.xml
    - require:
      - file: watchr-install
{% endif %}
