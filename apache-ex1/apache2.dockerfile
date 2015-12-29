FROM ubuntu:14.04

RUN \
   apt-get update && \
   apt-get -y install apache2

ADD index.html /var/www/html/index.html
VOLUME ["/var/www/html"]
WORKDIR /var/www/html

EXPOSE 80 

ENTRYPOINT ["/usr/sbin/apache2ctl"]
CMD ["-D", "FOREGROUND"]
