create-prometheus:
  user.present:
    - name: prometheus
    - shell: /sbin/nologin
    - createhome: False
install-process-exporter:
  file.managed:
    - name: /root/process_exporter.tar.gz
    - source: salt://install_file/process_exporter.tar.gz
unzip-file:
  cmd.run:
    - names:
      - tar xf /root/process_exporter.tar.gz -C /usr/local/exporter/
      - cp /usr/local/exporter/process_exporter/process_exporter.service /usr/lib/systemd/system/
run-process-exporter:
  service.running:
    - name: process_exporter
    - enable: True
