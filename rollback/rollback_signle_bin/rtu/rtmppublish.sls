{% set work_path = "/usr/local/work/" %}
{% set dir_name = "rtmppublish" %}
{% set name = "rtmpserver" %}
back-{{ name }}:
  cmd.run:
    - names:
      - cp {{ work_path}}{{ dir_name }}/{{ name }}/{{ name }}.bak {{ work_path}}{{ dir_name }}/{{ name }}/{{ name }}
      - md5sum {{ work_path}}{{ dir_name }}/{{ name }}/{{ name }}.bak 
      - md5sum {{ work_path}}{{ dir_name }}/{{ name }}/{{ name }}
