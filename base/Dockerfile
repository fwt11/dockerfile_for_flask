FROM debian:jessie

MAINTAINER fwt 20150724
RUN apt-get update

#install supervisor
RUN apt-get install -y supervisor
RUN mkdir -p /var/log/supervisor

#install nginx
RUN apt-get install -y nginx

#install pip
RUN apt-get install -y python-pip

#python header files for c extension
RUN apt-get install -y python-dev

#gevent for gunicorn support
RUN apt-get install -y python-gevent

#install gunicorn

RUN pip install gunicorn
RUN mkdir /var/log/gunicorn

#install flask
ADD requirements.txt /src/requirements.txt
RUN cd /src; pip install -r requirements.txt
