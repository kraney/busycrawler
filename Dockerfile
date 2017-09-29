FROM phusion/baseimage:0.9.18

MAINTAINER kraney@ixiacom.com

LABEL Extremely simplistic web crawler that does nothing with the data, it just generates web traffic

RUN apt-get update \
    && apt-get -y install python-pip \
    && apt-get clean

RUN pip install creepy==0.1.5

COPY crawler.py /root/
RUN mkdir -p /etc/service/crawler
COPY run-crawler /etc/service/crawler/run

WORKDIR /root
CMD ["/sbin/my_init"]
