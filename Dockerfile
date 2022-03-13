FROM vt-php-apache:v1.0
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN apt-get update && apt-get upgrade -y

FROM db:latest
USER root
RUN echo -e "[mysqld]\nsql_mode = \"\"" >> /etc/mysql/my.cnf
USER mysql