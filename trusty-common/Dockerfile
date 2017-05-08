FROM ubuntu:14.04.5

MAINTAINER raiohato@tuta.io

RUN apt-get update && apt-get install -y nano wget supervisor

COPY script1.sh /usr/local/bin/
COPY script2.sh /usr/local/bin/
COPY script3.sh /usr/local/bin/
COPY supervisord.conf /etc/supervisor/supervisord.conf

RUN chmod +x /usr/local/bin/*.sh

CMD ["supervisord", "-c", "/etc/supervisor/supervisord.conf", "-n"]