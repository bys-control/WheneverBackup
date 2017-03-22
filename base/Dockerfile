FROM ruby:2.3-alpine
MAINTAINER ByS Control "info@bys-control.com.ar"

# Instalo gemas para manejo de backups
RUN apk add --update build-base && \
gem install whenever backup && \
apk del build-base

CMD crond -b -d 8 && tail -f /root/Backup/log/backup.log
