install-rtu-quota:
  cmd.run:
    - names:
      - echo "50" > /etc/r.quota
      - echo "50" > /etc/rtmp_push.quota
      - echo "50" >  /etc/rtu.quota
