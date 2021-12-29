webrtcplayer-install:
  file.recurse:
    - name: /usr/local/work/webrtcplayer
    - source: salt://dev/apps_source/webrtcplayer
    - makedirs: True
    - dir_mode: 755
    - file_mode: 755 
