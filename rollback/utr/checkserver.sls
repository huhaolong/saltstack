{% from 'dev/rollback/utr/config.sls' import server_name with context %}
{{ server_name('CheckServer') }}
