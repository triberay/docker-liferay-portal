
CATALINA_OPTS="$CATALINA_OPTS -server -Dfile.encoding=UTF8 -Xms4096m -Xmx4096m -XX:NewSize=200m -XX:MaxNewSize=200m -XX:+UseParNewGC -XX:+UseConcMarkSweepGC -XX:+CMSParallelRemarkEnabled -XX:SurvivorRatio=20 -XX:ParallelGCThreads=2 -Djava.net.preferIPv4Stack=true"

# Portal Developer Properties
CATALINA_OPTS="$CATALINA_OPTS -Dexternal-properties=portal-developer.properties"
# Docker specific properties
CATALINA_OPTS="$CATALINA_OPTS -Dexternal-properties=portal-docker.properties"