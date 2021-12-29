{% set work_path = "/usr/local/work/" %}
{% set dir_name = "localr" %}
{% set name = "config.xml" %}
back-{{ name }}:
  cmd.run:
    - names:
      - cp {{ work_path}}{{ dir_name }}/{{ name }}.bak {{ work_path}}{{ dir_name }}/{{ name }}
      - md5sum {{ work_path}}{{ dir_name }}/{{ name }}.bak
      - md5sum {{ work_path}}{{ dir_name }}/{{ name }}
