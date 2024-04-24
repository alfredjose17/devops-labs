FROM ubuntu:latest

MAINTAINER alfredvjose.mec@gmail.com

RUN apt-get update && \
    apt-get install -y apache2

VOLUME /var/log/apache2

EXPOSE 80

CMD ["apache2ctl", "-D", "FOREGROUND"]