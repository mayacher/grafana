FROM ubuntu:14.04
MAINTAINER mayacher
ENV DEBIAN_FRONTEND noninteractive
ENV NOTVISIBLE "in users profile" 
RUN locale-gen en_US.UTF-8

RUN apt-get update && apt-get upgrade -y && \
    rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

RUN apt-get update && apt-get install supervisor wget -y && \
    mkdir -p /var/log/supervisor && \
    rm -rf /var/lib/apt/lists/* && rm -rf /tmp/*

RUN cd /root && wget https://grafanarel.s3.amazonaws.com/builds/grafana_2.0.2_amd64.deb && \
    apt-get update && apt-get install -y adduser libfontconfig && \
    dpkg -i /root/grafana_2.0.2_amd64.deb && \
    apt-get install postgresql -y && \
    rm -rf /var/lib/apt/lists/* && rm -rf /tmp/* 


COPY conf/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
COPY conf/grafana.ini /etc/grafana/grafana.ini


EXPOSE 9001 80 5432
CMD ["/usr/bin/supervisord"]
