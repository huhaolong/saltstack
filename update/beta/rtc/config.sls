{% set back_path = "/data/backup/server" %}
{% set work_path = "/usr/local/work" %}
{% macro server_name(server_name) %}
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
    - source: salt://dev/apps_source/beta/{{ server_name }}
    - makedirs: True
    - dir_mode: 755
    - file_mode: 755
{% endmacro %}


{% macro server_r_config(server_r_config) %}
{% if grains['rest'] == 'cloud' %}
rename-{{ server_r_config }}-config:
  cmd.run:
    - names:
      - mv {{ work_path }}/{{ server_r_config }}/config.xml {{ work_path }}/{{ server_r_config }}/config.xml.bak
      - mv {{ work_path }}/{{ server_r_config }}/config_nat.xml {{ work_path }}/{{ server_r_config }}/config.xml
    - require:
      - file: {{ server_r_config }}-update
{% endif %}
{% endmacro %}
