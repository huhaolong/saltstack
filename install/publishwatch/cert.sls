cert-openresty-install:
  file.managed:
    - name: /usr/local/openresty/nginx/cert.tar.gz
    - source: salt://dev/apps_source/config/cert.tar.gz
open-cert:
  cmd.run:
    - names:
      - tar xf /usr/local/openresty/nginx/cert.tar.gz -C /usr/local/openresty/nginx/
    - require:
      - file: cert-openresty-install
