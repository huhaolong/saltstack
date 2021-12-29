lua-install:
  file.recurse:
    - name: /usr/local/lua
    - source: salt://dev/apps_source/config/lua
    - makedirs: True
    - dir_mode: 755
    - file_mode: 755
