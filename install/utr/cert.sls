cert-openresty-install:
  file.recurse:
    - name: /usr/local/openresty/nginx/cert
    - source: salt://dev/apps_source/cert
    - makedirs: True
