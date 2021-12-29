rtu-install:
  file.recurse:
    - name: /usr/local/work/RTU
    - source: salt://dev/apps_source/RTU
    - dir_mode: 755
    - file_mode: 755
    - mekedirs: Ture
