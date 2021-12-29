input-watermark:
  file.managed:
    - name: /opt/res.tar.gz
    - source: salt://dev/apps_source/res.tar.gz
unzip-res:
  archive.extracted:
    - name: /opt/
    - source: /opt/res.tar.gz
    - require:
      - file: input-watermark
