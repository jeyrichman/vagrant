FROM ubuntu:14.04

RUN apt-get update &&  DEBIAN_FRONTEND=noninteractive apt-get -y install \
    apache2  php5-mysql php5 libapache2-mod-php5 php5-mcrypt curl lynx-cur jq


EXPOSE 80

ADD apache-config.conf /etc/apache2/sites-enabled/000-default.conf
ADD www/index.php /var/www/site/index.php
ADD get-dbcred.sh /root/get-dbcred.sh
RUN chmod +x /root/get-dbcred.sh 

CMD /usr/sbin/apache2ctl -D FOREGROUND
