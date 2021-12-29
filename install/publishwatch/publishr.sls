publishr-install:
  file.recurse:
    - name: /usr/local/work/R_PUBLISH
    - source: salt://dev/apps_source/publishr
    - makedirs: True
    - dir_mode: 755
    - file_mode: 755
{% if grains['rest'] == 'cloud' %}
rename-publishr-config:
  cmd.run:
    - names:
      - mv /usr/local/work/R_PUBLISH/config.xml /usr/local/work/R_PUBLISH/config.xml.bak
      - mv /usr/local/work/R_PUBLISH/config_nat.xml /usr/local/work/R_PUBLISH/config.xml
    - require:
      - file: publishr-install
{% endif %}
