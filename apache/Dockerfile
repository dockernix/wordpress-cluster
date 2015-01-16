# haproxy

# VERSION   0.1

FROM www-base
MAINTAINER Artem Kobrin <kobrin.artem@gmail.com>

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get -y install apache2 libapache2-mod-php5 php5-mysql git supervisor pwgen

ADD /supervisord-apache.conf /etc/supervisor/conf.d/supervisord-apache.conf


ADD /run.sh /run.sh
RUN chmod 755 /*.sh

RUN rm /etc/apache2/sites-enabled/000-default
ADD wordpress /etc/apache2/sites-enabled/wordpress
RUN git clone https://github.com/WordPress/WordPress.git /var/www/wordpress/
RUN chown www-data:www-data /var/www/wordpress/

ADD ./wordpress_conf.sh /wordpress_conf.sh
RUN chmod 755 /wordpress_conf.sh

EXPOSE 80 2222
