FROM debian:buster
MAINTAINER yohan <783b8c87@scimetis.net>
ENV DEBIAN_FRONTEND noninteractive
ENV TZ Europe/Paris
RUN apt-get update && apt-get -y install docker.io python3 virtualenv
WORKDIR /root
RUN virtualenv -p python3 yacronenv
RUN yacronenv/bin/pip install yacron
ENTRYPOINT ["/root/yacronenv/bin/yacron", "-c", "/root/crontab.yaml"]
