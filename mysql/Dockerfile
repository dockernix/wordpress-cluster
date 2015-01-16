# haproxy

# VERSION   0.1

FROM www-base
MAINTAINER Artem Kobrin <kobrin.artem@gmail.com>

#Install useful tools
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update
# install mysql
RUN apt-get install -y mysql-server
ADD my.cnf /etc/mysql/conf.d/my.cnf 
ADD start-mysql.sh /start-mysql.sh
ADD /supervisord-mysql.conf /etc/supervisor/conf.d/supervisord-mysql.conf

ADD /run.sh /run.sh

RUN chmod 755 /*.sh

EXPOSE 3306
CMD /run.sh
