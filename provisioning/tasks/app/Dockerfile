FROM ubuntu:14.04

RUN apt-get update &&  DEBIAN_FRONTEND=noninteractive apt-get -y install \
    apache2  php5-mysql php5 libapache2-mod-php5 php5-mcrypt curl lynx-cur


EXPOSE 80

ADD www /var/www/site

ADD apache-config.conf /etc/apache2/sites-enabled/000-default.conf
CMD /usr/sbin/apache2ctl -D FOREGROUND
