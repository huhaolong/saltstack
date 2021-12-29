stop-grabserver:
  cmd.run:
    - names:
      - . /etc/init.d/livevideo_config.cfg
      - . /etc/init.d/livevideo_functions.sh
      - stopgrabwatchr
      - stopgrabpublishr
      - stopgrabgateway
      - stopgrabrmerge

