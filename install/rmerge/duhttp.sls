duhttp-install:
  file.recurse:
    - name: /usr/local/work/duhttp
    - source: salt://dev/apps_source/duhttp
    - makedirs: True
    - dir_mode: 755
    - file_mode: 755
