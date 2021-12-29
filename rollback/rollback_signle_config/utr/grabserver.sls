{% set work_path = "/usr/local/work/" %}
{% set dir_name = "grabserver" %}
back-grabserver-config:
  cmd.run:
    - names:
      - cp  {{ work_path}}{{ dir_name }}/config_2011.xml.bak {{ work_path}}{{ dir_name }}/config_2011.xml
      - cp {{ work_path}}{{ dir_name }}/config_4011.xml.bak {{ work_path}}{{ dir_name }}/config_4011.xml
      - cp {{ work_path}}{{ dir_name }}/config_5011.xml.bak {{ work_path}}{{ dir_name }}/config_5011.xml
      - cp {{ work_path}}{{ dir_name }}/config_9999.xml.bak {{ work_path}}{{ dir_name }}/config_9999.xml
      - cp {{ work_path}}{{ dir_name }}/config_4936.xml.bak {{ work_path}}{{ dir_name }}/config_4936.xml
      - cp {{ work_path}}{{ dir_name }}/config_4937.xml.bak {{ work_path}}{{ dir_name }}/config_4937.xml
