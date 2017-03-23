FROM byscontrol/wheneverbackup:base
MAINTAINER ByS Control "info@bys-control.com.ar"

RUN echo "@3.3 http://dl-cdn.alpinelinux.org/alpine/v3.3/main" > /etc/apk/repositories && \
apk add --update "postgresql@3.3<9.5" && \
rm -rf /var/cache/apk/*

ONBUILD ADD . /root/Backup
ONBUILD RUN cd /root/Backup && whenever --update-crontab
