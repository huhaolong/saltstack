{% from 'dev/update/rtc/config.sls' import server_name with context %}
push_code:
  cmd.run:
    - names:
      - salt-call  state.sls dev.update.push_code
{{ server_name('gateway') }}
