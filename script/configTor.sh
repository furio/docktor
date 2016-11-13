#!/usr/bin/env bash
echo 'ControlSocket /etc/tor/run/control' >>/etc/tor/torrc && \
echo 'ControlSocketsGroupWritable 1' >>/etc/tor/torrc && \
echo 'ControlPort 9051' >>/etc/tor/torrc && \
echo 'CookieAuthentication 1' >>/etc/tor/torrc && \
echo 'CookieAuthFileGroupReadable 1' >>/etc/tor/torrc && \
echo 'CookieAuthFile /etc/tor/run/control.authcookie' >>/etc/tor/torrc && \
echo 'DataDirectory /var/lib/tor' >>/etc/tor/torrc && \
echo 'RunAsDaemon 1' >>/etc/tor/torrc && \
echo 'User debian-tor' >>/etc/tor/torrc && \
echo 'AutomapHostsOnResolve 1' >>/etc/tor/torrc && \
echo 'ExitPolicy reject *:*' >>/etc/tor/torrc && \
echo 'RelayBandwidthRate 50 KB' >>/etc/tor/torrc && \
echo 'RelayBandwidthBurst 100 KB' >>/etc/tor/torrc && \
echo 'VirtualAddrNetworkIPv4 10.192.0.0/10' >>/etc/tor/torrc && \
echo 'DNSPort 9053' >>/etc/tor/torrc && \
echo 'SocksPort 0.0.0.0:9050 IsolateDestAddr' >>/etc/tor/torrc && \
echo 'TransPort 9040' >>/etc/tor/torrc && \
echo 'ExcludeNodes whistlersmother' >>/etc/tor/torrc && \'
mkdir -p /etc/tor/run && \
chown -Rh debian-tor. /var/lib/tor /etc/tor/run && \
chmod 0750 /etc/tor/run