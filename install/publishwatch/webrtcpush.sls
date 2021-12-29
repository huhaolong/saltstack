webrtcpush-install:
  file.recurse:
    - name: /usr/local/work/webrtcpush
    - source: salt://dev/apps_source/webrtcpush
    - makedirs: True
    - dir_mode: 755
    - file_mode: 755 
