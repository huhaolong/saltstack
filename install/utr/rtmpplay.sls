rtmpplay-install:
  file.recurse:
    - name: /usr/local/work/rtmpplay
    - source: salt://dev/apps_source/rtmpplay
    - dir_mode: 755
    - file_mode: 755
    - mekedirs: Ture
