rtmp-watchr-install:
  file.recurse:
    - name: /usr/local/work/rtmp_watchr
    - source: salt://dev/apps_source/rtmp_watchr
    - makedirs: True
    - dir_mode: 755
    - file_mode: 755
{% if grains['rest'] == 'cloud' %}
rename-rtmp-watchr-config:
  cmd.run:
    - names:
      - mv /usr/local/work/rtmp_watchr/config.xml /usr/local/work/rtmp_watchr/config.xml.bak
      - mv /usr/local/work/rtmp_watchr/config_nat.xml /usr/local/work/rtmp_watchr/config.xml
    - require:
      - file: rtmp-watchr-install
{% endif %}
