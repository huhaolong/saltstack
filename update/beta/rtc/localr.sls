{% from 'dev/update/rtc/config.sls' import server_name with context %}
{% from 'dev/update/rtc/config.sls' import server_r_config with context %}
{{ server_name('localr') }}
{{ server_r_config('localr') }}
