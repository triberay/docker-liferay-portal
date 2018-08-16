FROM httpd:2.4-alpine

MAINTAINER Wouter Vernaillen <wouter@triberay.com>

ENV LIFERAY_CONTAINER_NAME liferay
ENV SERVER_NAME localhost

COPY ./resources/ /usr/local/apache2/

ENTRYPOINT [ "httpd-foreground"]
