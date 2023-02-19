FROM openjdk:17-jdk-alpine

ARG JAR_FILE=target/*jar
COPY ${JAR_FILE} api.jar

ENTRYPOINT ["java","-Xms128M","-Xmx128M","-Dspring.profiles.active=prod","-jar","/api.jar"]