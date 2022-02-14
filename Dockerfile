#
# NOTE: THIS DOCKERFILE IS GENERATED VIA "apply-templates.sh"
#
# PLEASE DO NOT EDIT IT DIRECTLY.
#

FROM python:3.10.2-alpine3.15
MAINTAINER John <admin@vps.la>

ENV DJANGO_VERSION 4.0.2

VOLUME /tmp
ADD . /work

WORKDIR /work

RUN rm -rf simpleui
RUN set -xe && \
    apk add tzdata && \
    cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
    echo "Asia/Shanghai" > /etc/timezone && \
    apk del tzdata
#RUN /usr/local/bin/python -m pip install --upgrade pip


RUN pip3 install -r requirements.txt
# CMD /bin/sh
#RUN set -x && \
#	#wget --no-check-certificate https://github.com/django/django/archive/refs/tags/${DJANGO_VERSION}.tar.gz && \ 
#	#tar xzf ${DJANGO_VERSION}.tar.gz && \
#	#python -m pip install -e django-${DJANGO_VERSION}/ && \
#	mkdir /django && \
#	cd /django && \
#	django-admin startproject home && \
#	#rm -rf *.tar.gz
#
##RUN pip3 install django-simpleui -U
##https://github.com/django/django/releases/tag/4.0.2
##https://github.com/django/django/archive/refs/tags/4.0.2.zip
##https://github.com/django/django/archive/refs/tags/4.0.2.tar.gz
##git clone https://github.com/django/django.git
#EXPOSE 8080
#
ENTRYPOINT ["python","/django/manage.py","runserver" ,"0.0.0.0:8080"]


