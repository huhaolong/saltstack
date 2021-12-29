gateway-install:
  file.recurse:
    - name: /usr/local/work/gateway
    - source: salt://dev/apps_source/gateway
    - makedirs: True
    - dir_mode: 755
    - file_mode: 755
