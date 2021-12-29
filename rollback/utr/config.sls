{% set back_path = "/data/backup/server" %}
{% set work_path = "/usr/local/work" %}
{% macro server_name(server_name) %}
remove-{{ server_name }}:
  file.absent:
    - name: {{ work_path }}/{{ server_name }}
rollback-{{ server_name }}:
  file.copy:
    - name: {{ work_path }}/{{ server_name }}
    - source:  {{ back_path }}/{{ server_name }}.bak
    - makedirs: True
    - require:
      - file: remove-{{ server_name }}
{% endmacro %}

