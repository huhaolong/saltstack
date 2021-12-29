utr-install:
  file.recurse:
    - name: /usr/local/work/utr
    - source: salt://dev/apps_source/utr
    - dir_mode: 755
    - file_mode: 755
    - mekedirs: Ture
