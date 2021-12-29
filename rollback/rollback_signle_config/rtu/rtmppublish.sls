{% set work_path = "/usr/local/work/" %}
{% set dir_name = "rtmppublish" %}
{% set name = "publishserver.lua" %}
back-{{ name }}:
  cmd.run:
    - names:
      - cp {{ work_path}}{{ dir_name }}/config/{{ name }}.bak {{ work_path}}{{ dir_name }}/config/{{ name }}
      - md5sum {{ work_path}}{{ dir_name }}/config/{{ name }}.bak
      - md5sum {{ work_path}}{{ dir_name }}/config/{{ name }}
