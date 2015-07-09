FROM ubuntu:14.04
MAINTAINER mayacher
ENV DEBIAN_FRONTEND noninteractive
ENV NOTVISIBLE "in users profile" 
RUN locale-gen en_US.UTF-8

RUN apt-get update && apt-get upgrade -y && \
    rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

RUN apt-get update && apt-get install supervisor -y && \
    mkdir -p /var/log/supervisor && \
    rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

COPY conf/supervisord.conf /etc/supervisor/conf.d/supervisord.conf


EXPOSE 9001
CMD ["/usr/bin/supervisord"]
