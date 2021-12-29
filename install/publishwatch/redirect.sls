redirect-install:
  file.recurse:
    - name: /usr/local/work/redirect
    - source: salt://dev/apps_source/redirect
    - makedirs: True
    - dir_mode: 755
    - file_mode: 755
