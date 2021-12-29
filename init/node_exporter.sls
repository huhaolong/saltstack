create-node-prometheus:
  user.present:
    - name: prometheus
    - shell: /sbin/nologin
    - createhome: False
install-node-exporter:
  file.managed:
    - name: /root/node_exporter.tar.gz
    - source: salt://install_file/node_exporter.tar.gz
unzip-node-file:
  cmd.run:
    - names:
      - tar xf /root/node_exporter.tar.gz -C /
      - cp /usr/local/exporter/node_exporter/node_exporter.service /usr/lib/systemd/system/
    - require:
      - file: install-node-exporter
run-node-exporter:
  service.running:
    - name: node_exporter
    - enable: True
    - require:
      - file: install-node-exporter
