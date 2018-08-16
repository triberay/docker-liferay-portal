FROM mariadb:latest

MAINTAINER Wouter Vernaillen <wouter@triberay.com>

ENV MYSQL_DATABASE lportal
ENV MYSQL_PASSWORD passw0rd
ENV MYSQL_ROOT_PASSWORD passw0rd
ENV MYSQL_USER liferay

COPY ./resources/ /

USER mysql

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["mysqld", "--character-set-server=utf8mb4", "--collation-server=utf8mb4_unicode_ci"]
