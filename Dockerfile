FROM openjdk:8-jdk-alpine
VOLUME /tmp
ADD target/robert-eureka-service-0.0.2-SNAPSHOT.jar app.jar
ENV JAVA_OPTS=""
EXPOSE 8761
ENTRYPOINT exec java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar /app.jar