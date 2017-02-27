FROM zabbix/zabbix-server-mysql
RUN echo "http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
 && echo "http://nl.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
 && apk update \
 && apk add heirloom-mailx \
 && rm -rf /var/cache/apk/*
COPY nailrc.sh /nailrc.sh
RUN chmod +x /nailrc.sh