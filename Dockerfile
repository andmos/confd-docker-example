FROM ubuntu:16.04

ADD https://github.com/kelseyhightower/confd/releases/download/v0.14.0/confd-0.14.0-linux-amd64 /usr/local/bin/confd
RUN chmod +x /usr/local/bin/confd

ADD confd /etc/confd
ADD docker-entrypoint.sh docker-entrypoint.sh

RUN mkdir -p /opt/myService

ENTRYPOINT [ "./docker-entrypoint.sh" ]
CMD [ "cat","/opt/myService/service.config" ]
