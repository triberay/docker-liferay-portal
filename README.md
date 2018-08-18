# docker-liferay-portal
a set of docker images optimised for development within a Liferay workspace

## Dependencies

[triberay/liferay-portal](https://hub.docker.com/r/triberay/liferay-portal/) depends on the following extra images:
 * [httpd-4-liferay](https://hub.docker.com/r/triberay/httpd-4-liferay/)
 * [mariadb-4-liferay](https://hub.docker.com/r/triberay/mariadb-4-liferay/)
 * [elasticsearch-4-liferay](https://hub.docker.com/r/triberay/elasticsearch-4-liferay/)
 * [mockmock-4-liferay](https://hub.docker.com/r/triberay/mockmock-4-liferay/)

## Build

run 'docker-compose up' in the root of the cloned repository

## Development features

 * debugging in your IDE (tested with IntelliJ)
 * access gogo shell 
 * connect to mariadb
 * test email delivery with MockMock
 * hot deploy of bundles
 
## Access

credentials:
 * Liferay user email: test@liferay.com
 * Liferay user password: test
 
ports:
 * Liferay via httpd: http://localhost:80
 * Debugging: localhost:8000  (-agentlib:jdwp=transport=dt_socket,server=y,suspend=n,address=*:8000)
 * Elasticsearch: http://localhost:9200
 * MockMock: http://localhost:8282/
 * Mariadb: jdbc:mariadb://127.0.0.1:3307/lportal
