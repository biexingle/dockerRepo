FROM ubuntu

MAINTAINER tanc "gogotanc@163.com"

ADD ./start.sh /root/start.sh

RUN apt-get update

RUN apt-get install -y redis-server

RUN apt-get install -y openssh-server

CMD ["redis-server","/etc/redis/redis.conf"]

EXPOSE 6379

EXPOSE 22
