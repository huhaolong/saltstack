certs-install:
  file.recurse:
    - name: /usr/local/work/certs
    - source: salt://dev/apps_source/certs
    - makedirs: True
