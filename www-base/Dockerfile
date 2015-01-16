# www-base

# VERSION   0.1

FROM ubuntu:precise
MAINTAINER Artem Kobrin <kobrin.artem@gmail.com>

#Install useful tools
RUN apt-get update
RUN apt-get install -y -q wget dialog vim net-tools inetutils-ping less sudo supervisor pwgen git unzip curl dnsutils

#Install Openssh
RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd
ADD id_rsa.pub /root/.ssh/authorized_keys
ADD id_rsa /root/.ssh/id_rsa
RUN chmod 600 /root/.ssh/id_rsa
ADD /supervisord-ssh.conf /etc/supervisor/conf.d/supervisord-ssh.conf

## Install package with add-apt-repository
RUN apt-get install -y python-software-properties

ADD /run.sh /run.sh
RUN chmod +x  /*.sh

EXPOSE 2222

CMD /run.sh
