mkdir-directory-log:
  file.directory:
    - names:
      - /data/www/
      - /data/rtmp/
      - /data/udp2rtmp/CheckServer/
      - /data/udp2rtmp/detection/
      - /data/udp2rtmp/gateway/
      - /data/udp2rtmp/LOCAL_R/
      - /data/udp2rtmp/Pserver/
      - /data/udp2rtmp/R/
      - /data/udp2rtmp/redirect/
      - /data/udp2rtmp/rgwServer/
      - /data/udp2rtmp/rgwServer1/
      - /data/udp2rtmp/usrstat/
      - /data/udp2rtmp/WATCH_R/
      - /data/udp2rtmp/WATCH_R_TEST/
      - /data/udp2rtmp/webrtcplayer/
      - /data/udp2rtmp/webrtcpush/
    - mode: 755
    - makedirs: True