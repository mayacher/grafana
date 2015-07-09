FROM ubuntu:14.04
MAINTAINER mayacher
ENV DEBIAN_FRONTEND noninteractive
ENV NOTVISIBLE "in users profile" 
RUN locale-gen en_US.UTF-8
