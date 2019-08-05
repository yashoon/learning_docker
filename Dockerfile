FROM ubuntu

RUN apt-get update

RUN  echo exit 0 > /usr/sbin/policy-rc.d

RUN apt-get -y install apache2

COPY jason var/www/html/jason

ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]

