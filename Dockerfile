FROM ubuntu:latest


RUN apt-get update && \
    apt-get install -y apache2 php libapache2-mod-php && \
    apt-get clean


WORKDIR /var/www/html


COPY index.php /var/www/html/index.php

EXPOSE 80


CMD ["apachectl", "-D", "FOREGROUND"]
