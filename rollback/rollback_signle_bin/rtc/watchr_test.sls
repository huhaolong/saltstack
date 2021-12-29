{% set work_path = "/usr/local/work/" %}
{% set dir_name = "watchr_test" %}
{% set name = "watchr_test" %}
back-{{ name }}:
  cmd.run:
    - names:
      - cp {{ work_path}}{{ dir_name }}/{{ name }}.bak {{ work_path}}{{ dir_name }}/{{ name }}
