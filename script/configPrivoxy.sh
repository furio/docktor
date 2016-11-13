#!/usr/bin/env bash
sed -i 's|^\(accept-intercepted-requests\) .*|\1 1|' /etc/privoxy/config &&\
sed -i 's|localhost:8118|0.0.0.0:8118|' /etc/privoxy/config && \
sed -i 's|127.0.0.1:8118|0.0.0.0:8118|' /etc/privoxy/config && \
sed -i 's|^\(logdir\) .*|\1 /var/log/privoxy|' /etc/privoxy/config && \
sed -i 's|^\(logfile\) .*|\1 stdout|' /etc/privoxy/config && \
sed -i '/forward *localhost\//a forward-socks5t / 127.0.0.1:9050 .' /etc/privoxy/config && \
sed -i '/^forward-socks5t \//a forward 172.16.*.*/ .' /etc/privoxy/config&&\
sed -i '/^forward 172\.16\.\*\.\*\//a forward 172.17.*.*/ .' /etc/privoxy/config && \
sed -i '/^forward 172\.17\.\*\.\*\//a forward 172.18.*.*/ .' /etc/privoxy/config && \
sed -i '/^forward 172\.18\.\*\.\*\//a forward 172.19.*.*/ .' /etc/privoxy/config && \
sed -i '/^forward 172\.19\.\*\.\*\//a forward 172.20.*.*/ .' /etc/privoxy/config && \
sed -i '/^forward 172\.20\.\*\.\*\//a forward 172.21.*.*/ .' /etc/privoxy/config && \
sed -i '/^forward 172\.21\.\*\.\*\//a forward 172.22.*.*/ .' /etc/privoxy/config && \
sed -i '/^forward 172\.22\.\*\.\*\//a forward 172.23.*.*/ .' /etc/privoxy/config && \
sed -i '/^forward 172\.23\.\*\.\*\//a forward 172.24.*.*/ .' /etc/privoxy/config && \
sed -i '/^forward 172\.24\.\*\.\*\//a forward 172.25.*.*/ .' /etc/privoxy/config && \
sed -i '/^forward 172\.25\.\*\.\*\//a forward 172.26.*.*/ .' /etc/privoxy/config && \
sed -i '/^forward 172\.26\.\*\.\*\//a forward 172.27.*.*/ .' /etc/privoxy/config && \
sed -i '/^forward 172\.27\.\*\.\*\//a forward 172.28.*.*/ .' /etc/privoxy/config && \
sed -i '/^forward 172\.28\.\*\.\*\//a forward 172.29.*.*/ .' /etc/privoxy/config && \
sed -i '/^forward 172\.29\.\*\.\*\//a forward 172.30.*.*/ .' /etc/privoxy/config && \
sed -i '/^forward 172\.30\.\*\.\*\//a forward 172.31.*.*/ .' /etc/privoxy/config && \
sed -i '/^forward 172\.31\.\*\.\*\//a forward 10.*.*.*/ .' /etc/privoxy/config && \
sed -i '/^forward 10\.\*\.\*\.\*\//a forward 192.168.*.*/ .' /etc/privoxy/config && \
sed -i '/^forward 192\.168\.\*\.\*\//a forward 127.*.*.*/ .' /etc/privoxy/config && \
sed -i '/^forward 127\.\*\.\*\.\*\//a forward localhost/ .' /etc/privoxy/config