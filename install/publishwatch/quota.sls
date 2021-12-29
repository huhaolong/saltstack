install-quota:
  cmd.run:
    - names:
      - echo "50" > /etc/r.quota
      - echo "50" > /etc/webrtc_push.quota
      - echo "50" > /etc/RGWServer.quota
      - echo "50" > /etc/gateway.quota
      - echo "50" > /etc/webrtcplay.quota
      - echo "50" > /etc/RGWServer1.quota
