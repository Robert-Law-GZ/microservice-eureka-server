FROM openjdk:8-jdk-alpine
VOLUME /tmp
LABEL  "Robert law"="shuangang@163.com"
ADD target/robert-eureka-service-0.0.3-SNAPSHOT.jar app.jar

ENV JAVA_OPTS=""

ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar  -Dspring.profiles.active=peer1
