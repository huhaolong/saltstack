restart-rgwserver1:
  cmd.run:
    - names:
      - . /etc/init.d/livevideo_config.cfg
      - . /etc/init.d/livevideo_functions.sh
      - restartrgw1
