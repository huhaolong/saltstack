sshd:
  file.managed:
    - name: /etc/ssh/sshd_config
    - source: salt://dev/init/config/sshd_config
  service.running:
    - name: sshd
    - watch:
      - file: /etc/ssh/sshd_config
