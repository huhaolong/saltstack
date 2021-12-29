install-utr-quota:
  cmd.run:
    - names:
      - echo "50" > /etc/r.quota
      - echo "50" > /etc/rtmp_play.quota
      - echo "50" > /etc/utr.quota
