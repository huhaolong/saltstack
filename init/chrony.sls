chrony-install:
    pkg.installed:
      - pkgs: 
        - chrony
    file.managed:
      - name: /etc/chrony.conf
      - source: salt://dev/init/config/chrony.conf
    cmd.run:
      - names:
        - timedatectl set-local-rtc 1
        - timedatectl set-ntp yes
        - timedatectl set-timezone Asia/Shanghai
    service.running:
      - name: chronyd
      - enable: True
