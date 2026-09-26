FROM ubuntu:26.04

RUN apt update && \
    apt install apache2 -y && \
    rm -f /etc/ssl/private/ssl-cert-snakeoil.key && \
    rm -f /etc/ssl/certs/ssl-cert-snakeoil.pem

COPY . /var/www/html/

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
