mkdir-directory-log:
  file.directory:
    - names:
      - /data/www/
      - /data/rtmp/
      - /data/udp2rtmp/CheckServer/
      - /data/udp2rtmp/detection/
      - /data/udp2rtmp/gateway/
      - /data/udp2rtmp/LOCAL_R/
      - /data/udp2rtmp/redirect/
      - /data/udp2rtmp/usrstat/
      - /data/udp2rtmp/utr/
      - /data/udp2rtmp/RTMP_WATCH_R/
    - mode: 755
    - makedirs: True
