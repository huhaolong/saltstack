rmerge-install:
  file.recurse:
    - name: /usr/local/work/RM
    - source: salt://dev/apps_source/rmerge
    - makedirs: True
    - dir_mode: 755
    - file_mode: 755
