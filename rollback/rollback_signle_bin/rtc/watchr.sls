{% set work_path = "/usr/local/work/" %}
{% set dir_name = "WATCH_R" %}
{% set name = "watchr" %}
back-{{ name }}:
  cmd.run:
    - names:
      - cp {{ work_path}}{{ dir_name }}/{{ name }}.bak {{ work_path}}{{ dir_name }}/{{ name }}
