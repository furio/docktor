FROM ubuntu:16.04
MAINTAINER Francesco Furiani <francesco@furio.me>

RUN apt-get update -qq && \
    apt-get install -qqy --no-install-recommends procps && \
    apt-key adv --keyserver pgp.mit.edu --recv-keys A3C4F0F979CAA22CDBA8F512EE8CBC9E886DDD89 && \
    echo -n "deb http://deb.torproject.org/torproject.org xenial main" >> /etc/apt/sources.list && \
    apt-get update -qq && \
    apt-get install -qqy --no-install-recommends tor privoxy && \
    apt-get -y dist-upgrade

COPY script/startTorPrivoxy.sh /usr/local/bin/startTorPrivoxy.sh
COPY script/configPrivoxy.sh /tmp/configPrivoxy.sh
COPY script/configTor.sh /tmp/configTor.sh
RUN chmod +x /tmp/configPrivoxy.sh && chmod +x /tmp/configTor.sh && chmod +x /usr/local/bin/startTorPrivoxy.sh
RUN /tmp/configPrivoxy.sh && /tmp/configTor.sh && rm /tmp/*.sh

VOLUME ["/etc/tor", "/etc/privoxy"]
EXPOSE 8118 9050 9051 9053
CMD ["/usr/local/bin/startTorPrivoxy.sh"]