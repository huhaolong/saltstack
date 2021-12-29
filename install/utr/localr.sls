localr-install:
  file.recurse:
    - name: /usr/local/work/localr
    - source: salt://dev/apps_source/localr
    - makedirs: True
    - dir_mode: 755
    - file_mode: 755
{% if grains['rest'] == 'cloud' %}
rename-localr-config:
  cmd.run:
    - names:
      - mv /usr/local/work/localr/config.xml /usr/local/work/localr/config.xml.bak
      - mv /usr/local/work/localr/config_nat.xml /usr/local/work/localr/config.xml
    - require:
      - file: localr-install
{% endif %}
