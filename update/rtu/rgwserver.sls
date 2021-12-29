{% set back_path = "/data/backup/server" %}
{% set work_path = "/usr/local/work" %}
{% set server_name = "rgwServer" %}
mkdir-{{ back_path }}:
  file.directory:
    - name: {{ back_path }}
    - mode: 755
    - makedirs: True
remove-{{ server_name }}:
  file.absent:
    - name: {{ back_path }}/{{ server_name }}.bak
cp-{{ server_name }}:
  file.copy:
    - name: {{ back_path }}/{{ server_name }}.bak
    - source:  {{ work_path }}/{{ server_name }}
    - require:
      - file: remove-{{ server_name }}
{{ server_name }}-update:
  file.directory:
    - name: {{ work_path }}/{{ server_name }}
    - makedirs: True
    - mode: 755
{{ server_name }}-config:
  file.managed:
    - name: {{ work_path }}/{{ server_name }}/config_publish.xml
    - source: salt://dev/apps_source/rgwserver/config_publish.xml
rename-{{ server_name }}-config:
  cmd.run:
    - names:
      - mv {{ work_path }}/{{ server_name }}/config_publish.xml {{ work_path }}/{{ server_name }}/config.xml
    - require:
      - file: {{ server_name }}-config
{{ server_name }}-bin:
  file.managed:
    - name: {{ work_path }}/{{ server_name }}/RGWServer
    - source: salt://dev/apps_source/rgwserver/RGWServer
    - mode: 755

