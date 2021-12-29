ppend-dns:
  file.managed:
    - name: /etc/resolv.conf
    - source: salt://dev/init/config/resolv.conf
