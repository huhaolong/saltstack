rename-file:
  file.absent:
    - name: /Apps/vcloud_op
install-vcloud-op:
  archive.extracted:
    - name: /Apps/
    - source: salt://dev/apps_source/vcloud_op/vcloud_op.tar.gz

init-config:
  cmd.run:
    - names:
      - python3 /Apps/vcloud_op/bin/_config_init.py
    - require:
      - archive: install-vcloud-op

init-profile-source:
  cmd.run:
    - names:
      - sh /Apps/vcloud_op/vcloud.sh
    - require:
      - archive: install-vcloud-op

init-systemd:
  file.copy:
    - name: /usr/lib/systemd/system/vcloud.service
    - source: /Apps/vcloud_op/vcloud.service
    - require:
      - archive: install-vcloud-op
