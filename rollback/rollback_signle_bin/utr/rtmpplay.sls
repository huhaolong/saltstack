{% set work_path = "/usr/local/work/" %}
{% set dir_name = "rtmpplay" %}
{% set name = "rtmpserver" %}
back-{{ name }}:
  cmd.run:
    - names:
      - mv  {{ work_path}}{{ dir_name }}/{{ name }}/{{ name }} {{ work_path}}{{ dir_name }}/{{ name }}/{{ name }}.bak

{{ name }}-install:
  file.managed:
    - name: {{ work_path}}{{ dir_name }}/{{ name }}/{{ name }}
    - source: salt://dev/install/apps_source/{{ dir_name }}/{{ name }}/{{ name }}
    - mode: 755
    - require:
      - cmd: back-{{ name }}
