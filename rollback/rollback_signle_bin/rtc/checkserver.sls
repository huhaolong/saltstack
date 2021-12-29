{% set work_path = "/usr/local/work/" %}
{% set dir_name = "CheckServer" %}
{% set name = "CheckServer" %}
back-{{ name }}:
  cmd.run:
    - names:
      - cp {{ work_path}}{{ dir_name }}/{{ name }}.bak {{ work_path}}{{ dir_name }}/{{ name }}
      - md5sum {{ work_path}}{{ dir_name }}/{{ name }}.bak
      - md5sum {{ work_path}}{{ dir_name }}/{{ name }}
