{% from 'dev/update/utr/config.sls' import server_name with context %}
{% from 'dev/update/utr/config.sls' import server_r_config with context %}
{{ server_name('rtmp_watchr') }}
{{ server_r_config('rtmp_watchr') }}
