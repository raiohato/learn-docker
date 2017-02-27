FROM zabbix/zabbix-server-mysql
ENV MAIL_SENDER admin@yourdomain.com
ENV MAIL_MTA 172.17.3.4
RUN echo "http://nl.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
 && apk update \
 && apk add heirloom-mailx \
 && echo "set from=$MAIL_SENDER" >> /etc/nail.rc \
 && echo "set smtp=$MAIL_MTA" >> /etc/nail.rc \
 && rm -rf /var/cache/apk/*