{% set work_path = "/usr/local/work/" %}
{% set dir_name = "rtmpplay" %}
back-{{ dir_name }}:
  cmd.run:
    - names:
      - cp {{ work_path}}{{ dir_name }}/config/playserver_local.lua.bak {{ work_path}}{{ dir_name }}/config/playserver_local.lua
      - cp {{ work_path}}{{ dir_name }}/config/playserver.lua.bak {{ work_path}}{{ dir_name }}/config/playserver.lua
      - md5sum {{ work_path}}{{ dir_name }}/config/playserver_local.lua.bak
      - md5sum {{ work_path}}{{ dir_name }}/config/playserver_local.lua
      - md5sum {{ work_path}}{{ dir_name }}/config/playserver.lua.bak
      - md5sum {{ work_path}}{{ dir_name }}/config/playserver.lua
