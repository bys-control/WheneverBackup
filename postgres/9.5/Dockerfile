FROM byscontrol/wheneverbackup:base
MAINTAINER ByS Control "info@bys-control.com.ar"

RUN echo "@3.4 http://dl-cdn.alpinelinux.org/alpine/v3.4/main" > /etc/apk/repositories && \
apk add --update "postgresql@3.4<9.6" && \
rm -rf /var/cache/apk/*

ONBUILD ADD . /root/Backup
ONBUILD RUN cd /root/Backup && whenever --update-crontab
