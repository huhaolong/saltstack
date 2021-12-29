checkserver-install:
  file.recurse:
    - name: /usr/local/work/CheckServer
    - source: salt://dev/apps_source/CheckServer
    - makedirs: True
    - dir_mode: 755
    - file_mode: 755
