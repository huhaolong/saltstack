stop-gateway:
  cmd.run:
    - names:
      - . /etc/init.d/livevideo_config.cfg
      - . /etc/init.d/livevideo_functions.sh
      - stopgateway