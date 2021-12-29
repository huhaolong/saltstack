rtmppublish-install:
  file.recurse:
    - name: /usr/local/work/rtmppublish
    - source: salt://dev/apps_source/rtmppublish
    - dir_mode: 755
    - file_mode: 755
    - mekedirs: Ture
