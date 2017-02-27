FROM zabbix/zabbix-server-mysql
RUN echo "http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
 && echo "http://nl.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
 && apk update \
 && apk add heirloom-mailx \
 && rm -rf /var/cache/apk/*
CMD ["echo "set from=${MAIL_SENDER}" >> /etc/nail.rc \
 && echo "set smtp=${MAIL_MTA}" >> /etc/nail.rc"]