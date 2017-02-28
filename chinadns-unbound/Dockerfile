FROM alpine:3.5

MAINTAINER test

RUN apk update \
&& apk add --no-cache build-base curl unbound supervisor \
&& mkdir /chinadns \
&& cd /chinadns \
&& curl -sL https://github.com/shadowsocks/ChinaDNS/releases/download/1.3.2/chinadns-1.3.2.tar.gz -o /chinadns/chinadns-1.3.2.tar.gz \
&& tar zxf /chinadns/chinadns-1.3.2.tar.gz -C /chinadns --strip 1 \
&& ./configure \
&& make install \
&& curl -s http://ftp.apnic.net/apnic/stats/apnic/delegated-apnic-latest | grep ipv4 | grep CN \
     | awk -F\| '{printf("%s/%d\n", $4, 32-log($5)/log(2))}' > /etc/chnroute.txt

RUN	apk del build-base curl \
&& cd / \
&& rm -rf /chinadns \
&& rm -rf /var/cache/apk/* \
&& rm -f /etc/unbound/unbound.conf

ENV UPDNS 208.67.222.222
ENV UPPORT 443
ENV ISPDNS 114.114.114.114

COPY unbound.conf /etc/unbound/
COPY chinadns.conf /etc/supervisor/supervisord.conf

EXPOSE 53/udp

CMD ["supervisord", "-c", "/etc/supervisor/supervisord.conf", "-n"]