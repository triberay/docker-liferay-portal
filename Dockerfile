FROM triberay/portal:7.1.0-ga1

MAINTAINER Wouter Vernaillen <wouter@triberay.com>

ENV LIFERAY_DEFAULT_PERIOD_ADMIN_PERIOD_PASSWORD test
ENV VIRTUAL_PORT 8080
ENV LOGGING_LEVEL DEBUG
ENV CATALINA_OPTS -Xdebug -Xrunjdwp:transport=dt_socket,address=8000,server=y,suspend=n -Dcom.sun.management.jmxremote -Dcom.sun.management.jmxremote.port=12345 -Dcom.sun.management.jmxremote.local.only=false -Dcom.sun.management.jmxremote.authenticate=false -Dcom.sun.management.jmxremote.ssl=false -Dcom.sun.management.jmxremote.rmi.port=12345 -Djava.rmi.server.hostname=$HOSTIP

ENV LIFERAY_HOME /opt/liferay
ENV CATALINA_HOME ${LIFERAY_HOME}/tomcat

USER liferay:liferay

RUN mkdir -p /tmp/themes && chown -R liferay:liferay /tmp/themes
COPY --chown=liferay:liferay ./resources/ ${LIFERAY_HOME}/
COPY --chown=liferay:liferay ./build-resources/portal-*.properties $CATALINA_HOME/webapps/ROOT/WEB-INF/classes/
RUN chown -R liferay:liferay ${LIFERAY_HOME}/osgi
