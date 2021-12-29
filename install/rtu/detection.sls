detection-install:
  file.recurse:
    - name: /usr/local/work/detection
    - source: salt://dev/apps_source/detection
    - makedirs: True
    - dir_mode: 755
    - file_mode: 755
