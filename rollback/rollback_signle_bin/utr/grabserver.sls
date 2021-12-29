{% set work_path = "/usr/local/work/" %}
{% set dir_name = "grabserver" %}
{% set name = "grabserver" %}
back-{{ name }}:
  cmd.run:
    - names:
      - mv  {{ work_path}}{{ dir_name }}/{{ name }} {{ work_path}}{{ dir_name }}/{{ name }}.bak

{{ name }}-install:
  file.managed:
    - name: {{ work_path}}{{ dir_name }}/{{ name }}
    - source: salt://dev/install/apps_source/{{ dir_name }}/{{ name }}
    - mode: 755
    - require:
      - cmd: back-{{ name }}
