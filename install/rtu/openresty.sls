openresty-install:
  pkg.installed:
    - pkgs:
      - openresty
mkdir-openresty-log:
  file.directory:
    - names:
      - /data/logs/nginx/
      - /usr/local/openresty/nginx/conf.d/
    - mode: 755
    - makedirs: True
    - require:
      - pkg: openresty-install
nginx-config:
  file.managed:
    - name: /usr/local/openresty/nginx/conf/nginx.conf
    - source: salt://dev/install/rtu/config/nginx.conf
    - require:
      - pkg: openresty-install
push-5678-config:
  file.managed:
    - name: /usr/local/openresty/nginx/conf/nginx_5678.conf
    - source: salt://dev/apps_source/config/nginx_5678.conf
    - require:
      - pkg: openresty-install
nginx-as-config:
  file.managed:
    - name: /usr/local/openresty/nginx/conf/nginx_as.conf
    - source:  salt://dev/apps_source/config/nginx_as.conf
    - require:
      - pkg: openresty-install
cert-rtu-openresty-install:
  file.managed:
    - name: /usr/local/openresty/nginx/cert.tar.gz
    - source: salt://dev/apps_source/config/cert.tar.gz
    - require:
      - pkg: openresty-install
open-cert:
  cmd.run:
    - names:
      - tar xf /usr/local/openresty/nginx/cert.tar.gz -C /usr/local/openresty/nginx/
    - require:
      - file: cert-rtu-openresty-install

