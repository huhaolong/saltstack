publishr-install:
  file.recurse:
    - name: /usr/local/work/rtmpproxy
    - source: salt://dev/apps_source/rtmpproxy
    - makedirs: True
    - dir_mode: 755
    - file_mode: 755
mkdir-rtmp-log:
  file.directory:
    - name: /data/rtmp
    - mode: 755
    - makedirs: True
