{% set back_path = "/data/backup/server" %}
{% set work_path = "/usr/local/work" %}
{% set server_name = 'R_PUBLISH' %}
mkdir-{{ server_name }}-{{ back_path }}:
  file.directory:
    - name: {{ back_path }}
    - mode: 755
    - makedirs: True
remove-{{ server_name }}:
  file.absent:
    - name: {{ back_path }}/{{ server_name }}.bak
cp-{{ server_name }}:
  file.copy:
    - name: {{ back_path }}/{{ server_name }}.bak
    - source:  {{ work_path }}/{{ server_name }}
    - require:
      - file: remove-{{ server_name }}
{{ server_name }}-update:
  file.recurse:
    - name: {{ work_path }}/{{ server_name }}
    - source: salt://dev/apps_source/publishr
    - makedirs: True
    - dir_mode: 755
    - file_mode: 755
{% if grains['rest'] == 'cloud' %}
rename-{{ server_name }}-config:
  cmd.run:
    - names:
      - mv {{ work_path }}/{{ server_name }}/config.xml {{ work_path }}/{{ server_name }}/config.xml.bak
      - mv {{ work_path }}/{{ server_name }}/config_nat.xml {{ work_path }}/{{ server_name }}/config.xml
    - require:
      - file: {{ server_name }}-update
{% endif %}

