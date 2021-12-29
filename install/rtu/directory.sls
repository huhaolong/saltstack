mkdir-directory-log:
  file.directory:
    - names:
      - /data/www/
      - /data/rtmp/
      - /data/udp2rtmp/CheckServer/
      - /data/udp2rtmp/detection/
      - /data/udp2rtmp/gateway/
      - /data/udp2rtmp/R/
      - /data/udp2rtmp/redirect/
      - /data/udp2rtmp/rgwServer/
      - /data/udp2rtmp/rgwServer1/
      - /data/udp2rtmp/usrstat/
      - /data/udp2rtmp/RTU/
    - mode: 755
    - makedirs: True
