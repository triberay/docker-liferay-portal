# docker-liferay-portal
a set of docker images optimised for development within a Liferay workspace

## Dependencies

[triberay/liferay-portal](https://hub.docker.com/r/triberay/liferay-portal/) depends on the following extra images:
 * [httpd-4-liferay](https://hub.docker.com/r/triberay/httpd-4-liferay/)
 * [mariadb-4-liferay](https://hub.docker.com/r/triberay/mariadb-4-liferay/)
 * [elasticsearch-4-liferay](https://hub.docker.com/r/triberay/elasticsearch-4-liferay/)

## Build

run 'docker-compose up' in the root of the cloned repository

## Development features

 * debugging in your IDE on port 8000 (tested with IntelliJ)
 * access gogo shell via mapped port 11311 
 * connect to mariadb via mapped port 3307
 * hot deploy via deploy, osgi/modules and osgi/war volumes
 
## Access

credentials:
 * Liferay user email: test@liferay.com
 * Liferay user password: test
 
urls:
 * Liferay via httpd: http://localhost
 * Elasticsearch: http://localhost:9200
 * Mariadb: 127.0.0.1:3307
