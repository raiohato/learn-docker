#!/bin/bash
echo "set from=${MAIL_SENDER}" >> /etc/nail.rc \
&& echo "set smtp=${MAIL_MTA}" >> /etc/nail.rc