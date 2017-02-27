FROM zabbix/zabbix-server-mysql
ENV MAIL_SENDER=$MAIL_SENDER
ENV MAIL_MTA=$MAIL_MTA
RUN echo "http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
 && echo "http://nl.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
 && apk update \
 && apk add heirloom-mailx \
 && echo "set from=$MAIL_SENDER" >> /etc/nail.rc \
 && echo "set smtp=$MAIL_MTA" >> /etc/nail.rc \
 && rm -rf /var/cache/apk/*