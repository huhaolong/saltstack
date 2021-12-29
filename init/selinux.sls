selinux-down:
  cmd.run:
    - names: 
      - getenforce 0
  file.managed:
    - name: /etc/selinux/config
    - source: salt://dev/init/config/config
