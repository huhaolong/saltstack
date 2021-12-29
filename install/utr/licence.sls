chanage-licence:
  cmd.script:
    - name: /opt/register_licence.sh
    - source: salt://dev/apps_source/scripts/register_licence.sh
    - user: root
    - shell: /bin/bash
