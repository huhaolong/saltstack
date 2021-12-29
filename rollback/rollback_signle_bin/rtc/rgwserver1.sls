{% set work_path = "/usr/local/work/" %}
{% set dir_name = "rgwServer1" %}
{% set name = "RGWServer1" %}
back-{{ name }}:
  cmd.run:
    - names:
      - cp {{ work_path}}{{ dir_name }}/{{ name }}.bak {{ work_path}}{{ dir_name }}/{{ name }}
      - md5sum {{ work_path}}{{ dir_name }}/{{ name }}.bak 
      - md5sum {{ work_path}}{{ dir_name }}/{{ name }}
