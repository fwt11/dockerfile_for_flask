FROM flask/base:latest

MAINTAINER fwt 20150724

#config supervisor
ADD supervisord.conf /etc/supervisor/supervisord.conf
ADD ddrive.conf /etc/supervisor/conf.d/ddrive.conf

#config nginx
ADD nginx.conf /etc/nginx/
ADD proxy.conf /etc/nginx/sites-available/default

VOLUME ["/webserver/"]
ENTRYPOINT supervisord

EXPOSE 80



