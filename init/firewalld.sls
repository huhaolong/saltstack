firewalld-stop:
  service.dead:
    - name: firewalld
    - disable: True
