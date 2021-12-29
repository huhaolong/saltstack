script-rtc-install:
  file.managed:
    - name: /usr/local/scripts/restart-rtc-proxy.sh
    - source: salt://dev/apps_source/scripts/restart-rtc-proxy.sh
    - makedirs: Ture
script-ws-install:
  file.managed:
    - name: /usr/local/scripts/restart-ws-proxy.sh
    - source: salt://dev/apps_source/scripts/restart-ws-proxy.sh
    - makedirs: Ture
script-as:
  file.managed:
    - name: /usr/local/scripts/restart-as.sh
    - source: salt://dev/apps_source/scripts/restart-as.sh
    - makedirs: Ture
script-5678:
  file.managed:
    - name: /usr/local/scripts/restart-5678.sh
    - source: salt://dev/apps_source/scripts/restart-5678.sh
    - makedirs: Ture
