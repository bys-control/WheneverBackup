FROM byscontrol/wheneverbackup:base
MAINTAINER ByS Control "info@bys-control.com.ar"

RUN apk add "postgresql-client<9.6"

ONBUILD ADD . /root/Backup
ONBUILD RUN cd /root/Backup && whenever --update-crontab
