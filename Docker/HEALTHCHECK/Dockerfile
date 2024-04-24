FROM ubuntu:latest

RUN apt-get update && \
    apt-get install -y apache2 curl

EXPOSE 80

HEALTHCHECK CMD curl -f http://localhost/ || exit 1

CMD ["apache2ctl", "-D", "FOREGROUND"]