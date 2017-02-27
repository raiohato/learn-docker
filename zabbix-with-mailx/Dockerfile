FROM zabbix/zabbix-server-mysql
RUN echo "http://nl.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories \
 && echo "http://nl.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories \
 && apk update \
 && apk add heirloom-mailx \
 && echo "echo \"set from=\${MAIL_SENDER}\" > /etc/nail.rc" >> /run_zabbix_component.sh \
 && echo "echo \"set smtp=\${MAIL_MTA}\" >> /etc/nail.rc" >> /run_zabbix_component.sh \
 && rm -rf /var/cache/apk/*