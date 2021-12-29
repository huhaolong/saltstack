dir_mkdir:
  cmd.run:
    - names:
      - mdkir -p /data/www/
pull-dispatch:
  archive.extracted:
    - name: /data/www/
    - source: salt://dev/apps_source/beta/dispatch/dispatch.tar.gz
