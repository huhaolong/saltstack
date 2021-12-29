sysctl:
  file.managed:
    - name: /etc/sysctl.conf
    - source: salt://dev/init/config/sysctl.conf
