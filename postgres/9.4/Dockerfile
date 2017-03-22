FROM ruby:2.3
MAINTAINER ByS Control "info@bys-control.com.ar"

RUN gem install whenever backup

RUN sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt/ $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list' && \
curl https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add - && \
apt-get update && apt-get install -y postgresql-client-9.4 --no-install-recommends && rm -rf /var/lib/apt/lists/*

ONBUILD ADD . /root/Backup
RUN cd /root/Backup && whenever --update-crontab
CMD cron && tail -f /home/app/Backup/log/backup.log