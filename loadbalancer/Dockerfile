# haproxy

# VERSION   0.1

FROM www-base
MAINTAINER Artem Kobrin <kobrin.artem@gmail.com>

RUN apt-get update
RUN apt-get install -y nginx

ADD default /etc/nginx/sites-available/default
ADD /start-nginx.sh /start-nginx.sh
ADD /supervisord-nginx.conf /etc/supervisor/conf.d/supervisord-nginx.conf


ADD /run.sh /run.sh

RUN chmod 755 /*.sh


EXPOSE 80
CMD ["/run.sh"]
