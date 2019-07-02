FROM debian:buster
MAINTAINER yohan <783b8c87@scimetis.net>
ENV DEBIAN_FRONTEND noninteractive
ENV TZ Europe/Paris
RUN apt-get update && apt-get -y install cron docker.io
RUN rm -f /etc/crontab
ENTRYPOINT ["/usr/sbin/cron", "-f", "-L", "8"]
#ENTRYPOINT ["/bin/bash"]
