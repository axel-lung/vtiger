FROM aksel67/vt-php-apache:latest
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli
RUN apt-get update && apt-get upgrade -y
RUN chown -R www-data:www-data /var/www/html/

FROM aksel67/db:latest
USER root
RUN echo -e "[mysqld]\nsql_mode = \"\"" >> /etc/mysql/my.cnf
USER mysql
