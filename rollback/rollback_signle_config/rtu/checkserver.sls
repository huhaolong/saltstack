{% set work_path = "/usr/local/work/" %}
{% set dir_name = "CheckServer" %}
{% set name = "config.xml" %}
rollback-{{ dir_name }}-{{ name }}:
  cmd.run:
    - names:
      - cp {{ work_path}}{{ dir_name }}/{{ name }}.bak {{ work_path}}{{ dir_name }}/{{ name }}
      - cp -r {{ work_path}}{{ dir_name }}/watchpath.bak {{ work_path}}{{ dir_name }}/watchpath
      - md5sum {{ work_path}}{{ dir_name }}/{{ name }}.bak
      - md5sum {{ work_path}}{{ dir_name }}/{{ name }}
