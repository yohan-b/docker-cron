FROM debian:jessie
MAINTAINER yohan <783b8c87@scimetis.net>
ENV DEBIAN_FRONTEND noninteractive
ENV TZ Europe/Paris
RUN echo "deb http://ftp.debian.org/debian jessie-backports main" >> /etc/apt/sources.list
RUN apt-get update && apt-get -y install cron && apt-get -y install docker.io -t jessie-backports
RUN rm -f /etc/crontab
ENTRYPOINT ["/usr/sbin/cron", "-f", "-L", "8"]
#ENTRYPOINT ["/bin/bash"]
