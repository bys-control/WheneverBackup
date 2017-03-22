FROM phusion/passenger-ruby23
MAINTAINER ByS Control "info@bys-control.com.ar"

# Instalo gemas para manejo de backups
RUN gem install whenever backup
CMD cron && tail -f /home/app/Backup/log/backup.log